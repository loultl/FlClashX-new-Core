package core

import (
	"testing"

	"github.com/metacubex/mihomo/tunnel/statistic"
)

func TestRequestSnapshotsAnnounceNewTrackersAndDropClosedIDs(t *testing.T) {
	first := newPipeTracker(t)
	second := newPipeTracker(t)
	trackers := []statistic.Tracker{first}
	rangeTrackers := func(visit func(statistic.Tracker) bool) {
		for _, tracker := range trackers {
			if !visit(tracker) {
				return
			}
		}
	}
	var announced []string
	announce := func(tracker statistic.Tracker) { announced = append(announced, tracker.ID()) }
	seen := collectRequestSnapshots(nil, rangeTrackers, announce)
	seen = collectRequestSnapshots(seen, rangeTrackers, announce)
	if len(announced) != 1 || announced[0] != first.ID() {
		t.Fatalf("unchanged tracker was announced again: %v", announced)
	}
	trackers = []statistic.Tracker{second}
	seen = collectRequestSnapshots(seen, rangeTrackers, announce)
	if len(announced) != 2 || announced[1] != second.ID() {
		t.Fatalf("new tracker was not announced: %v", announced)
	}
	if len(seen) != 1 {
		t.Fatalf("closed tracker retained: %v", seen)
	}
	trackers = nil
	seen = collectRequestSnapshots(seen, rangeTrackers, announce)
	if len(seen) != 0 {
		t.Fatalf("empty snapshot retained trackers: %v", seen)
	}
}

func TestRequestSnapshotObserverStartsAndStopsIdempotently(t *testing.T) {
	startRequestSnapshots()
	requestSnapshots.Lock()
	first := requestSnapshots.stop
	requestSnapshots.Unlock()
	startRequestSnapshots()
	requestSnapshots.Lock()
	second := requestSnapshots.stop
	requestSnapshots.Unlock()
	if first != second {
		t.Fatal("second start created a second observer")
	}
	stopRequestSnapshots()
	stopRequestSnapshots()
	select {
	case <-first:
	default:
		t.Fatal("stop did not cancel the observer")
	}
}
