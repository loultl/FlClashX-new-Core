package core

import (
	"encoding/json"
	"errors"
	"reflect"
	"slices"
	"testing"

	"github.com/metacubex/mihomo/adapter"
	"github.com/metacubex/mihomo/adapter/outboundgroup"
	"github.com/metacubex/mihomo/adapter/provider"
	"github.com/metacubex/mihomo/component/profile/cachefile"
	"github.com/metacubex/mihomo/component/smart"
	"github.com/metacubex/mihomo/constant"
	cp "github.com/metacubex/mihomo/constant/provider"
	"github.com/metacubex/mihomo/tunnel"
)

func smartGroupForTest(t *testing.T) (*outboundgroup.Smart, constant.Proxy) {
	t.Helper()
	home := constant.Path.HomeDir()
	constant.SetHomeDir(t.TempDir())
	t.Cleanup(func() { constant.SetHomeDir(home) })
	members := []constant.Proxy{namedProxy("node-a"), namedProxy("node-b")}
	pd, err := provider.NewCompatibleProvider(
		t.Name()+"-provider", members, provider.NewHealthCheck(members, "", 0, 0, true, nil),
	)
	if err != nil {
		t.Fatal(err)
	}
	group, err := outboundgroup.NewSmart(
		outboundgroup.GroupCommonOption{Name: t.Name(), URL: "https://example.invalid/check"},
		outboundgroup.SmartOption{SampleRate: 0.25, Tolerance: 25, PolicyPriority: "node-a:1.5"},
		namedProxy("COMPATIBLE"),
		[]cp.ProxyProvider{pd},
	)
	if err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() { _ = group.Close() })
	proxy := adapter.NewProxy(group)
	tunnel.UpdateProxies(map[string]constant.Proxy{group.Name(): proxy, "DIRECT": namedProxy("DIRECT")}, nil)
	invalidateAllProxies()
	t.Cleanup(func() {
		tunnel.UpdateProxies(nil, nil)
		invalidateAllProxies()
	})
	return group, proxy
}

func smartProxyView(t *testing.T, proxy constant.Proxy) map[string]any {
	t.Helper()
	encoded, err := json.Marshal(proxyView(proxy))
	if err != nil {
		t.Fatal(err)
	}
	var view map[string]any
	if err := json.Unmarshal(encoded, &view); err != nil {
		t.Fatal(err)
	}
	return view
}

func TestSmartProxyViewPreservesItsGroupData(t *testing.T) {
	group, proxy := smartGroupForTest(t)
	view := smartProxyView(t, proxy)
	if !isProxyGroupType(constant.Smart) {
		t.Fatal("Smart was reduced to an ordinary proxy")
	}
	names := proxyGroupNames([]string{group.Name()}, func(name string) (constant.AdapterType, bool) {
		return constant.Smart, name == group.Name()
	})
	if !reflect.DeepEqual(names, []string{group.Name()}) {
		t.Fatalf("Smart group was not listed: %v", names)
	}
	if view["type"] != "Smart" || view["name"] != group.Name() || view["now"] != "Smart - Select" || view["fixed"] != false {
		t.Fatalf("Smart identity or automatic state lost: %v", view)
	}
	if !reflect.DeepEqual(view["all"], []any{"node-a", "node-b"}) {
		t.Fatalf("Smart members lost: %v", view["all"])
	}
	if view["sampleRate"] != 0.25 || view["tolerance"] != float64(25) || view["policy-priority"] != "node-a:1.50" {
		t.Fatalf("Smart runtime options lost: %v", view)
	}
	for _, key := range []string{"useLightGBM", "collectData", "preferASN", "hidden"} {
		if view[key] != false {
			t.Errorf("%s = %v; want false", key, view[key])
		}
	}
}

func TestSmartCanBePinnedAndReturnedToAutomaticSelection(t *testing.T) {
	recordRoutes(t)
	group, proxy := smartGroupForTest(t)
	result := handleChangeProxy(&ChangeProxyParams{GroupName: group.Name(), ProxyName: "node-b"})
	if result.Message != "" || !result.Changed || group.Now() != "node-b" {
		t.Fatalf("pin failed: %+v, current %q", result, group.Now())
	}
	if view := smartProxyView(t, proxy); view["fixed"] != true || view["now"] != "node-b" {
		t.Fatalf("pin was not exposed to the interface: %v", view)
	}
	result = handleChangeProxy(&ChangeProxyParams{GroupName: group.Name(), ProxyName: "node-b"})
	if result.Message != "" || result.Changed {
		t.Fatalf("repeating a pin reported a change: %+v", result)
	}
	result = handleChangeProxy(&ChangeProxyParams{GroupName: group.Name(), ProxyName: "absent"})
	if result.Message == "" || group.Now() != "node-b" {
		t.Fatalf("invalid pin changed the current node: %+v, current %q", result, group.Now())
	}
	result = handleChangeProxy(&ChangeProxyParams{GroupName: group.Name(), ProxyName: ""})
	if result.Message != "" || !result.Changed || group.Now() != "Smart - Select" {
		t.Fatalf("restore automatic failed: %+v, current %q", result, group.Now())
	}
	if view := smartProxyView(t, proxy); view["fixed"] != false {
		t.Fatalf("automatic mode still exposed as pinned: %v", view)
	}
}

func TestSmartWeightsReturnAnEmptyArrayBeforeLearning(t *testing.T) {
	group, _ := smartGroupForTest(t)
	weights, err := handleGetSmartWeights(group.Name())
	if err != nil {
		t.Fatal(err)
	}
	encoded, err := json.Marshal(weights)
	if err != nil || string(encoded) != "[]" {
		t.Fatalf("empty rankings = %s, %v; want []", encoded, err)
	}
}

func TestSmartWeightsPreserveCoreScoresRanksAndWireKeys(t *testing.T) {
	group, _ := smartGroupForTest(t)
	cachefile.GetSmartStore().StoreNodeWeightRanking(group.Name(), group.GetConfigFilename(), smart.NodeRank{
		Result: []smart.NodeRankItem{
			{Name: "node-b", Rank: "MostUsed", Weight: 2.75},
			{Name: "node-a", Rank: "RarelyUsed", Weight: 0.125},
		},
	})
	weights, err := handleGetSmartWeights(group.Name())
	if err != nil {
		t.Fatal(err)
	}
	encoded, err := json.Marshal(weights)
	if err != nil {
		t.Fatal(err)
	}
	want := `[{"name":"node-b","weight":2.75,"rank":"MostUsed"},{"name":"node-a","weight":0.125,"rank":"RarelyUsed"}]`
	if string(encoded) != want {
		t.Fatalf("rankings = %s; want %s", encoded, want)
	}
}

func TestSmartWeightsRejectMissingAndOrdinaryProxies(t *testing.T) {
	smartGroupForTest(t)
	if _, err := handleGetSmartWeights("absent"); !errors.Is(err, errGroupNotFound) {
		t.Fatalf("missing group error = %v", err)
	}
	if _, err := handleGetSmartWeights("DIRECT"); !errors.Is(err, errGroupInvalidType) {
		t.Fatalf("ordinary proxy error = %v", err)
	}
}

func TestSmartWeightsMethodUsesTheSharedResponseEnvelope(t *testing.T) {
	group, _ := smartGroupForTest(t)
	arguments, err := json.Marshal(group.Name())
	if err != nil {
		t.Fatal(err)
	}
	var response struct {
		ID     string          `json:"id"`
		Result json.RawMessage `json:"result"`
		Error  *MethodError    `json:"error"`
	}
	frame := handleMethodCall(&MethodCall{ID: "smart-ranking", Method: getSmartWeightsMethod, Arguments: arguments})
	if err := json.Unmarshal(frame, &response); err != nil {
		t.Fatal(err)
	}
	if response.ID != "smart-ranking" || response.Error != nil || string(response.Result) != "[]" {
		t.Fatalf("unexpected Smart response: %s", frame)
	}
	frame = handleMethodCall(&MethodCall{ID: "invalid-smart-ranking", Method: getSmartWeightsMethod, Arguments: json.RawMessage(`{}`)})
	if err := json.Unmarshal(frame, &response); err != nil {
		t.Fatal(err)
	}
	if response.Error == nil || response.Error.Code != "invalid_arguments" {
		t.Fatalf("invalid Smart arguments did not return a structured error: %s", frame)
	}
}

func TestSmartCapabilitiesDescribeOnlySupportedEngineFeatures(t *testing.T) {
	capabilities := handleGetCapabilities()
	for _, supported := range []string{"smartWeights", "requestSnapshots"} {
		if !slices.Contains(capabilities, supported) {
			t.Errorf("supported feature %q is absent", supported)
		}
	}
	for _, unsupported := range []string{"dnsQueries", "onlyProxyTraffic", "skipCertificateVerify"} {
		if slices.Contains(capabilities, unsupported) {
			t.Errorf("unsupported feature %q was advertised", unsupported)
		}
	}
}
