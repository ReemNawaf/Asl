import 'package:asl/a_presentation/a_shared/box_dec.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_lineage.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:asl/c_domain/search_tree/person_search_item.dart';
import 'package:asl/c_domain/tree/tree_draw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

        return Autocomplete<PersonSearchItem>(
          optionsBuilder: (TextEditingValue value) {
            final q = normalize(value.text);
            if (q.isEmpty) return const Iterable<PersonSearchItem>.empty();

            // fast filter (startsWith or contains)
            final matches = searchIndex.where((e) => e.normalized.contains(q));

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
                elevation: 8,
                borderRadius: BorderRadius.circular(12),
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  shrinkWrap: true,
                  itemCount: options.length > 10 ? 10 : options.length,
                  separatorBuilder: (_, __) => const Divider(height: 1),
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
            context.read<DrawTreeBloc>().navigateToNode(o.nodeId.getOrCrash());
          },
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

    return SizedBox(
      child: Text(fullName, textAlign: TextAlign.right),
    );
  }
}

const FieldPadding = EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0);
