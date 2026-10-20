package core

import (
	"context"
	"fmt"
	"os"
	"strings"
	"sync"
	"time"

	"github.com/metacubex/mihomo/component/geodata"
	"github.com/metacubex/mihomo/component/updater"
	"github.com/metacubex/mihomo/constant"
	"github.com/metacubex/mihomo/log"
)

type geoResource struct {
	update func() error
	url    func() string
	setUrl func(string)
}

var geoResources = map[string]geoResource{
	"MMDB":    {update: updater.UpdateMMDB, url: geodata.MmdbUrl, setUrl: geodata.SetMmdbUrl},
	"ASN":     {update: updater.UpdateASN, url: geodata.ASNUrl, setUrl: geodata.SetASNUrl},
	"GEOIP":   {update: updater.UpdateGeoIp, url: geodata.GeoIpUrl, setUrl: geodata.SetGeoIpUrl},
	"GEOSITE": {update: updater.UpdateGeoSite, url: geodata.GeoSiteUrl, setUrl: geodata.SetGeoSiteUrl},
}

// mihomo's updaters read these links without a lock, so an unchanged one is never rewritten.
func setGeoResourceUrl(geoType string, link string) {
	resource, exist := geoResources[strings.ToUpper(geoType)]
	if !exist {
		log.Warnln("geox-url: unknown geo resource %q", geoType)
		return
	}
	if link != "" && link != resource.url() {
		resource.setUrl(link)
	}
}

func claimGeoUpdate(geoType string) bool {
	return claimUpdate(geoUpdateScope + geoType)
}

func releaseGeoUpdate(geoType string) {
	releaseUpdate(geoUpdateScope + geoType)
}

func handleUpdateGeoData(geoType string) error {
	resource, exist := geoResources[geoType]
	if !exist {
		logError("updateGeoData: unknown geo resource %q", geoType)
		return fmt.Errorf("unknown geo resource: %s", geoType)
	}
	if !claimGeoUpdate(geoType) {
		return fmt.Errorf("geo update already in progress: %s", geoType)
	}
	safeGo("updateGeoData("+geoType+")", func() {
		defer releaseGeoUpdate(geoType)
		if err := updateGeoResource(geoType, resource); err != nil {
			logError("updateGeoData(%s) error: %v", geoType, err)
		}
	})
	return nil
}

func updateGeoResource(geoType string, resource geoResource) (err error) {
	onGeoUpdate(geoType, true, false, nil)
	defer func() {
		if failure := recover(); failure != nil {
			err = fmt.Errorf("geo update panic: %v", failure)
		}
		onGeoUpdate(geoType, false, false, err)
	}()
	return resource.update()
}

func onGeoUpdate(geoType string, updating bool, skipped bool, updateErr error) {
	if updating {
		claimUpdateAs(geoUpdateScope+geoType, true)
	} else {
		releaseHookUpdate(geoUpdateScope + geoType)
		scheduleReclaimOwnership()
		if !skipped && updateErr == nil {
			bumpRouteEpoch()
		}
	}
	status := GeoUpdateStatus{Type: geoType, Updating: updating, Skipped: skipped}
	if updateErr != nil {
		status.Error = updateErr.Error()
	}
	sendMessage(GeoUpdateMessage, status)
}

var (
	registerGeoUpdater = startScheduledGeoUpdater
	stopGeoUpdater     = stopScheduledGeoUpdater
)

var scheduledGeoUpdater struct {
	sync.Mutex
	cancel context.CancelFunc
}

func stopScheduledGeoUpdater() {
	scheduledGeoUpdater.Lock()
	defer scheduledGeoUpdater.Unlock()
	if scheduledGeoUpdater.cancel != nil {
		scheduledGeoUpdater.cancel()
		scheduledGeoUpdater.cancel = nil
	}
}

func startScheduledGeoUpdater() {
	scheduledGeoUpdater.Lock()
	defer scheduledGeoUpdater.Unlock()
	if scheduledGeoUpdater.cancel != nil {
		scheduledGeoUpdater.cancel()
		scheduledGeoUpdater.cancel = nil
	}
	interval := time.Duration(updater.GeoUpdateInterval()) * time.Hour
	if interval <= 0 {
		log.Errorln("[GEO] Invalid update interval: %d", updater.GeoUpdateInterval())
		return
	}
	ctx, cancel := context.WithCancel(context.Background())
	scheduledGeoUpdater.cancel = cancel
	safeGo("geoUpdater", func() {
		delay := nextGeoUpdateDelay(interval)
		timer := time.NewTimer(delay)
		defer timer.Stop()
		for {
			select {
			case <-ctx.Done():
				return
			case <-timer.C:
				updateScheduledGeoResources(ctx)
				timer.Reset(interval)
			}
		}
	})
}

func nextGeoUpdateDelay(interval time.Duration) time.Duration {
	for _, path := range []string{
		constant.Path.GeoIP(), constant.Path.MMDB(),
		constant.Path.ASN(), constant.Path.GeoSite(),
	} {
		if info, err := os.Stat(path); err == nil {
			return max(time.Until(info.ModTime().Add(interval)), 0)
		}
	}
	return 0
}

func updateScheduledGeoResources(ctx context.Context) {
	names := make([]string, 0, 3)
	if geodata.GeoIpEnable() {
		if geodata.GeodataMode() {
			names = append(names, "GEOIP")
		} else {
			names = append(names, "MMDB")
		}
	}
	if geodata.ASNEnable() {
		names = append(names, "ASN")
	}
	if geodata.GeoSiteEnable() {
		names = append(names, "GEOSITE")
	}
	for _, name := range names {
		if ctx.Err() != nil {
			return
		}
		if !claimGeoUpdate(name) {
			continue
		}
		resource := geoResources[name]
		err := updateGeoResource(name, resource)
		releaseGeoUpdate(name)
		if err != nil {
			logError("[GEO] update %s: %v", name, err)
		}
	}
}

func syncGeoUpdater(autoUpdate *bool, interval *int) {
	changed := false
	if autoUpdate != nil && *autoUpdate != updater.GeoAutoUpdate() {
		updater.SetGeoAutoUpdate(*autoUpdate)
		changed = true
	}
	if interval != nil && *interval != updater.GeoUpdateInterval() {
		updater.SetGeoUpdateInterval(*interval)
		changed = true
	}
	if changed {
		reconcileGeoUpdater()
	}
}

func reconcileGeoUpdater() {
	if updater.GeoAutoUpdate() {
		registerGeoUpdater()
		return
	}
	stopGeoUpdater()
}
