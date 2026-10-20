package core

import (
	"testing"

	"github.com/metacubex/mihomo/config"
	"github.com/metacubex/mihomo/constant"
	LC "github.com/metacubex/mihomo/listener/config"
)

func TestStoppedEngineConfigDefersEveryInboundAndDnsWithoutChangingTheProfile(t *testing.T) {
	cfg := &config.Config{
		General:   &config.General{Inbound: config.Inbound{MixedPort: 1080}},
		DNS:       &config.DNS{Enable: true, Listen: "127.0.0.1:15353"},
		Listeners: map[string]constant.InboundListener{"custom": nil},
		Tunnels:   []LC.Tunnel{{}},
	}
	pending := configForListenerState(cfg, false)
	if pending == cfg || pending.General == cfg.General || pending.DNS == cfg.DNS {
		t.Fatal("the stopped-state view aliases the profile's mutable listener settings")
	}
	if pending.General.MixedPort != 0 || pending.DNS.Listen != "" || len(pending.Listeners) != 0 || len(pending.Tunnels) != 0 {
		t.Fatalf("stopped config still binds listeners: %+v, DNS %+v", pending.General, pending.DNS)
	}
	if !pending.DNS.Enable {
		t.Fatal("stopping the listening DNS server disabled the internal resolver")
	}
	if cfg.General.MixedPort != 1080 || cfg.DNS.Listen != "127.0.0.1:15353" || len(cfg.Listeners) != 1 || len(cfg.Tunnels) != 1 {
		t.Fatal("stopped-state adaptation changed the stored profile")
	}
	if running := configForListenerState(cfg, true); running != cfg {
		t.Fatal("the running state did not restore the original listener settings")
	}
}
