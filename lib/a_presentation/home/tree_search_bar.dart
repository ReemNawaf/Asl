import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_lineage.dart';
import 'package:asl/c_domain/search_tree/person_search_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class TreeSearchBar extends StatefulWidget {
  const TreeSearchBar({
    super.key,
  });

  @override
  State<TreeSearchBar> createState() => _TreeSearchBarState();
}

class _TreeSearchBarState extends State<TreeSearchBar> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalTreeBloc, LocalTreeState>(
      builder: (context, state) {
        // when loading all trees

        final searchIndex = buildSearchIndex(state.store);

        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.82,
          child: Autocomplete<PersonSearchItem>(
            optionsBuilder: (TextEditingValue value) {
              final q = normalize(value.text);
              if (q.isEmpty) return const Iterable<PersonSearchItem>.empty();

              // fast filter (startsWith or contains)
              final matches =
                  searchIndex.where((e) => e.normalized.contains(q));

              // limit list so UI stays smooth
              return matches.take(20);
            },
            displayStringForOption: (o) => o.displayName,
            fieldViewBuilder: (context, textController, focusNode, onSubmit) {
              // keep external controller in sync (optional)
              textController.value = _controller.value;
              textController
                  .addListener(() => _controller.value = textController.value);

              return Padding(
                padding: FieldPadding,
                child: TextField(
                  controller: textController,
                  focusNode: focusNode,
                  textAlign: TextAlign.right,
                  decoration: kSearchBarInputDecor(context),
                ),
              );
            },
            optionsViewBuilder: (context, onSelected, options) {
              return Padding(
                padding: FieldPadding,
                child: Material(
                  color: kWhitesColor[700],
                  elevation: 8,
                  borderRadius: BorderRadius.circular(12),
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    shrinkWrap: true,
                    itemCount: options.length > 10 ? 10 : options.length,
                    separatorBuilder: (_, __) => kAppDivider,
                    itemBuilder: (context, i) {
                      final o = options.elementAt(i);
                      return GestureDetector(
                        onTap: () => onSelected(o),
                        child: SearchItem(item: o),
                      );
                    },
                  ),
                ),
              );
            },
            onSelected: (o) {
              // 1) close keyboard
              _focusNode.unfocus();

              // zoom to default
              context
                  .read<TreeSettingsBloc>()
                  .add(const TreeSettingsEvent.zoomChanged(ZOOM_DEF));

              // 2) call your action: center tree / open node panel / highlight
              context
                  .read<DrawTreeBloc>()
                  .navigateToNode(o.nodeId.getOrCrash());
            },
          ),
        );
      },
    );
  }
}

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
    required this.item,
  });

  final PersonSearchItem item;

  @override
  Widget build(BuildContext context) {
    final fullName = TreeGraphLineage.fatherBinText(
        store: context.read<LocalTreeBloc>().state.store,
        personId: item.nodeId,
        stopAtNodeId: context.read<LocalTreeBloc>().state.mainRootId,
        gender: item.gender);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
      child: Row(
        children: [
          Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
              decoration: BoxDecoration(
                  color: kRootColors[600], borderRadius: kAppBorderRadius),
              child: SvgPicture.asset('assets/avatars/${item.gender.name}.svg',
                  color: kRootColors[300], height: 35, width: 35)),
          kHSpacer10,
          Text(
            fullName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: kCalloutStyle,
          ),
        ],
      ),
    );
  }
}

const FieldPadding = EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0);
