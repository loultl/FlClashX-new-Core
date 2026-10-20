package core

import (
	"errors"

	"github.com/metacubex/mihomo/adapter/outboundgroup"
	"github.com/metacubex/mihomo/component/profile/cachefile"
)

type SmartWeight struct {
	Name   string  `json:"name"`
	Weight float64 `json:"weight"`
	Rank   string  `json:"rank"`
}

func handleGetSmartWeights(groupName string) ([]SmartWeight, error) {
	proxy := lookupProxy(groupName)
	if proxy == nil {
		return nil, errGroupNotFound
	}
	group, ok := proxy.Adapter().(*outboundgroup.Smart)
	if !ok {
		return nil, errGroupInvalidType
	}
	store := cachefile.GetSmartStore()
	if store == nil {
		return nil, errors.New("Smart cache not available")
	}
	ranking, err := store.GetNodeWeightRankingCache(group.Name(), group.GetConfigFilename())
	if err != nil {
		return nil, err
	}
	weights := make([]SmartWeight, 0, len(ranking.Result))
	for _, item := range ranking.Result {
		weights = append(weights, SmartWeight{Name: item.Name, Weight: item.Weight, Rank: item.Rank})
	}
	return weights, nil
}
