import 'package:flclashx/common/common.dart';
import 'package:flclashx/models/models.dart';
import 'package:flclashx/providers/state.dart';
import 'package:flclashx/state.dart';
import 'package:flclashx/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Usage breakdown for a Smart group.
///
/// The core keeps a per-node ranking for smart groups (rank + weight, where
/// weight is a 0..1 share of usage) in the profile's bbolt store and exposes it
/// over `GET /group/{name}/weights`. That endpoint is the only way out of the
/// store, and it needs the external-controller, which is off by default.
///
/// Deliberately no core bridge action for this: mirroring the endpoint in Go
/// would make the app own a blocking cache read for the sake of a button press,
/// while the REST call needs no core change at all.
///
/// The ranking only exists once the group has actually routed traffic, so an
/// empty list is the normal state on a fresh profile - that is shown as a hint
/// rather than an error.
///
/// Stateful so the request is made once per sheet rather than on every rebuild.
/// Opens the [SmartWeightsView] sheet for [groupName].
///
/// Lives here so the sheet plumbing stays in one place and the proxy card only
/// has to call one function.
void showSmartWeights(
  BuildContext context,
  String groupName, {
  String? testUrl,
}) {
  showSheet(
    context: context,
    props: const SheetProps(isScrollControlled: true),
    builder: (_, type) => AdaptiveSheetScaffold(
      type: type,
      title: groupName,
      body: SmartWeightsView(groupName: groupName, testUrl: testUrl),
    ),
  );
}

class SmartWeightsView extends ConsumerStatefulWidget {
  const SmartWeightsView({
    super.key,
    required this.groupName,
    this.testUrl,
  });

  final String groupName;
  final String? testUrl;

  @override
  ConsumerState<SmartWeightsView> createState() => _SmartWeightsViewState();
}

class _SmartWeightsViewState extends ConsumerState<SmartWeightsView> {
  late Future<SmartWeightsResult?> _result =
      request.getSmartWeights(widget.groupName);

  void _reload() => setState(() {
        _result = request.getSmartWeights(widget.groupName);
      });

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return ColoredBox(
      color: colorScheme.surfaceContainerLow,
      child: FutureBuilder<SmartWeightsResult?>(
        future: _result,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final result = snapshot.data;
          if (result == null) {
            // The external-controller is off, which is the default. Offer to turn
            // it on rather than showing a dead end - same trade the in-app
            // Zashboard makes when it enables the controller for a session.
            return _EmptyState(
              message: appLocalizations.smartWeightsNeedController,
              action: TextButton(
                onPressed: () async {
                  await globalState.appController
                      .setExternalControllerEnabled(true);
                  // The core needs a moment to bind the port, and the ranking is
                  // empty on the first read anyway.
                  await Future.delayed(const Duration(seconds: 1));
                  if (context.mounted) {
                    _reload();
                  }
                },
                child: const Text('Enable'),
              ),
            );
          }
          if (result.weights.isEmpty) {
            // Whatever the core said about why, in its own words.
            return _EmptyState(
              message: result.error ?? appLocalizations.smartWeightsEmpty,
            );
          }
          final sorted = [...result.weights]
            ..sort((a, b) => b.weight.compareTo(a.weight));
          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            itemCount: sorted.length,
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            itemBuilder: (context, index) => _WeightRow(
              weight: sorted[index],
              testUrl: widget.testUrl,
            ),
          );
        },
      ),
    );
  }
}

class _WeightRow extends ConsumerWidget {
  const _WeightRow({
    required this.weight,
    required this.testUrl,
  });

  final SmartWeight weight;
  final String? testUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = context.colorScheme;
    // The core builds this value as `round(score/maxScore*100*100)/100`, i.e.
    // already a 0..100 score where the best node lands on exactly 100. It is
    // NOT a share of anything, so it is shown as a bare number: multiplying by
    // 100 again produced things like "10000%", and every progress bar clamped to
    // full width because 100 > 1.
    final score = weight.weight;
    final label = switch (weight.rank) {
      'MostUsed' => appLocalizations.smartMostUsed,
      'OccasionalUsed' => appLocalizations.smartOccasionallyUsed,
      'RarelyUsed' => appLocalizations.smartRarelyUsed,
      _ => null,
    };
    final color = weight.isMostUsed
        ? colorScheme.primary
        : weight.isOccasionalUsed
            ? colorScheme.tertiary
            : colorScheme.outline;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: EmojiText(
                  weight.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyMedium,
                ),
              ),
              const SizedBox(width: 8),
              // The proxy's own ping, straight from the same delay map the
              // proxy cards use.
              Consumer(
                builder: (_, ref, __) {
                  final delay = ref.watch(
                    getDelayProvider(
                      proxyName: weight.name,
                      testUrl: testUrl,
                    ),
                  );
                  if (delay == null || delay <= 0) {
                    return Text(
                      '--',
                      style: context.textTheme.labelMedium?.copyWith(
                        color: colorScheme.outline,
                      ),
                    );
                  }
                  return Text(
                    '$delay ms',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: _delayColor(context, delay),
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
              const SizedBox(width: 10),
              Text(
                // Trim a trailing ".0" so the best node reads "100" rather
                // than "100.0", and one decimal is enough below that.
                score.roundToDouble() == score
                    ? score.round().toString()
                    : score.toStringAsFixed(1),
                style: context.textTheme.labelLarge?.copyWith(
                  color: color,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    // 0..100 score, so scale to the 0..1 a progress bar wants. The
                    // clamp is what keeps a rounding artefact from asserting.
                    value: (score / 100).clamp(0.0, 1.0),
                    minHeight: 5,
                    backgroundColor: colorScheme.surfaceContainerHighest,
                    valueColor: AlwaysStoppedAnimation(color),
                  ),
                ),
              ),
            ],
          ),
          if (label != null) ...[
            const SizedBox(height: 6),
            Text(
              label,
              style: context.textTheme.labelSmall?.copyWith(color: color),
            ),
          ],
        ],
      ),
    );
  }

  /// Same thresholds the proxy cards use, so colours agree across the UI.
  Color _delayColor(BuildContext context, int delay) {
    final colorScheme = context.colorScheme;
    if (delay < 200) return const Color(0xFF4CAF50);
    if (delay < 500) return const Color(0xFFFF9800);
    return colorScheme.error;
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({this.message, this.action});

  final String? message;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.psychology_outlined,
              size: 42,
              color: context.colorScheme.outline,
            ),
            const SizedBox(height: 12),
            Text(
              message ?? appLocalizations.smartWeightsEmpty,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium,
            ),
            // The "no data" hint below only makes sense when the controller
            // answered; when it is off, the reason is already in [message].
            if (action == null) ...[
              const SizedBox(height: 6),
              Text(
                appLocalizations.smartWeightsEmpty,
                textAlign: TextAlign.center,
                style: context.textTheme.bodySmall?.toLight,
              ),
            ],
            if (action != null) ...[
              const SizedBox(height: 10),
              action!,
            ],
          ],
        ),
      ),
    );
  }
}
