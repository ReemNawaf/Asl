import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/core/widgets/app_text_field.dart';
import 'package:asl/a_presentation/tree/widgets/tree_group_palette.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/b_application/tree_groups_settings_bloc/tree_groups_settings_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/tree_group.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TreeGroupsSettingsSection extends StatelessWidget {
  const TreeGroupsSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final initialGroups =
        context.read<LocalTreeBloc>().state.settings?.groups ?? [];

    return BlocProvider(
      create: (context) => TreeGroupsSettingsBloc(
        dispatchLocalTree: (e) => context.read<LocalTreeBloc>().add(e),
        initialGroups: initialGroups,
        onSaveFailed: () {
          if (!context.mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(getTr(context, 'tree_groups_save_failed')!),
            ),
          );
        },
      ),
      child: BlocListener<LocalTreeBloc, LocalTreeState>(
        listenWhen: (prev, curr) =>
            prev.settings?.groups != curr.settings?.groups,
        listener: (context, state) {
          context.read<TreeGroupsSettingsBloc>().add(
                TreeGroupsSettingsEvent.syncedFromSettings(
                  state.settings?.groups ?? [],
                ),
              );
        },
        child: BlocListener<LocalTreeBloc, LocalTreeState>(
          listenWhen: (prev, curr) =>
              prev.treeFailureOption != curr.treeFailureOption &&
              curr.treeFailureOption.isSome(),
          listener: (context, state) {
            final groupsBloc = context.read<TreeGroupsSettingsBloc>();
            if (groupsBloc.state.saving) {
              groupsBloc.add(const TreeGroupsSettingsEvent.savePersistFailed());
            }
          },
          child: const TreeGroupsSettingsBody(),
        ),
      ),
    );
  }
}

class TreeGroupsSettingsBody extends StatelessWidget {
  const TreeGroupsSettingsBody({super.key});

  String? _validateForSave(BuildContext context, TreeGroupsSettingsBloc bloc) {
    final trimmed = <TreeGroup>[];
    for (final g in bloc.state.draft) {
      final text = bloc.controllerFor(g).text.trim();
      trimmed.add(g.copyWith(name: text));
    }
    for (final g in trimmed) {
      if (g.name.isEmpty) {
        return getTr(context, 'tree_group_name_empty')!;
      }
    }
    final lower = trimmed.map((g) => g.name.toLowerCase()).toList();
    if (lower.length != lower.toSet().length) {
      return getTr(context, 'tree_group_name_duplicate')!;
    }
    if (trimmed.length > 6) {
      return getTr(context, 'tree_group_max_six')!;
    }
    final colorKeys = trimmed.map((g) => g.colorKey).toList();
    if (colorKeys.length != colorKeys.toSet().length) {
      return getTr(context, 'tree_group_color_duplicate')!;
    }
    return null;
  }

  String? _firstUnusedColorKey(TreeGroupsSettingsBloc bloc) {
    final used = bloc.state.draft.map((g) => g.colorKey).toSet();
    for (final k in kTreeGroupColorKeys) {
      if (!used.contains(k)) return k;
    }
    return null;
  }

  void _addGroup(BuildContext context) {
    final bloc = context.read<TreeGroupsSettingsBloc>();
    if (!bloc.state.isEditing) return;
    if (bloc.state.draft.length >= 6) return;
    final colorKey = _firstUnusedColorKey(bloc) ?? kTreeGroupColorKeys.first;
    bloc.add(
      TreeGroupsSettingsEvent.groupAdded(
        TreeGroup(
          id: UniqueId(),
          name: '',
          colorKey: colorKey,
        ),
      ),
    );
  }

  String _localizedSwatchName(BuildContext context, String colorKey) {
    return getTr(context, 'tree_group_swatch_$colorKey')!;
  }

  Future<void> _pickColor(BuildContext context, int index) async {
    final bloc = context.read<TreeGroupsSettingsBloc>();
    final draft = List<TreeGroup>.from(bloc.state.draft);

    bool colorTakenByAnotherRow(String colorKey) {
      for (var i = 0; i < draft.length; i++) {
        if (i == index) continue;
        if (draft[i].colorKey == colorKey) return true;
      }
      return false;
    }

    await showDialog<void>(
      context: context,
      builder: (_) => ScaffoldMessenger(
        child: Builder(
          builder: (dialogCtx) => AlertDialog(
            backgroundColor: kWhitesColor[600],
            shape: kRoundedRectangleBorder,
            title: Text(getTr(dialogCtx, 'tree_group_pick_color')!),
            content: SizedBox(
              width: 300,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 12,
                crossAxisSpacing: 10,
                childAspectRatio: 0.78,
                children: kTreeGroupColorKeys.map((k) {
                  final taken = colorTakenByAnotherRow(k);
                  return InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      if (taken) {
                        ScaffoldMessenger.of(dialogCtx).showSnackBar(
                          SnackBar(
                            content: Text(
                              getTr(
                                dialogCtx,
                                'tree_group_color_duplicate',
                              )!,
                            ),
                          ),
                        );
                        return;
                      }
                      bloc.add(
                        TreeGroupsSettingsEvent.colorPicked(
                          index: index,
                          colorKey: k,
                        ),
                      );
                      Navigator.of(dialogCtx).pop();
                    },
                    child: Opacity(
                      opacity: taken ? 0.38 : 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: treeGroupColorFromKey(k),
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: kBlacksColor[300]!,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            _localizedSwatchName(dialogCtx, k),
                            style: kFootnoteStyle.copyWith(
                              color: kBlacksColor[200],
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _save(BuildContext context) {
    final settings = context.read<LocalTreeBloc>().state.settings;
    if (settings == null) return;

    final bloc = context.read<TreeGroupsSettingsBloc>();
    if (!bloc.state.isEditing || bloc.state.saving) return;

    final err = _validateForSave(context, bloc);
    if (err != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(err)),
      );
      return;
    }

    bloc.add(TreeGroupsSettingsEvent.saveRequested(settings: settings));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TreeGroupsSettingsBloc, TreeGroupsSettingsState>(
      builder: (context, state) {
        final bloc = context.read<TreeGroupsSettingsBloc>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kVSpacer15,
            Text(getTr(context, 'tree_groups_title')!, style: kBodyLarge),
            kVSpacer5,
            Text(
              getTr(context, 'tree_groups_description')!,
              style: kCaption1Style.copyWith(color: kBlacksColor[400]),
            ),
            kVSpacer5,
            Text(
              getTr(context, 'tree_groups_rules_hint')!,
              style: kFootnoteStyle.copyWith(color: kBlacksColor[400]),
            ),
            kVSpacer10,
            if (state.draft.isEmpty)
              Text(
                getTr(context, 'tree_groups_empty_hint')!,
                style: kFootnoteStyle.copyWith(color: kBlacksColor[400]),
              ),
            ReorderableListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              buildDefaultDragHandles: false,
              itemCount: state.draft.length,
              onReorder: state.isEditing
                  ? (oldIndex, newIndex) {
                      context.read<TreeGroupsSettingsBloc>().add(
                            TreeGroupsSettingsEvent.reorder(
                              oldIndex: oldIndex,
                              newIndex: newIndex,
                            ),
                          );
                    }
                  : (_, __) {},
              itemBuilder: (context, index) {
                final g = state.draft[index];
                final editing = state.isEditing;
                final dragChild = Padding(
                  padding: const EdgeInsets.only(right: 9),
                  child: Icon(
                    Icons.drag_indicator,
                    size: 18,
                    color: editing
                        ? kBlacksColor[600]
                        : kBlacksColor[600]!.withOpacity(0.35),
                  ),
                );
                return Material(
                  key: ValueKey(g.id.getOrCrash()),
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        if (editing)
                          ReorderableDragStartListener(
                            index: index,
                            child: dragChild,
                          ),
                        IconButton(
                          tooltip: getTr(context, 'tree_group_pick_color'),
                          onPressed:
                              editing ? () => _pickColor(context, index) : null,
                          icon: Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              color: treeGroupColorFromKey(g.colorKey)
                                  .withOpacity(0.4),
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: treeGroupColorFromKey(g.colorKey),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: AppTextField(
                            hint: getTr(context, 'tree_group_name_hint')!,
                            controller: bloc.controllerFor(g),
                            isEditing: editing,
                            validator: (value) => value?.isEmpty ?? true
                                ? getTr(context, 'tree_group_name_empty')!
                                : null,
                          ),
                        ),
                        if (editing)
                          IconButton(
                            tooltip: getTr(context, 'tree_group_remove'),
                            onPressed: () {
                              context.read<TreeGroupsSettingsBloc>().add(
                                    TreeGroupsSettingsEvent.removeAt(index),
                                  );
                            },
                            icon: Icon(
                              Icons.close_rounded,
                              size: 20,
                              color: kBlacksColor[600],
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Row(
              children: [
                if (state.isEditing && state.draft.length < 6)
                  TextButton.icon(
                    onPressed: () => _addGroup(context),
                    icon: const Icon(Icons.add),
                    label: Text(getTr(context, 'tree_group_add')!),
                  ),
                const Spacer(),
                if (state.isEditing)
                  TextButton(
                    onPressed: state.saving ? null : () => _save(context),
                    child: state.saving
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : Text(getTr(context, 'tree_groups_save')!),
                  )
                else
                  TextButton(
                    onPressed: state.saving
                        ? null
                        : () => context.read<TreeGroupsSettingsBloc>().add(
                              const TreeGroupsSettingsEvent.editingSet(true),
                            ),
                    child: Text(getTr(context, 'tree_groups_edit')!),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
