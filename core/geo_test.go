package core

import (
	"context"
	"os"
	"strings"
	"testing"
	"time"

	"github.com/metacubex/mihomo/constant"
)

func TestGeoResourcePanicReleasesItsClaimWithoutChangingRoute(t *testing.T) {
	recordRoutes(t)
	const name = "TEST_PANIC"
	err := updateGeoResource(name, geoResource{update: func() error {
		panic("download failed")
	}})
	if err == nil || !strings.Contains(err.Error(), "download failed") {
		t.Fatalf("update error = %v, want the panic reported", err)
	}
	if epoch, _ := routeStamp(); epoch != 0 {
		t.Fatalf("route epoch = %d after a failed database update", epoch)
	}
	if !claimGeoUpdate(name) {
		t.Fatal("failed update retained its resource claim")
	}
	releaseGeoUpdate(name)
	settleMessageBatcher()
}

func TestNextGeoUpdateDelayUsesDatabaseModificationTime(t *testing.T) {
	previous := constant.Path.HomeDir()
	constant.SetHomeDir(t.TempDir())
	t.Cleanup(func() { constant.SetHomeDir(previous) })
	const interval = time.Hour
	if delay := nextGeoUpdateDelay(interval); delay != 0 {
		t.Fatalf("missing database delay = %v, want immediate update", delay)
	}
	path := constant.Path.GeoIP()
	if err := os.WriteFile(path, []byte("test"), 0o600); err != nil {
		t.Fatal(err)
	}
	for _, test := range []struct {
		name string
		age  time.Duration
		want time.Duration
	}{
		{name: "recent", age: 15 * time.Minute, want: 45 * time.Minute},
		{name: "overdue", age: 2 * time.Hour, want: 0},
	} {
		t.Run(test.name, func(t *testing.T) {
			modified := time.Now().Add(-test.age)
			if err := os.Chtimes(path, modified, modified); err != nil {
				t.Fatal(err)
			}
			delay := nextGeoUpdateDelay(interval)
			if difference := delay - test.want; difference < -time.Second || difference > time.Second {
				t.Errorf("delay = %v, want %v", delay, test.want)
			}
		})
	}
}

func TestStopScheduledGeoUpdaterCancelsAndCanBeRepeated(t *testing.T) {
	stopScheduledGeoUpdater()
	ctx, cancel := context.WithCancel(context.Background())
	scheduledGeoUpdater.Lock()
	scheduledGeoUpdater.cancel = cancel
	scheduledGeoUpdater.Unlock()
	t.Cleanup(stopScheduledGeoUpdater)
	stopScheduledGeoUpdater()
	if ctx.Err() != context.Canceled {
		t.Fatal("stopping the scheduler did not cancel its context")
	}
	stopScheduledGeoUpdater()
	scheduledGeoUpdater.Lock()
	defer scheduledGeoUpdater.Unlock()
	if scheduledGeoUpdater.cancel != nil {
		t.Fatal("stopped scheduler retained its cancellation handle")
	}
}
