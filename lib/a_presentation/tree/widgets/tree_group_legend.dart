import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/tree/widgets/tree_group_palette.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/c_domain/tree/tree_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Bottom-center legend: only groups that have at least one node, in settings order.
class TreeGroupLegend extends StatelessWidget {
  const TreeGroupLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, treeState) {
        final settings = treeState.settings;
        if (settings == null || settings.groups.isEmpty) {
          return const SizedBox.shrink();
        }

        final validIds =
            settings.groups.map((g) => g.id.getOrCrash()).toSet();

        final counts = <String, int>{};
        for (final node in treeState.store.nodesById.values) {
          final gid = node.groupId?.getOrCrash();
          if (gid != null &&
              validIds.contains(gid) &&
              settings.groups.any((g) => g.id.getOrCrash() == gid)) {
            counts[gid] = (counts[gid] ?? 0) + 1;
          }
        }

        final ordered = <TreeGroup>[];
        for (final g in settings.groups) {
          final k = g.id.getOrCrash();
          if ((counts[k] ?? 0) > 0) ordered.add(g);
        }

        if (ordered.isEmpty) return const SizedBox.shrink();

        return Material(
          color: Colors.transparent,
          child: Container(
            constraints: const BoxConstraints(maxWidth: 720),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: kWhitesColor[100]!.withOpacity(0.92),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(72, 76, 82, 0.12),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Wrap(
              spacing: 12,
              runSpacing: 6,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: ordered
                  .map(
                    (g) => _LegendItem(
                      color: treeGroupColorFromKey(g.colorKey),
                      label: g.name,
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}

class _LegendItem extends StatelessWidget {
  const _LegendItem({
    required this.color,
    required this.label,
  });

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            color: color.withOpacity(0.35),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: color, width: 1.5),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: kCaption1Style.copyWith(color: kBlacksColor[200]),
        ),
      ],
    );
  }
}
