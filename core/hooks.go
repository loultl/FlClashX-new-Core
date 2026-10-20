package core

import (
	"sync"
	"time"

	"github.com/metacubex/mihomo/tunnel/statistic"
)

const requestSnapshotInterval = 100 * time.Millisecond

var requestSnapshots struct {
	sync.Mutex
	stop chan struct{}
}

func startRequestSnapshots() {
	requestSnapshots.Lock()
	defer requestSnapshots.Unlock()
	if requestSnapshots.stop != nil {
		return
	}
	stop := make(chan struct{})
	requestSnapshots.stop = stop
	safeGo("requestSnapshots", func() { runRequestSnapshots(stop) })
}

func stopRequestSnapshots() {
	requestSnapshots.Lock()
	defer requestSnapshots.Unlock()
	if requestSnapshots.stop != nil {
		close(requestSnapshots.stop)
		requestSnapshots.stop = nil
	}
}

func runRequestSnapshots(stop <-chan struct{}) {
	ticker := time.NewTicker(requestSnapshotInterval)
	defer ticker.Stop()
	seen := map[string]struct{}{}
	for {
		select {
		case <-stop:
			return
		case <-ticker.C:
			if !hasEventListener() {
				continue
			}
			seen = collectRequestSnapshots(seen, statistic.DefaultManager.Range, func(tracker statistic.Tracker) {
				notifyProbeRoute(tracker)
				sendMessage(RequestMessage, tracker)
				watchRequestTraffic(tracker)
			})
		}
	}
}

func collectRequestSnapshots(
	previous map[string]struct{},
	rangeTrackers func(func(statistic.Tracker) bool),
	announce func(statistic.Tracker),
) map[string]struct{} {
	current := make(map[string]struct{}, len(previous))
	rangeTrackers(func(tracker statistic.Tracker) bool {
		id := tracker.ID()
		current[id] = struct{}{}
		if _, exists := previous[id]; !exists {
			announce(tracker)
		}
		return true
	})
	return current
}

// Every dial through a looping dialer fails; one report stands for the burst.
const dialerLoopReportInterval = 3 * time.Second

var dialerLoopReports sync.Map

func reportDialerLoop(proxyName string) {
	now := time.Now()
	if last, ok := dialerLoopReports.Load(proxyName); ok && now.Sub(last.(time.Time)) < dialerLoopReportInterval {
		return
	}
	dialerLoopReports.Store(proxyName, now)
	sendMessage(DialerLoopMessage, proxyName)
}
