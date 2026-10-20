package core

import (
	"maps"
	"slices"
	"sync"
	"sync/atomic"

	"github.com/metacubex/mihomo/constant"
	cp "github.com/metacubex/mihomo/constant/provider"
	"github.com/metacubex/mihomo/tunnel"
	"go.yaml.in/yaml/v3"
)

var proxyOrder atomic.Pointer[[]string]

func rememberProxyOrder(buf []byte) {
	var raw struct {
		Groups []struct {
			Name string `yaml:"name"`
		} `yaml:"proxy-groups"`
	}
	if yaml.Unmarshal(buf, &raw) != nil {
		return
	}
	names := make([]string, 0, len(raw.Groups))
	for _, group := range raw.Groups {
		names = append(names, group.Name)
	}
	proxyOrder.Store(&names)
}

func proxyNameList() []string {
	ordered := proxyOrder.Load()
	current := allProxies()
	names := make([]string, 0, len(current))
	seen := make(map[string]struct{}, len(current))
	if ordered != nil {
		for _, name := range *ordered {
			if _, exists := current[name]; exists {
				names = append(names, name)
				seen[name] = struct{}{}
			}
		}
	}
	var added []string
	for name := range current {
		if _, exists := seen[name]; !exists {
			added = append(added, name)
		}
	}
	slices.Sort(added)
	names = append(names, added...)
	return names
}

type providerRevision struct {
	provider cp.ProxyProvider
	version  uint32
}

var proxyCache struct {
	sync.Mutex
	base      map[string]constant.Proxy
	revisions map[string]providerRevision
	all       map[string]constant.Proxy
}

// r4 exposes configured proxies separately from dynamically loaded providers.
func allProxies() map[string]constant.Proxy {
	proxyCache.Lock()
	defer proxyCache.Unlock()
	base := tunnel.Proxies()
	providers := providerSnapshot()
	revisions := make(map[string]providerRevision, len(providers))
	for name, provider := range providers {
		revisions[name] = providerRevision{provider, provider.Version()}
	}
	if proxyCache.all != nil && maps.Equal(base, proxyCache.base) && maps.Equal(revisions, proxyCache.revisions) {
		return proxyCache.all
	}
	all := maps.Clone(base)
	if all == nil {
		all = map[string]constant.Proxy{}
	}
	for _, provider := range providers {
		for _, proxy := range provider.Proxies() {
			all[proxy.Name()] = proxy
		}
	}
	proxyCache.base, proxyCache.revisions, proxyCache.all = maps.Clone(base), revisions, all
	return all
}

func invalidateAllProxies() {
	proxyCache.Lock()
	defer proxyCache.Unlock()
	proxyCache.base, proxyCache.revisions, proxyCache.all = nil, nil, nil
}

func handleGetCapabilities() []string {
	return []string{"smartWeights", "requestSnapshots"}
}
