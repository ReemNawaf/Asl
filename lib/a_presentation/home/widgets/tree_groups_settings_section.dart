import 'package:asl/a_presentation/a_shared/app_colors.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/text_styles.dart';
import 'package:asl/a_presentation/tree/widgets/tree_group_palette.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/i_tree_repository.dart';
import 'package:asl/c_domain/tree/tree_group.dart';
import 'package:asl/injection.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Local draft state; save persists via [ITreeRepository.saveTreeGroups] and
/// refreshes [LocalTreeBloc].
class TreeGroupsSettingsSection extends StatefulWidget {
  const TreeGroupsSettingsSection({
    super.key,
    required this.treeId,
  });

  final UniqueId treeId;

  @override
  State<TreeGroupsSettingsSection> createState() =>
      _TreeGroupsSettingsSectionState();
}

class _TreeGroupsSettingsSectionState extends State<TreeGroupsSettingsSection> {
  final List<TreeGroup> _draft = [];
  final Map<String, TextEditingController> _nameControllers = {};
  bool _linked = false;
  bool _saving = false;

  @override
  void dispose() {
    for (final c in _nameControllers.values) {
      c.dispose();
    }
    super.dispose();
  }

  TextEditingController _controllerFor(TreeGroup g) {
    final k = g.id.getOrCrash();
    return _nameControllers.putIfAbsent(
      k,
      () => TextEditingController(text: g.name),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_linked) return;
    _linked = true;
    final s = context.read<LocalTreeBloc>().state.settings;
    if (s != null) {
      for (final g in s.groups) {
        _nameControllers[g.id.getOrCrash()] =
            TextEditingController(text: g.name);
      }
      _draft.addAll(s.groups);
    }
  }

  void _syncDraftFromBloc() {
    final s = context.read<LocalTreeBloc>().state.settings;
    if (s == null) return;
    final nextIds = s.groups.map((g) => g.id.getOrCrash()).toSet();
    for (final k in _nameControllers.keys.toList()) {
      if (!nextIds.contains(k)) {
        _nameControllers.remove(k)?.dispose();
      }
    }
    for (final g in s.groups) {
      final k = g.id.getOrCrash();
      if (_nameControllers.containsKey(k)) {
        _nameControllers[k]!.text = g.name;
      } else {
        _nameControllers[k] = TextEditingController(text: g.name);
      }
    }
    // TODO: remove this
    setState(() {
      _draft
        ..clear()
        ..addAll(s.groups);
    });
  }

  Future<void> _save() async {
    final settings = context.read<LocalTreeBloc>().state.settings;
    if (settings == null) return;

    final trimmed = <TreeGroup>[];
    for (final g in _draft) {
      final k = g.id.getOrCrash();
      final text = (_nameControllers[k]?.text ?? g.name).trim();
      trimmed.add(g.copyWith(name: text));
    }

    for (final g in trimmed) {
      if (g.name.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(getTr(context, 'tree_group_name_empty')!)),
        );
        return;
      }
    }
    final lower = trimmed.map((g) => g.name.toLowerCase()).toList();
    if (lower.length != lower.toSet().length) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(getTr(context, 'tree_group_name_duplicate')!)),
      );
      return;
    }
    if (trimmed.length > 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(getTr(context, 'tree_group_max_six')!)),
      );
      return;
    }

    setState(() => _saving = true);
    final merged = settings.copyWith(groups: trimmed);
    final result = await getIt<ITreeRepository>().saveTreeGroups(
      treeId: widget.treeId,
      newSettings: merged,
    );

    if (!mounted) return;

    result.fold(
      (_) {
        setState(() => _saving = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(getTr(context, 'tree_groups_save_failed')!)),
        );
      },
      (saved) {
        final oldIds = settings.groups.map((g) => g.id.getOrCrash()).toSet();
        final newIds = saved.groups.map((g) => g.id.getOrCrash()).toSet();
        final removed = oldIds.difference(newIds);
        context.read<LocalTreeBloc>().add(
              LocalTreeEvent.treeGroupsSaved(
                newSettings: saved,
                removedGroupIds: removed,
              ),
            );
        setState(() {
          _saving = false;
          _draft
            ..clear()
            ..addAll(saved.groups);
          for (final g in saved.groups) {
            final k = g.id.getOrCrash();
            if (_nameControllers.containsKey(k)) {
              _nameControllers[k]!.text = g.name;
            } else {
              _nameControllers[k] = TextEditingController(text: g.name);
            }
          }
          final keep = saved.groups.map((g) => g.id.getOrCrash()).toSet();
          for (final k in _nameControllers.keys.toList()) {
            if (!keep.contains(k)) {
              _nameControllers.remove(k)?.dispose();
            }
          }
        });
      },
    );
  }

  void _addGroup() {
    if (_draft.length >= 6) return;
    final ng = TreeGroup(
      id: UniqueId(),
      name: '',
      colorKey: kTreeGroupColorKeys.first,
      iconKey: kTreeGroupIconKeys.first,
    );
    _nameControllers[ng.id.getOrCrash()] = TextEditingController();
    setState(() => _draft.add(ng));
  }

  void _removeAt(int i) {
    final id = _draft[i].id.getOrCrash();
    _nameControllers.remove(id)?.dispose();
    setState(() => _draft.removeAt(i));
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) newIndex--;
      final g = _draft.removeAt(oldIndex);
      _draft.insert(newIndex, g);
    });
  }

  Future<void> _pickColor(int index) async {
    await showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(getTr(ctx, 'tree_group_pick_color')!),
        content: SizedBox(
          width: 280,
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: kTreeGroupColorKeys.map((k) {
              return InkWell(
                onTap: () {
                  setState(
                    () => _draft[index] = _draft[index].copyWith(colorKey: k),
                  );
                  Navigator.of(ctx).pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: treeGroupColorFromKey(k),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: kBlacksColor[300]!),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Future<void> _pickIcon(int index) async {
    await showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(getTr(ctx, 'tree_group_pick_icon')!),
        content: SizedBox(
          width: 280,
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 5,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: kTreeGroupIconKeys.map((k) {
              return InkWell(
                onTap: () {
                  setState(
                    () => _draft[index] = _draft[index].copyWith(iconKey: k),
                  );
                  Navigator.of(ctx).pop();
                },
                child: Icon(treeGroupIconFromKey(k), color: kBlacksColor[200]),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocalTreeBloc, LocalTreeState>(
      listenWhen: (p, c) => p.settings?.groups != c.settings?.groups,
      listener: (context, state) {
        if (!_saving) _syncDraftFromBloc();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kVSpacer15,
          Text(getTr(context, 'tree_groups_title')!, style: kBodyLarge),
          kVSpacer5,
          Text(
            getTr(context, 'tree_groups_description')!,
            style: kCaption1Style.copyWith(color: kBlacksColor[400]),
          ),
          kVSpacer10,
          if (_draft.isEmpty)
            Text(
              getTr(context, 'tree_groups_empty_hint')!,
              style: kFootnoteStyle.copyWith(color: kBlacksColor[400]),
            ),
          ReorderableListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            buildDefaultDragHandles: false,
            itemCount: _draft.length,
            onReorder: _onReorder,
            itemBuilder: (context, index) {
              final g = _draft[index];
              return Material(
                key: ValueKey(g.id.getOrCrash()),
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReorderableDragStartListener(
                        index: index,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, right: 4),
                          child:
                              Icon(Icons.drag_handle, color: kBlacksColor[400]),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _controllerFor(g),
                          style: kBodyMedium,
                          decoration: InputDecoration(
                            hintText: getTr(context, 'tree_group_name_hint'),
                            isDense: true,
                          ),
                        ),
                      ),
                      IconButton(
                        tooltip: getTr(context, 'tree_group_pick_color'),
                        onPressed: () => _pickColor(index),
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
                      IconButton(
                        tooltip: getTr(context, 'tree_group_pick_icon'),
                        onPressed: () => _pickIcon(index),
                        icon: Icon(
                          treeGroupIconFromKey(g.iconKey),
                          color: kBlacksColor[200],
                        ),
                      ),
                      IconButton(
                        tooltip: getTr(context, 'tree_group_remove'),
                        onPressed: () => _removeAt(index),
                        icon: Icon(Icons.close, color: kRedColors[400]),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Row(
            children: [
              if (_draft.length < 6)
                TextButton.icon(
                  onPressed: _addGroup,
                  icon: const Icon(Icons.add),
                  label: Text(getTr(context, 'tree_group_add')!),
                ),
              const Spacer(),
              TextButton(
                onPressed: _saving ? null : _save,
                child: _saving
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(getTr(context, 'tree_groups_save')!),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
