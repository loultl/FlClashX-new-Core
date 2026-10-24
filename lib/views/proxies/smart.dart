import 'dart:async';

import 'package:fl_clash/common/common.dart';
import 'package:fl_clash/models/models.dart';
import 'package:fl_clash/providers/providers.dart';
import 'package:fl_clash/ui/icons/icons.dart';
import 'package:fl_clash/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

void showSmartDetails(BuildContext context, String groupName) {
  showSheet(
    context: context,
    builder: (_) => SmartDetailsView(groupName: groupName),
  );
}

class SmartDetailsButton extends StatelessWidget {
  const SmartDetailsButton({super.key, required this.groupName, this.style});

  final String groupName;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Smart details',
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          textStyle: style ?? AppTextStyle.footnote.of(context),
        ),
        onPressed: () => showSmartDetails(context, groupName),
        child: Text('Smart'),
      ),
    );
  }
}

class SmartDetailsView extends ConsumerStatefulWidget {
  const SmartDetailsView({super.key, required this.groupName});

  final String groupName;

  @override
  ConsumerState<SmartDetailsView> createState() => _SmartDetailsViewState();
}

class _SmartDetailsViewState extends ConsumerState<SmartDetailsView>
    with RouteMotionHoldMixin<SmartDetailsView> {
  late final ScrollController _controller;
  late final Timer _refreshTimer;
  var _query = '';

  @override
  void initState() {
    super.initState();
    _controller = sheetScrollController(context);
    _refreshTimer = Timer.periodic(const Duration(seconds: 10), (_) {
      if (!ref.read(isStartProvider) ||
          ModalRoute.of(context)?.isCurrent == false) {
        return;
      }
      if (ref.read(smartWeightsProvider(widget.groupName)).isLoading) {
        return;
      }
      updateWhenRouteSettled(_refresh);
    });
  }

  @override
  void dispose() {
    _refreshTimer.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _refresh() => ref.invalidate(smartWeightsProvider(widget.groupName));

  @override
  Widget build(BuildContext context) {
    final running = ref.watch(isStartProvider);
    final weights = running
        ? ref.watch(smartWeightsProvider(widget.groupName))
        : null;
    return CommonScaffold(
      title: 'Smart details',
      primaryAction: IconButtonData(
        glyph: AppGlyphs.refresh,
        tooltip: 'Refresh',
        isLoading: weights?.isLoading ?? false,
        onPressed: running && weights?.isLoading != true ? _refresh : null,
      ),
      searchState: AppBarSearchState(
        onSearch: (value) => setState(() => _query = value),
      ),
      body: running
          ? Builder(
              builder: (context) => _buildRankings(
                context,
                weights!,
                bottomInset: BottomInsetScope.of(context),
              ),
            )
          : NullStatus(
              label: 'Core stopped',
              illustration: NullStatusIllustration.proxies,
            ),
    );
  }

  Widget _buildRankings(
    BuildContext context,
    AsyncValue<List<SmartWeight>> state, {
    required double bottomInset,
  }) {
    final weights = state.value;
    if (state.hasError && weights == null) {
      return NullStatus(
        label: 'Failed to load',
        illustration: NullStatusIllustration.error,
        action: FilledButton(onPressed: _refresh, child: Text('Retry')),
      );
    }
    final search = SearchQuery(_query);
    final rows = (weights ?? const <SmartWeight>[]).indexed
        .where((entry) => search.matches([entry.$2.name, entry.$2.rank]))
        .toList(growable: false);
    return NullStatusSwitcher(
      isLoading: weights == null && state.isLoading,
      loadingStatus: NullStatus(
        label: 'Loading',
        illustration: NullStatusIllustration.proxies,
      ),
      child: CommonScrollBar(
        controller: _controller,
        child: CustomScrollView(
          controller: _controller,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.fromLTRB(
                16,
                context.contentTopPadding,
                16,
                16,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _SmartGroupStatus(groupName: widget.groupName),
                    const SizedBox(height: 12),
                    Text(
                      'Nodes are ranked by usage; pinning overrides automatic selection.',
                      style: AppTextStyle.footnote.of(context).toLight,
                    ),
                    if (state.hasError) ...[
                      const SizedBox(height: 12),
                      Text(
                        'Failed to load',
                        style: AppTextStyle.footnote
                            .of(context)
                            .copyWith(color: context.colorScheme.error),
                      ),
                    ],
                    if (rows.isEmpty) ...[
                      const SizedBox(height: 32),
                      Text(
                        search.isNotEmpty
                            ? 'No matching nodes'
                            : 'No weights yet',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.headline.of(context),
                      ),
                      if (search.isEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Start the core to collect usage data.',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.footnote.of(context).toLight,
                        ),
                      ],
                    ],
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList.builder(
                itemCount: rows.length,
                itemBuilder: (_, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: _SmartWeightRow(
                    key: ValueKey(rows[index].$2.name),
                    groupName: widget.groupName,
                    weight: rows[index].$2,
                    position: rows[index].$1 + 1,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16 + bottomInset)),
          ],
        ),
      ),
    );
  }
}

class _SmartGroupStatus extends ConsumerWidget {
  const _SmartGroupStatus({required this.groupName});

  final String groupName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saved = ref.watch(proxyNameProvider(groupName)) ?? '';
    final pinned = saved.isNotEmpty;
    final selected = ref.watch(selectedProxyNameProvider(groupName)) ?? '';
    final node = selected == 'Smart - Select'
        ? 'Automatic'
        : selected.isEmpty
        ? 'Unavailable'
        : selected;
    return CommonCard(
      radius: AppCorner.xl,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 12,
              children: [
                GlyphIcon(
                  pinned ? AppGlyphs.pin : AppGlyphs.sparkle,
                  color: context.colorScheme.primary,
                ),
                Expanded(
                  child: EmojiText(
                    groupName,
                    style: AppTextStyle.headline.of(context),
                  ),
                ),
                Text(
                  pinned ? 'Pinned' : 'Automatic',
                  style: AppTextStyle.caption1.of(context, emphasized: true),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Current node',
              style: AppTextStyle.caption1.of(context).toLight,
            ),
            const SizedBox(height: 4),
            EmojiText(node, style: AppTextStyle.callout.of(context)),
            if (pinned) ...[
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: () => ref
                    .read(proxiesActionProvider.notifier)
                    .changeProxyDebounce(groupName, ''),
                icon: const GlyphIcon(AppGlyphs.sparkle, fill: 1),
                label: Text('Restore automatic'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _SmartWeightRow extends ConsumerWidget {
  const _SmartWeightRow({
    super.key,
    required this.groupName,
    required this.weight,
    required this.position,
  });

  final String groupName;
  final SmartWeight weight;
  final int position;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedProxyNameProvider(groupName)) ?? '';
    final saved = ref.watch(proxyNameProvider(groupName)) ?? '';
    final group = ref.watch(
      groupsProvider.select((groups) => groups.getGroup(groupName)),
    );
    final fixed = saved.isNotEmpty;
    final pinned = fixed && selected == weight.name;
    final inUse = selected == weight.name;
    final member =
        group?.all.any((proxy) => proxy.name == weight.name) ?? false;
    final usage = switch (weight.rank) {
      'MostUsed' => 'Most used',
      'OccasionalUsed' => 'Occasionally used',
      'RarelyUsed' => 'Rarely used',
      _ => 'Unknown usage',
    };
    return CommonCard(
      isSelected: inUse,
      radius: AppCorner.xl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          spacing: 12,
          children: [
            Text('$position', style: AppTextStyle.caption1.of(context).toLight),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 6,
                    children: [
                      Expanded(
                        child: EmojiText(
                          weight.name,
                          style: AppTextStyle.callout.of(context),
                        ),
                      ),
                      if (inUse) const SelectionBadge(),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 16,
                    runSpacing: 4,
                    children: [
                      Text(
                        '${'Score'}: ${weight.weight}',
                        style: AppTextStyle.caption1.of(context).toLight,
                      ),
                      Text(
                        '${'Usage'}: $usage',
                        style: AppTextStyle.caption1.of(context).toLight,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TonalButtonTheme(
              size: TonalButtonSize.compact,
              child: IconButton(
                isSelected: pinned,
                tooltip: pinned ? 'Restore automatic' : 'Pin node',
                onPressed: member
                    ? () => ref
                          .read(proxiesActionProvider.notifier)
                          .changeProxyDebounce(
                            groupName,
                            pinned ? '' : weight.name,
                          )
                    : null,
                icon: GlyphIcon(AppGlyphs.pin, fill: pinned ? 1 : 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
