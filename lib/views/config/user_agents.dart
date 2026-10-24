import 'package:fl_clash/common/common.dart';
import 'package:fl_clash/providers/providers.dart';
import 'package:fl_clash/state.dart';
import 'package:fl_clash/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

class UserAgentsView extends ConsumerWidget {
  const UserAgentsView({super.key});

  void _select(WidgetRef ref, String? userAgent) {
    ref
        .read(patchClashConfigProvider.notifier)
        .update((state) => state.copyWith(globalUa: userAgent));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appLocalizations = context.appLocalizations;
    final selected = ref.watch(
      patchClashConfigProvider.select(
        (state) => state.globalUa == prizrakUserAgentMarker,
      ),
    );
    return CommonScaffold(
      title: 'User agent',
      body: ListView(
        padding: const EdgeInsets.all(16)
            .copyWith(top: context.contentTopPadding),
        children: [
          _UserAgentItem(
            label: appLocalizations.defaultText,
            isSelected: !selected,
            onSelected: () => _select(ref, null),
          ),
          const SizedBox(height: 8),
          _UserAgentItem(
            label: globalState.prizrakUa,
            isSelected: selected,
            onSelected: () => _select(ref, prizrakUserAgentMarker),
          ),
        ],
      ),
    );
  }
}

class _UserAgentItem extends StatelessWidget {
  const _UserAgentItem({
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return DecorationListItem(
      isSelected: isSelected,
      horizontalTitleGap: 8,
      contentPadding: const EdgeInsets.symmetric(horizontal: 14),
      leading: SizedBox.square(
        dimension: 24,
        child: isSelected ? const Center(child: SelectionCheck()) : null,
      ),
      title: Text(label, maxLines: 3, overflow: TextOverflow.ellipsis),
      onPressed: onSelected,
    );
  }
}
