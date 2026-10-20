package core

import (
	"runtime"
	"runtime/debug"
	"sync"
	"sync/atomic"
	"time"

	"github.com/metacubex/mihomo/adapter/inbound"
	"github.com/metacubex/mihomo/component/resolver"
	"github.com/metacubex/mihomo/config"
	"github.com/metacubex/mihomo/constant"
	"github.com/metacubex/mihomo/dns"
	"github.com/metacubex/mihomo/hub/executor"
	"github.com/metacubex/mihomo/listener"
	LC "github.com/metacubex/mihomo/listener/config"
	"github.com/metacubex/mihomo/tunnel"
	"github.com/metacubex/mihomo/tunnel/statistic"
)

var (
	isInit     atomic.Bool
	isRunning  atomic.Bool
	sdkVersion atomic.Int32
)

func handleInitClash(params *InitParams) bool {
	configMu.Lock()
	defer configMu.Unlock()
	sdkVersion.Store(int32(params.Version))
	constant.SetHomeDir(params.HomeDir)
	initOwnership(params.HomeDir)
	clearSpilledResponses()
	isInit.Store(true)
	return true
}

func handleGetIsInit() bool {
	return isInit.Load()
}

func handleStartListener() bool {
	configMu.Lock()
	defer configMu.Unlock()
	isRunning.Store(true)
	startRequestSnapshots()
	updateListeners(currentConfig)
	resolver.ResetConnection()
	refreshRoute()
	return true
}

func handleStopListener() bool {
	configMu.Lock()
	defer configMu.Unlock()
	isRunning.Store(false)
	stopRequestSnapshots()
	stopListeners()
	resolver.ResetConnection()
	return true
}

func updateListeners(cfg *config.Config) {
	if cfg == nil || !isRunning.Load() {
		return
	}
	general := cfg.General
	listener.PatchInboundListeners(cfg.Listeners, tunnel.Tunnel, true)
	listener.PatchTunnel(cfg.Tunnels, tunnel.Tunnel)

	listener.SetAllowLan(general.AllowLan)
	inbound.SetSkipAuthPrefixes(general.SkipAuthPrefixes)
	inbound.SetAllowedIPs(general.LanAllowedIPs)
	inbound.SetDisAllowedIPs(general.LanDisAllowedIPs)

	listener.SetBindAddress(general.BindAddress)
	listener.ReCreateHTTP(general.Port, tunnel.Tunnel)
	listener.ReCreateSocks(general.SocksPort, tunnel.Tunnel)
	listener.ReCreateRedir(general.RedirPort, tunnel.Tunnel)
	listener.ReCreateTProxy(general.TProxyPort, tunnel.Tunnel)
	listener.ReCreateMixed(general.MixedPort, tunnel.Tunnel)
	listener.ReCreateShadowSocks(general.ShadowSocksConfig, tunnel.Tunnel)
	listener.ReCreateVmess(general.VmessConfig, tunnel.Tunnel)
	listener.ReCreateTuic(general.TuicServer, tunnel.Tunnel)
	if cfg.DNS != nil && cfg.DNS.Enable {
		listenConfig := inbound.NewListenConfig()
		listenConfig.SetRouteMark(cfg.DNS.ListenRoutingMark)
		dns.ReCreateServer(cfg.DNS.Listen, listenConfig, resolver.DefaultService)
	}
	if runtime.GOOS != "android" {
		listener.ReCreateTun(general.Tun, tunnel.Tunnel)
	}
}

func stopListeners() {
	dns.ReCreateServer("", nil, nil)
	listener.PatchInboundListeners(nil, tunnel.Tunnel, true)
	listener.PatchTunnel(nil, tunnel.Tunnel)
	listener.ReCreateHTTP(0, tunnel.Tunnel)
	listener.ReCreateSocks(0, tunnel.Tunnel)
	listener.ReCreateRedir(0, tunnel.Tunnel)
	listener.ReCreateTProxy(0, tunnel.Tunnel)
	listener.ReCreateMixed(0, tunnel.Tunnel)
	listener.ReCreateShadowSocks("", tunnel.Tunnel)
	listener.ReCreateVmess("", tunnel.Tunnel)
	listener.ReCreateTuic(LC.TuicServer{}, tunnel.Tunnel)
	if runtime.GOOS != "android" {
		listener.ReCreateTun(LC.Tun{}, tunnel.Tunnel)
	}
}

func handleShutdown() bool {
	handleStopLog()
	stopRouteWatch()

	configMu.Lock()
	isRunning.Store(false)
	stopRequestSnapshots()
	stopListeners()
	stopGeoUpdater()
	executor.Shutdown()
	currentConfig = nil
	isInit.Store(false)
	configMu.Unlock()

	handleForceGC()
	return true
}

func handleForceGC() {
	invalidateAllProxies()
	debug.FreeOSMemory()
}

// mihomo loads providers without waiting for them, so its own GC misses their decode buffers.
var (
	loadReleaseDelay  = 2 * time.Second
	releaseLoadMemory = debug.FreeOSMemory

	loadReleaseMu    sync.Mutex
	loadReleaseTimer *time.Timer
)

func scheduleLoadMemoryRelease() {
	loadReleaseMu.Lock()
	defer loadReleaseMu.Unlock()
	if loadReleaseTimer == nil {
		loadReleaseTimer = time.AfterFunc(loadReleaseDelay, func() { releaseLoadMemory() })
		return
	}
	loadReleaseTimer.Reset(loadReleaseDelay)
}

// HeapIdle still counts spans the runtime has already handed back to the OS,
// so the retained-but-unused figure subtracts HeapReleased.
func handleGetMemoryStats() MemoryStats {
	var stats runtime.MemStats
	runtime.ReadMemStats(&stats)
	return MemoryStats{
		Rss:          statistic.DefaultManager.Memory(),
		HeapInuse:    stats.HeapInuse,
		HeapIdle:     stats.HeapIdle - stats.HeapReleased,
		StackInuse:   stats.StackInuse,
		RuntimeOther: stats.MSpanInuse + stats.MCacheInuse + stats.BuckHashSys + stats.GCSys + stats.OtherSys,
	}
}
