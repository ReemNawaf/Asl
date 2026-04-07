import 'package:asl/c_domain/tree/tree_group.dart';
import 'package:asl/c_domain/tree/tree_settings.dart';
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_groups_settings_event.dart';
part 'tree_groups_settings_state.dart';
part 'tree_groups_settings_bloc.freezed.dart';

typedef DispatchLocalTree = void Function(LocalTreeEvent event);

class TreeGroupsSettingsBloc
    extends Bloc<TreeGroupsSettingsEvent, TreeGroupsSettingsState> {
  TreeGroupsSettingsBloc({
    required DispatchLocalTree dispatchLocalTree,
    required List<TreeGroup> initialGroups,
    this.onSaveFailed,
  })  : _dispatchLocalTree = dispatchLocalTree,
        super(TreeGroupsSettingsState(
          draft: List<TreeGroup>.from(initialGroups),
          saving: false,
          isEditing: false,
        )) {
    on<_SyncedFromSettings>(_onSyncedFromSettings);
    on<_EditingSet>(_onEditingSet);
    on<_GroupAdded>(_onGroupAdded);
    on<_RemoveAt>(_onRemoveAt);
    on<_Reorder>(_onReorder);
    on<_ColorPicked>(_onColorPicked);
    on<_SaveRequested>(_onSaveRequested);
    on<_SavePersistFailed>(_onSavePersistFailed);
    _seedControllers(initialGroups);
  }

  final DispatchLocalTree _dispatchLocalTree;
  final void Function()? onSaveFailed;

  final Map<String, TextEditingController> _nameControllers = {};

  void _seedControllers(List<TreeGroup> groups) {
    for (final g in groups) {
      final k = g.id.getOrCrash();
      _nameControllers[k] = TextEditingController(text: g.name);
    }
  }

  TextEditingController controllerFor(TreeGroup g) {
    final k = g.id.getOrCrash();
    return _nameControllers.putIfAbsent(
      k,
      () => TextEditingController(text: g.name),
    );
  }

  Future<void> _onSyncedFromSettings(
    _SyncedFromSettings event,
    Emitter<TreeGroupsSettingsState> emit,
  ) async {
    final s = event.groups;
    final nextIds = s.map((g) => g.id.getOrCrash()).toSet();
    for (final k in _nameControllers.keys.toList()) {
      if (!nextIds.contains(k)) {
        _nameControllers.remove(k)?.dispose();
      }
    }
    for (final g in s) {
      final k = g.id.getOrCrash();
      if (_nameControllers.containsKey(k)) {
        _nameControllers[k]!.text = g.name;
      } else {
        _nameControllers[k] = TextEditingController(text: g.name);
      }
    }
    emit(state.copyWith(
      draft: List<TreeGroup>.from(s),
      saving: false,
      isEditing: state.saving ? false : state.isEditing,
    ));
  }

  void _onEditingSet(_EditingSet event, Emitter<TreeGroupsSettingsState> emit) {
    emit(state.copyWith(isEditing: event.isEditing));
  }

  void _onSavePersistFailed(
    _SavePersistFailed event,
    Emitter<TreeGroupsSettingsState> emit,
  ) {
    onSaveFailed?.call();
    emit(state.copyWith(saving: false));
  }

  void _onGroupAdded(_GroupAdded event, Emitter<TreeGroupsSettingsState> emit) {
    if (!state.isEditing) return;
    if (state.draft.length >= 6) return;
    final ng = event.group;
    _nameControllers[ng.id.getOrCrash()] = TextEditingController();
    emit(state.copyWith(draft: [...state.draft, ng]));
  }

  void _onRemoveAt(_RemoveAt event, Emitter<TreeGroupsSettingsState> emit) {
    if (!state.isEditing) return;
    final i = event.index;
    if (i < 0 || i >= state.draft.length) return;
    final id = state.draft[i].id.getOrCrash();
    _nameControllers.remove(id)?.dispose();
    final next = [...state.draft]..removeAt(i);
    emit(state.copyWith(draft: next));
  }

  void _onReorder(_Reorder event, Emitter<TreeGroupsSettingsState> emit) {
    if (!state.isEditing) return;
    var newIndex = event.newIndex;
    var oldIndex = event.oldIndex;
    if (newIndex > oldIndex) newIndex--;
    final next = [...state.draft];
    final g = next.removeAt(oldIndex);
    next.insert(newIndex, g);
    emit(state.copyWith(draft: next));
  }

  void _onColorPicked(
    _ColorPicked event,
    Emitter<TreeGroupsSettingsState> emit,
  ) {
    if (!state.isEditing) return;
    final i = event.index;
    if (i < 0 || i >= state.draft.length) return;
    final g = state.draft[i].copyWith(colorKey: event.colorKey);
    final next = [...state.draft];
    next[i] = g;
    emit(state.copyWith(draft: next));
  }

  Future<void> _onSaveRequested(
    _SaveRequested event,
    Emitter<TreeGroupsSettingsState> emit,
  ) async {
    if (!state.isEditing) return;
    final settings = event.settings;

    final trimmed = <TreeGroup>[];
    for (final g in state.draft) {
      final k = g.id.getOrCrash();
      final text = (_nameControllers[k]?.text ?? g.name).trim();
      trimmed.add(g.copyWith(name: text));
    }

    emit(state.copyWith(saving: true));
    final merged = settings.copyWith(groups: trimmed);
    _dispatchLocalTree(LocalTreeEvent.saveTreeGroups(newSettings: merged));
  }

  @override
  Future<void> close() {
    for (final c in _nameControllers.values) {
      c.dispose();
    }
    _nameControllers.clear();
    return super.close();
  }
}
