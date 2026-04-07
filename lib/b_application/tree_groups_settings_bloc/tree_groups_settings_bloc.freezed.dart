// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_groups_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreeGroupsSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TreeGroup> groups) syncedFromSettings,
    required TResult Function(bool isEditing) editingSet,
    required TResult Function(TreeGroup group) groupAdded,
    required TResult Function(int index) removeAt,
    required TResult Function(int oldIndex, int newIndex) reorder,
    required TResult Function(int index, String colorKey) colorPicked,
    required TResult Function(TreeSettings settings) saveRequested,
    required TResult Function() savePersistFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult? Function(bool isEditing)? editingSet,
    TResult? Function(TreeGroup group)? groupAdded,
    TResult? Function(int index)? removeAt,
    TResult? Function(int oldIndex, int newIndex)? reorder,
    TResult? Function(int index, String colorKey)? colorPicked,
    TResult? Function(TreeSettings settings)? saveRequested,
    TResult? Function()? savePersistFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult Function(bool isEditing)? editingSet,
    TResult Function(TreeGroup group)? groupAdded,
    TResult Function(int index)? removeAt,
    TResult Function(int oldIndex, int newIndex)? reorder,
    TResult Function(int index, String colorKey)? colorPicked,
    TResult Function(TreeSettings settings)? saveRequested,
    TResult Function()? savePersistFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncedFromSettings value) syncedFromSettings,
    required TResult Function(_EditingSet value) editingSet,
    required TResult Function(_GroupAdded value) groupAdded,
    required TResult Function(_RemoveAt value) removeAt,
    required TResult Function(_Reorder value) reorder,
    required TResult Function(_ColorPicked value) colorPicked,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_SavePersistFailed value) savePersistFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult? Function(_EditingSet value)? editingSet,
    TResult? Function(_GroupAdded value)? groupAdded,
    TResult? Function(_RemoveAt value)? removeAt,
    TResult? Function(_Reorder value)? reorder,
    TResult? Function(_ColorPicked value)? colorPicked,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_SavePersistFailed value)? savePersistFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult Function(_EditingSet value)? editingSet,
    TResult Function(_GroupAdded value)? groupAdded,
    TResult Function(_RemoveAt value)? removeAt,
    TResult Function(_Reorder value)? reorder,
    TResult Function(_ColorPicked value)? colorPicked,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_SavePersistFailed value)? savePersistFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeGroupsSettingsEventCopyWith<$Res> {
  factory $TreeGroupsSettingsEventCopyWith(TreeGroupsSettingsEvent value,
          $Res Function(TreeGroupsSettingsEvent) then) =
      _$TreeGroupsSettingsEventCopyWithImpl<$Res, TreeGroupsSettingsEvent>;
}

/// @nodoc
class _$TreeGroupsSettingsEventCopyWithImpl<$Res,
        $Val extends TreeGroupsSettingsEvent>
    implements $TreeGroupsSettingsEventCopyWith<$Res> {
  _$TreeGroupsSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SyncedFromSettingsImplCopyWith<$Res> {
  factory _$$SyncedFromSettingsImplCopyWith(_$SyncedFromSettingsImpl value,
          $Res Function(_$SyncedFromSettingsImpl) then) =
      __$$SyncedFromSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TreeGroup> groups});
}

/// @nodoc
class __$$SyncedFromSettingsImplCopyWithImpl<$Res>
    extends _$TreeGroupsSettingsEventCopyWithImpl<$Res,
        _$SyncedFromSettingsImpl>
    implements _$$SyncedFromSettingsImplCopyWith<$Res> {
  __$$SyncedFromSettingsImplCopyWithImpl(_$SyncedFromSettingsImpl _value,
      $Res Function(_$SyncedFromSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$SyncedFromSettingsImpl(
      null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<TreeGroup>,
    ));
  }
}

/// @nodoc

class _$SyncedFromSettingsImpl implements _SyncedFromSettings {
  const _$SyncedFromSettingsImpl(final List<TreeGroup> groups)
      : _groups = groups;

  final List<TreeGroup> _groups;
  @override
  List<TreeGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'TreeGroupsSettingsEvent.syncedFromSettings(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncedFromSettingsImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncedFromSettingsImplCopyWith<_$SyncedFromSettingsImpl> get copyWith =>
      __$$SyncedFromSettingsImplCopyWithImpl<_$SyncedFromSettingsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TreeGroup> groups) syncedFromSettings,
    required TResult Function(bool isEditing) editingSet,
    required TResult Function(TreeGroup group) groupAdded,
    required TResult Function(int index) removeAt,
    required TResult Function(int oldIndex, int newIndex) reorder,
    required TResult Function(int index, String colorKey) colorPicked,
    required TResult Function(TreeSettings settings) saveRequested,
    required TResult Function() savePersistFailed,
  }) {
    return syncedFromSettings(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult? Function(bool isEditing)? editingSet,
    TResult? Function(TreeGroup group)? groupAdded,
    TResult? Function(int index)? removeAt,
    TResult? Function(int oldIndex, int newIndex)? reorder,
    TResult? Function(int index, String colorKey)? colorPicked,
    TResult? Function(TreeSettings settings)? saveRequested,
    TResult? Function()? savePersistFailed,
  }) {
    return syncedFromSettings?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult Function(bool isEditing)? editingSet,
    TResult Function(TreeGroup group)? groupAdded,
    TResult Function(int index)? removeAt,
    TResult Function(int oldIndex, int newIndex)? reorder,
    TResult Function(int index, String colorKey)? colorPicked,
    TResult Function(TreeSettings settings)? saveRequested,
    TResult Function()? savePersistFailed,
    required TResult orElse(),
  }) {
    if (syncedFromSettings != null) {
      return syncedFromSettings(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncedFromSettings value) syncedFromSettings,
    required TResult Function(_EditingSet value) editingSet,
    required TResult Function(_GroupAdded value) groupAdded,
    required TResult Function(_RemoveAt value) removeAt,
    required TResult Function(_Reorder value) reorder,
    required TResult Function(_ColorPicked value) colorPicked,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_SavePersistFailed value) savePersistFailed,
  }) {
    return syncedFromSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult? Function(_EditingSet value)? editingSet,
    TResult? Function(_GroupAdded value)? groupAdded,
    TResult? Function(_RemoveAt value)? removeAt,
    TResult? Function(_Reorder value)? reorder,
    TResult? Function(_ColorPicked value)? colorPicked,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_SavePersistFailed value)? savePersistFailed,
  }) {
    return syncedFromSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult Function(_EditingSet value)? editingSet,
    TResult Function(_GroupAdded value)? groupAdded,
    TResult Function(_RemoveAt value)? removeAt,
    TResult Function(_Reorder value)? reorder,
    TResult Function(_ColorPicked value)? colorPicked,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_SavePersistFailed value)? savePersistFailed,
    required TResult orElse(),
  }) {
    if (syncedFromSettings != null) {
      return syncedFromSettings(this);
    }
    return orElse();
  }
}

abstract class _SyncedFromSettings implements TreeGroupsSettingsEvent {
  const factory _SyncedFromSettings(final List<TreeGroup> groups) =
      _$SyncedFromSettingsImpl;

  List<TreeGroup> get groups;
  @JsonKey(ignore: true)
  _$$SyncedFromSettingsImplCopyWith<_$SyncedFromSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditingSetImplCopyWith<$Res> {
  factory _$$EditingSetImplCopyWith(
          _$EditingSetImpl value, $Res Function(_$EditingSetImpl) then) =
      __$$EditingSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEditing});
}

/// @nodoc
class __$$EditingSetImplCopyWithImpl<$Res>
    extends _$TreeGroupsSettingsEventCopyWithImpl<$Res, _$EditingSetImpl>
    implements _$$EditingSetImplCopyWith<$Res> {
  __$$EditingSetImplCopyWithImpl(
      _$EditingSetImpl _value, $Res Function(_$EditingSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditing = null,
  }) {
    return _then(_$EditingSetImpl(
      null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditingSetImpl implements _EditingSet {
  const _$EditingSetImpl(this.isEditing);

  @override
  final bool isEditing;

  @override
  String toString() {
    return 'TreeGroupsSettingsEvent.editingSet(isEditing: $isEditing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditingSetImpl &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditingSetImplCopyWith<_$EditingSetImpl> get copyWith =>
      __$$EditingSetImplCopyWithImpl<_$EditingSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TreeGroup> groups) syncedFromSettings,
    required TResult Function(bool isEditing) editingSet,
    required TResult Function(TreeGroup group) groupAdded,
    required TResult Function(int index) removeAt,
    required TResult Function(int oldIndex, int newIndex) reorder,
    required TResult Function(int index, String colorKey) colorPicked,
    required TResult Function(TreeSettings settings) saveRequested,
    required TResult Function() savePersistFailed,
  }) {
    return editingSet(isEditing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult? Function(bool isEditing)? editingSet,
    TResult? Function(TreeGroup group)? groupAdded,
    TResult? Function(int index)? removeAt,
    TResult? Function(int oldIndex, int newIndex)? reorder,
    TResult? Function(int index, String colorKey)? colorPicked,
    TResult? Function(TreeSettings settings)? saveRequested,
    TResult? Function()? savePersistFailed,
  }) {
    return editingSet?.call(isEditing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult Function(bool isEditing)? editingSet,
    TResult Function(TreeGroup group)? groupAdded,
    TResult Function(int index)? removeAt,
    TResult Function(int oldIndex, int newIndex)? reorder,
    TResult Function(int index, String colorKey)? colorPicked,
    TResult Function(TreeSettings settings)? saveRequested,
    TResult Function()? savePersistFailed,
    required TResult orElse(),
  }) {
    if (editingSet != null) {
      return editingSet(isEditing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncedFromSettings value) syncedFromSettings,
    required TResult Function(_EditingSet value) editingSet,
    required TResult Function(_GroupAdded value) groupAdded,
    required TResult Function(_RemoveAt value) removeAt,
    required TResult Function(_Reorder value) reorder,
    required TResult Function(_ColorPicked value) colorPicked,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_SavePersistFailed value) savePersistFailed,
  }) {
    return editingSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult? Function(_EditingSet value)? editingSet,
    TResult? Function(_GroupAdded value)? groupAdded,
    TResult? Function(_RemoveAt value)? removeAt,
    TResult? Function(_Reorder value)? reorder,
    TResult? Function(_ColorPicked value)? colorPicked,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_SavePersistFailed value)? savePersistFailed,
  }) {
    return editingSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult Function(_EditingSet value)? editingSet,
    TResult Function(_GroupAdded value)? groupAdded,
    TResult Function(_RemoveAt value)? removeAt,
    TResult Function(_Reorder value)? reorder,
    TResult Function(_ColorPicked value)? colorPicked,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_SavePersistFailed value)? savePersistFailed,
    required TResult orElse(),
  }) {
    if (editingSet != null) {
      return editingSet(this);
    }
    return orElse();
  }
}

abstract class _EditingSet implements TreeGroupsSettingsEvent {
  const factory _EditingSet(final bool isEditing) = _$EditingSetImpl;

  bool get isEditing;
  @JsonKey(ignore: true)
  _$$EditingSetImplCopyWith<_$EditingSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupAddedImplCopyWith<$Res> {
  factory _$$GroupAddedImplCopyWith(
          _$GroupAddedImpl value, $Res Function(_$GroupAddedImpl) then) =
      __$$GroupAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TreeGroup group});

  $TreeGroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$GroupAddedImplCopyWithImpl<$Res>
    extends _$TreeGroupsSettingsEventCopyWithImpl<$Res, _$GroupAddedImpl>
    implements _$$GroupAddedImplCopyWith<$Res> {
  __$$GroupAddedImplCopyWithImpl(
      _$GroupAddedImpl _value, $Res Function(_$GroupAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$GroupAddedImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as TreeGroup,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeGroupCopyWith<$Res> get group {
    return $TreeGroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$GroupAddedImpl implements _GroupAdded {
  const _$GroupAddedImpl(this.group);

  @override
  final TreeGroup group;

  @override
  String toString() {
    return 'TreeGroupsSettingsEvent.groupAdded(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupAddedImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupAddedImplCopyWith<_$GroupAddedImpl> get copyWith =>
      __$$GroupAddedImplCopyWithImpl<_$GroupAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TreeGroup> groups) syncedFromSettings,
    required TResult Function(bool isEditing) editingSet,
    required TResult Function(TreeGroup group) groupAdded,
    required TResult Function(int index) removeAt,
    required TResult Function(int oldIndex, int newIndex) reorder,
    required TResult Function(int index, String colorKey) colorPicked,
    required TResult Function(TreeSettings settings) saveRequested,
    required TResult Function() savePersistFailed,
  }) {
    return groupAdded(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult? Function(bool isEditing)? editingSet,
    TResult? Function(TreeGroup group)? groupAdded,
    TResult? Function(int index)? removeAt,
    TResult? Function(int oldIndex, int newIndex)? reorder,
    TResult? Function(int index, String colorKey)? colorPicked,
    TResult? Function(TreeSettings settings)? saveRequested,
    TResult? Function()? savePersistFailed,
  }) {
    return groupAdded?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult Function(bool isEditing)? editingSet,
    TResult Function(TreeGroup group)? groupAdded,
    TResult Function(int index)? removeAt,
    TResult Function(int oldIndex, int newIndex)? reorder,
    TResult Function(int index, String colorKey)? colorPicked,
    TResult Function(TreeSettings settings)? saveRequested,
    TResult Function()? savePersistFailed,
    required TResult orElse(),
  }) {
    if (groupAdded != null) {
      return groupAdded(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncedFromSettings value) syncedFromSettings,
    required TResult Function(_EditingSet value) editingSet,
    required TResult Function(_GroupAdded value) groupAdded,
    required TResult Function(_RemoveAt value) removeAt,
    required TResult Function(_Reorder value) reorder,
    required TResult Function(_ColorPicked value) colorPicked,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_SavePersistFailed value) savePersistFailed,
  }) {
    return groupAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult? Function(_EditingSet value)? editingSet,
    TResult? Function(_GroupAdded value)? groupAdded,
    TResult? Function(_RemoveAt value)? removeAt,
    TResult? Function(_Reorder value)? reorder,
    TResult? Function(_ColorPicked value)? colorPicked,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_SavePersistFailed value)? savePersistFailed,
  }) {
    return groupAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult Function(_EditingSet value)? editingSet,
    TResult Function(_GroupAdded value)? groupAdded,
    TResult Function(_RemoveAt value)? removeAt,
    TResult Function(_Reorder value)? reorder,
    TResult Function(_ColorPicked value)? colorPicked,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_SavePersistFailed value)? savePersistFailed,
    required TResult orElse(),
  }) {
    if (groupAdded != null) {
      return groupAdded(this);
    }
    return orElse();
  }
}

abstract class _GroupAdded implements TreeGroupsSettingsEvent {
  const factory _GroupAdded(final TreeGroup group) = _$GroupAddedImpl;

  TreeGroup get group;
  @JsonKey(ignore: true)
  _$$GroupAddedImplCopyWith<_$GroupAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAtImplCopyWith<$Res> {
  factory _$$RemoveAtImplCopyWith(
          _$RemoveAtImpl value, $Res Function(_$RemoveAtImpl) then) =
      __$$RemoveAtImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveAtImplCopyWithImpl<$Res>
    extends _$TreeGroupsSettingsEventCopyWithImpl<$Res, _$RemoveAtImpl>
    implements _$$RemoveAtImplCopyWith<$Res> {
  __$$RemoveAtImplCopyWithImpl(
      _$RemoveAtImpl _value, $Res Function(_$RemoveAtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveAtImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveAtImpl implements _RemoveAt {
  const _$RemoveAtImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TreeGroupsSettingsEvent.removeAt(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAtImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveAtImplCopyWith<_$RemoveAtImpl> get copyWith =>
      __$$RemoveAtImplCopyWithImpl<_$RemoveAtImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TreeGroup> groups) syncedFromSettings,
    required TResult Function(bool isEditing) editingSet,
    required TResult Function(TreeGroup group) groupAdded,
    required TResult Function(int index) removeAt,
    required TResult Function(int oldIndex, int newIndex) reorder,
    required TResult Function(int index, String colorKey) colorPicked,
    required TResult Function(TreeSettings settings) saveRequested,
    required TResult Function() savePersistFailed,
  }) {
    return removeAt(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult? Function(bool isEditing)? editingSet,
    TResult? Function(TreeGroup group)? groupAdded,
    TResult? Function(int index)? removeAt,
    TResult? Function(int oldIndex, int newIndex)? reorder,
    TResult? Function(int index, String colorKey)? colorPicked,
    TResult? Function(TreeSettings settings)? saveRequested,
    TResult? Function()? savePersistFailed,
  }) {
    return removeAt?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult Function(bool isEditing)? editingSet,
    TResult Function(TreeGroup group)? groupAdded,
    TResult Function(int index)? removeAt,
    TResult Function(int oldIndex, int newIndex)? reorder,
    TResult Function(int index, String colorKey)? colorPicked,
    TResult Function(TreeSettings settings)? saveRequested,
    TResult Function()? savePersistFailed,
    required TResult orElse(),
  }) {
    if (removeAt != null) {
      return removeAt(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncedFromSettings value) syncedFromSettings,
    required TResult Function(_EditingSet value) editingSet,
    required TResult Function(_GroupAdded value) groupAdded,
    required TResult Function(_RemoveAt value) removeAt,
    required TResult Function(_Reorder value) reorder,
    required TResult Function(_ColorPicked value) colorPicked,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_SavePersistFailed value) savePersistFailed,
  }) {
    return removeAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult? Function(_EditingSet value)? editingSet,
    TResult? Function(_GroupAdded value)? groupAdded,
    TResult? Function(_RemoveAt value)? removeAt,
    TResult? Function(_Reorder value)? reorder,
    TResult? Function(_ColorPicked value)? colorPicked,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_SavePersistFailed value)? savePersistFailed,
  }) {
    return removeAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult Function(_EditingSet value)? editingSet,
    TResult Function(_GroupAdded value)? groupAdded,
    TResult Function(_RemoveAt value)? removeAt,
    TResult Function(_Reorder value)? reorder,
    TResult Function(_ColorPicked value)? colorPicked,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_SavePersistFailed value)? savePersistFailed,
    required TResult orElse(),
  }) {
    if (removeAt != null) {
      return removeAt(this);
    }
    return orElse();
  }
}

abstract class _RemoveAt implements TreeGroupsSettingsEvent {
  const factory _RemoveAt(final int index) = _$RemoveAtImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveAtImplCopyWith<_$RemoveAtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderImplCopyWith<$Res> {
  factory _$$ReorderImplCopyWith(
          _$ReorderImpl value, $Res Function(_$ReorderImpl) then) =
      __$$ReorderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$$ReorderImplCopyWithImpl<$Res>
    extends _$TreeGroupsSettingsEventCopyWithImpl<$Res, _$ReorderImpl>
    implements _$$ReorderImplCopyWith<$Res> {
  __$$ReorderImplCopyWithImpl(
      _$ReorderImpl _value, $Res Function(_$ReorderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$ReorderImpl(
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReorderImpl implements _Reorder {
  const _$ReorderImpl({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'TreeGroupsSettingsEvent.reorder(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderImpl &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderImplCopyWith<_$ReorderImpl> get copyWith =>
      __$$ReorderImplCopyWithImpl<_$ReorderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TreeGroup> groups) syncedFromSettings,
    required TResult Function(bool isEditing) editingSet,
    required TResult Function(TreeGroup group) groupAdded,
    required TResult Function(int index) removeAt,
    required TResult Function(int oldIndex, int newIndex) reorder,
    required TResult Function(int index, String colorKey) colorPicked,
    required TResult Function(TreeSettings settings) saveRequested,
    required TResult Function() savePersistFailed,
  }) {
    return reorder(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult? Function(bool isEditing)? editingSet,
    TResult? Function(TreeGroup group)? groupAdded,
    TResult? Function(int index)? removeAt,
    TResult? Function(int oldIndex, int newIndex)? reorder,
    TResult? Function(int index, String colorKey)? colorPicked,
    TResult? Function(TreeSettings settings)? saveRequested,
    TResult? Function()? savePersistFailed,
  }) {
    return reorder?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult Function(bool isEditing)? editingSet,
    TResult Function(TreeGroup group)? groupAdded,
    TResult Function(int index)? removeAt,
    TResult Function(int oldIndex, int newIndex)? reorder,
    TResult Function(int index, String colorKey)? colorPicked,
    TResult Function(TreeSettings settings)? saveRequested,
    TResult Function()? savePersistFailed,
    required TResult orElse(),
  }) {
    if (reorder != null) {
      return reorder(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncedFromSettings value) syncedFromSettings,
    required TResult Function(_EditingSet value) editingSet,
    required TResult Function(_GroupAdded value) groupAdded,
    required TResult Function(_RemoveAt value) removeAt,
    required TResult Function(_Reorder value) reorder,
    required TResult Function(_ColorPicked value) colorPicked,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_SavePersistFailed value) savePersistFailed,
  }) {
    return reorder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult? Function(_EditingSet value)? editingSet,
    TResult? Function(_GroupAdded value)? groupAdded,
    TResult? Function(_RemoveAt value)? removeAt,
    TResult? Function(_Reorder value)? reorder,
    TResult? Function(_ColorPicked value)? colorPicked,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_SavePersistFailed value)? savePersistFailed,
  }) {
    return reorder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult Function(_EditingSet value)? editingSet,
    TResult Function(_GroupAdded value)? groupAdded,
    TResult Function(_RemoveAt value)? removeAt,
    TResult Function(_Reorder value)? reorder,
    TResult Function(_ColorPicked value)? colorPicked,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_SavePersistFailed value)? savePersistFailed,
    required TResult orElse(),
  }) {
    if (reorder != null) {
      return reorder(this);
    }
    return orElse();
  }
}

abstract class _Reorder implements TreeGroupsSettingsEvent {
  const factory _Reorder(
      {required final int oldIndex,
      required final int newIndex}) = _$ReorderImpl;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$$ReorderImplCopyWith<_$ReorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorPickedImplCopyWith<$Res> {
  factory _$$ColorPickedImplCopyWith(
          _$ColorPickedImpl value, $Res Function(_$ColorPickedImpl) then) =
      __$$ColorPickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, String colorKey});
}

/// @nodoc
class __$$ColorPickedImplCopyWithImpl<$Res>
    extends _$TreeGroupsSettingsEventCopyWithImpl<$Res, _$ColorPickedImpl>
    implements _$$ColorPickedImplCopyWith<$Res> {
  __$$ColorPickedImplCopyWithImpl(
      _$ColorPickedImpl _value, $Res Function(_$ColorPickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? colorKey = null,
  }) {
    return _then(_$ColorPickedImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      colorKey: null == colorKey
          ? _value.colorKey
          : colorKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ColorPickedImpl implements _ColorPicked {
  const _$ColorPickedImpl({required this.index, required this.colorKey});

  @override
  final int index;
  @override
  final String colorKey;

  @override
  String toString() {
    return 'TreeGroupsSettingsEvent.colorPicked(index: $index, colorKey: $colorKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorPickedImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.colorKey, colorKey) ||
                other.colorKey == colorKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, colorKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorPickedImplCopyWith<_$ColorPickedImpl> get copyWith =>
      __$$ColorPickedImplCopyWithImpl<_$ColorPickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TreeGroup> groups) syncedFromSettings,
    required TResult Function(bool isEditing) editingSet,
    required TResult Function(TreeGroup group) groupAdded,
    required TResult Function(int index) removeAt,
    required TResult Function(int oldIndex, int newIndex) reorder,
    required TResult Function(int index, String colorKey) colorPicked,
    required TResult Function(TreeSettings settings) saveRequested,
    required TResult Function() savePersistFailed,
  }) {
    return colorPicked(index, colorKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult? Function(bool isEditing)? editingSet,
    TResult? Function(TreeGroup group)? groupAdded,
    TResult? Function(int index)? removeAt,
    TResult? Function(int oldIndex, int newIndex)? reorder,
    TResult? Function(int index, String colorKey)? colorPicked,
    TResult? Function(TreeSettings settings)? saveRequested,
    TResult? Function()? savePersistFailed,
  }) {
    return colorPicked?.call(index, colorKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult Function(bool isEditing)? editingSet,
    TResult Function(TreeGroup group)? groupAdded,
    TResult Function(int index)? removeAt,
    TResult Function(int oldIndex, int newIndex)? reorder,
    TResult Function(int index, String colorKey)? colorPicked,
    TResult Function(TreeSettings settings)? saveRequested,
    TResult Function()? savePersistFailed,
    required TResult orElse(),
  }) {
    if (colorPicked != null) {
      return colorPicked(index, colorKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncedFromSettings value) syncedFromSettings,
    required TResult Function(_EditingSet value) editingSet,
    required TResult Function(_GroupAdded value) groupAdded,
    required TResult Function(_RemoveAt value) removeAt,
    required TResult Function(_Reorder value) reorder,
    required TResult Function(_ColorPicked value) colorPicked,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_SavePersistFailed value) savePersistFailed,
  }) {
    return colorPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult? Function(_EditingSet value)? editingSet,
    TResult? Function(_GroupAdded value)? groupAdded,
    TResult? Function(_RemoveAt value)? removeAt,
    TResult? Function(_Reorder value)? reorder,
    TResult? Function(_ColorPicked value)? colorPicked,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_SavePersistFailed value)? savePersistFailed,
  }) {
    return colorPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult Function(_EditingSet value)? editingSet,
    TResult Function(_GroupAdded value)? groupAdded,
    TResult Function(_RemoveAt value)? removeAt,
    TResult Function(_Reorder value)? reorder,
    TResult Function(_ColorPicked value)? colorPicked,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_SavePersistFailed value)? savePersistFailed,
    required TResult orElse(),
  }) {
    if (colorPicked != null) {
      return colorPicked(this);
    }
    return orElse();
  }
}

abstract class _ColorPicked implements TreeGroupsSettingsEvent {
  const factory _ColorPicked(
      {required final int index,
      required final String colorKey}) = _$ColorPickedImpl;

  int get index;
  String get colorKey;
  @JsonKey(ignore: true)
  _$$ColorPickedImplCopyWith<_$ColorPickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveRequestedImplCopyWith<$Res> {
  factory _$$SaveRequestedImplCopyWith(
          _$SaveRequestedImpl value, $Res Function(_$SaveRequestedImpl) then) =
      __$$SaveRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TreeSettings settings});

  $TreeSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SaveRequestedImplCopyWithImpl<$Res>
    extends _$TreeGroupsSettingsEventCopyWithImpl<$Res, _$SaveRequestedImpl>
    implements _$$SaveRequestedImplCopyWith<$Res> {
  __$$SaveRequestedImplCopyWithImpl(
      _$SaveRequestedImpl _value, $Res Function(_$SaveRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$SaveRequestedImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as TreeSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeSettingsCopyWith<$Res> get settings {
    return $TreeSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc

class _$SaveRequestedImpl implements _SaveRequested {
  const _$SaveRequestedImpl({required this.settings});

  @override
  final TreeSettings settings;

  @override
  String toString() {
    return 'TreeGroupsSettingsEvent.saveRequested(settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRequestedImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveRequestedImplCopyWith<_$SaveRequestedImpl> get copyWith =>
      __$$SaveRequestedImplCopyWithImpl<_$SaveRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TreeGroup> groups) syncedFromSettings,
    required TResult Function(bool isEditing) editingSet,
    required TResult Function(TreeGroup group) groupAdded,
    required TResult Function(int index) removeAt,
    required TResult Function(int oldIndex, int newIndex) reorder,
    required TResult Function(int index, String colorKey) colorPicked,
    required TResult Function(TreeSettings settings) saveRequested,
    required TResult Function() savePersistFailed,
  }) {
    return saveRequested(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult? Function(bool isEditing)? editingSet,
    TResult? Function(TreeGroup group)? groupAdded,
    TResult? Function(int index)? removeAt,
    TResult? Function(int oldIndex, int newIndex)? reorder,
    TResult? Function(int index, String colorKey)? colorPicked,
    TResult? Function(TreeSettings settings)? saveRequested,
    TResult? Function()? savePersistFailed,
  }) {
    return saveRequested?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult Function(bool isEditing)? editingSet,
    TResult Function(TreeGroup group)? groupAdded,
    TResult Function(int index)? removeAt,
    TResult Function(int oldIndex, int newIndex)? reorder,
    TResult Function(int index, String colorKey)? colorPicked,
    TResult Function(TreeSettings settings)? saveRequested,
    TResult Function()? savePersistFailed,
    required TResult orElse(),
  }) {
    if (saveRequested != null) {
      return saveRequested(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncedFromSettings value) syncedFromSettings,
    required TResult Function(_EditingSet value) editingSet,
    required TResult Function(_GroupAdded value) groupAdded,
    required TResult Function(_RemoveAt value) removeAt,
    required TResult Function(_Reorder value) reorder,
    required TResult Function(_ColorPicked value) colorPicked,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_SavePersistFailed value) savePersistFailed,
  }) {
    return saveRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult? Function(_EditingSet value)? editingSet,
    TResult? Function(_GroupAdded value)? groupAdded,
    TResult? Function(_RemoveAt value)? removeAt,
    TResult? Function(_Reorder value)? reorder,
    TResult? Function(_ColorPicked value)? colorPicked,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_SavePersistFailed value)? savePersistFailed,
  }) {
    return saveRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult Function(_EditingSet value)? editingSet,
    TResult Function(_GroupAdded value)? groupAdded,
    TResult Function(_RemoveAt value)? removeAt,
    TResult Function(_Reorder value)? reorder,
    TResult Function(_ColorPicked value)? colorPicked,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_SavePersistFailed value)? savePersistFailed,
    required TResult orElse(),
  }) {
    if (saveRequested != null) {
      return saveRequested(this);
    }
    return orElse();
  }
}

abstract class _SaveRequested implements TreeGroupsSettingsEvent {
  const factory _SaveRequested({required final TreeSettings settings}) =
      _$SaveRequestedImpl;

  TreeSettings get settings;
  @JsonKey(ignore: true)
  _$$SaveRequestedImplCopyWith<_$SaveRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavePersistFailedImplCopyWith<$Res> {
  factory _$$SavePersistFailedImplCopyWith(_$SavePersistFailedImpl value,
          $Res Function(_$SavePersistFailedImpl) then) =
      __$$SavePersistFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavePersistFailedImplCopyWithImpl<$Res>
    extends _$TreeGroupsSettingsEventCopyWithImpl<$Res, _$SavePersistFailedImpl>
    implements _$$SavePersistFailedImplCopyWith<$Res> {
  __$$SavePersistFailedImplCopyWithImpl(_$SavePersistFailedImpl _value,
      $Res Function(_$SavePersistFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavePersistFailedImpl implements _SavePersistFailed {
  const _$SavePersistFailedImpl();

  @override
  String toString() {
    return 'TreeGroupsSettingsEvent.savePersistFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavePersistFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TreeGroup> groups) syncedFromSettings,
    required TResult Function(bool isEditing) editingSet,
    required TResult Function(TreeGroup group) groupAdded,
    required TResult Function(int index) removeAt,
    required TResult Function(int oldIndex, int newIndex) reorder,
    required TResult Function(int index, String colorKey) colorPicked,
    required TResult Function(TreeSettings settings) saveRequested,
    required TResult Function() savePersistFailed,
  }) {
    return savePersistFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult? Function(bool isEditing)? editingSet,
    TResult? Function(TreeGroup group)? groupAdded,
    TResult? Function(int index)? removeAt,
    TResult? Function(int oldIndex, int newIndex)? reorder,
    TResult? Function(int index, String colorKey)? colorPicked,
    TResult? Function(TreeSettings settings)? saveRequested,
    TResult? Function()? savePersistFailed,
  }) {
    return savePersistFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TreeGroup> groups)? syncedFromSettings,
    TResult Function(bool isEditing)? editingSet,
    TResult Function(TreeGroup group)? groupAdded,
    TResult Function(int index)? removeAt,
    TResult Function(int oldIndex, int newIndex)? reorder,
    TResult Function(int index, String colorKey)? colorPicked,
    TResult Function(TreeSettings settings)? saveRequested,
    TResult Function()? savePersistFailed,
    required TResult orElse(),
  }) {
    if (savePersistFailed != null) {
      return savePersistFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncedFromSettings value) syncedFromSettings,
    required TResult Function(_EditingSet value) editingSet,
    required TResult Function(_GroupAdded value) groupAdded,
    required TResult Function(_RemoveAt value) removeAt,
    required TResult Function(_Reorder value) reorder,
    required TResult Function(_ColorPicked value) colorPicked,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_SavePersistFailed value) savePersistFailed,
  }) {
    return savePersistFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult? Function(_EditingSet value)? editingSet,
    TResult? Function(_GroupAdded value)? groupAdded,
    TResult? Function(_RemoveAt value)? removeAt,
    TResult? Function(_Reorder value)? reorder,
    TResult? Function(_ColorPicked value)? colorPicked,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_SavePersistFailed value)? savePersistFailed,
  }) {
    return savePersistFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncedFromSettings value)? syncedFromSettings,
    TResult Function(_EditingSet value)? editingSet,
    TResult Function(_GroupAdded value)? groupAdded,
    TResult Function(_RemoveAt value)? removeAt,
    TResult Function(_Reorder value)? reorder,
    TResult Function(_ColorPicked value)? colorPicked,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_SavePersistFailed value)? savePersistFailed,
    required TResult orElse(),
  }) {
    if (savePersistFailed != null) {
      return savePersistFailed(this);
    }
    return orElse();
  }
}

abstract class _SavePersistFailed implements TreeGroupsSettingsEvent {
  const factory _SavePersistFailed() = _$SavePersistFailedImpl;
}

/// @nodoc
mixin _$TreeGroupsSettingsState {
  List<TreeGroup> get draft => throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError;

  /// When false, group rows are read-only; use [TreeGroupsSettingsEvent.editingSet] to enter edit mode.
  bool get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeGroupsSettingsStateCopyWith<TreeGroupsSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeGroupsSettingsStateCopyWith<$Res> {
  factory $TreeGroupsSettingsStateCopyWith(TreeGroupsSettingsState value,
          $Res Function(TreeGroupsSettingsState) then) =
      _$TreeGroupsSettingsStateCopyWithImpl<$Res, TreeGroupsSettingsState>;
  @useResult
  $Res call({List<TreeGroup> draft, bool saving, bool isEditing});
}

/// @nodoc
class _$TreeGroupsSettingsStateCopyWithImpl<$Res,
        $Val extends TreeGroupsSettingsState>
    implements $TreeGroupsSettingsStateCopyWith<$Res> {
  _$TreeGroupsSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? draft = null,
    Object? saving = null,
    Object? isEditing = null,
  }) {
    return _then(_value.copyWith(
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as List<TreeGroup>,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeGroupsSettingsStateImplCopyWith<$Res>
    implements $TreeGroupsSettingsStateCopyWith<$Res> {
  factory _$$TreeGroupsSettingsStateImplCopyWith(
          _$TreeGroupsSettingsStateImpl value,
          $Res Function(_$TreeGroupsSettingsStateImpl) then) =
      __$$TreeGroupsSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TreeGroup> draft, bool saving, bool isEditing});
}

/// @nodoc
class __$$TreeGroupsSettingsStateImplCopyWithImpl<$Res>
    extends _$TreeGroupsSettingsStateCopyWithImpl<$Res,
        _$TreeGroupsSettingsStateImpl>
    implements _$$TreeGroupsSettingsStateImplCopyWith<$Res> {
  __$$TreeGroupsSettingsStateImplCopyWithImpl(
      _$TreeGroupsSettingsStateImpl _value,
      $Res Function(_$TreeGroupsSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? draft = null,
    Object? saving = null,
    Object? isEditing = null,
  }) {
    return _then(_$TreeGroupsSettingsStateImpl(
      draft: null == draft
          ? _value._draft
          : draft // ignore: cast_nullable_to_non_nullable
              as List<TreeGroup>,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TreeGroupsSettingsStateImpl implements _TreeGroupsSettingsState {
  const _$TreeGroupsSettingsStateImpl(
      {required final List<TreeGroup> draft,
      this.saving = false,
      this.isEditing = false})
      : _draft = draft;

  final List<TreeGroup> _draft;
  @override
  List<TreeGroup> get draft {
    if (_draft is EqualUnmodifiableListView) return _draft;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_draft);
  }

  @override
  @JsonKey()
  final bool saving;

  /// When false, group rows are read-only; use [TreeGroupsSettingsEvent.editingSet] to enter edit mode.
  @override
  @JsonKey()
  final bool isEditing;

  @override
  String toString() {
    return 'TreeGroupsSettingsState(draft: $draft, saving: $saving, isEditing: $isEditing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeGroupsSettingsStateImpl &&
            const DeepCollectionEquality().equals(other._draft, _draft) &&
            (identical(other.saving, saving) || other.saving == saving) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_draft), saving, isEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeGroupsSettingsStateImplCopyWith<_$TreeGroupsSettingsStateImpl>
      get copyWith => __$$TreeGroupsSettingsStateImplCopyWithImpl<
          _$TreeGroupsSettingsStateImpl>(this, _$identity);
}

abstract class _TreeGroupsSettingsState implements TreeGroupsSettingsState {
  const factory _TreeGroupsSettingsState(
      {required final List<TreeGroup> draft,
      final bool saving,
      final bool isEditing}) = _$TreeGroupsSettingsStateImpl;

  @override
  List<TreeGroup> get draft;
  @override
  bool get saving;
  @override

  /// When false, group rows are read-only; use [TreeGroupsSettingsEvent.editingSet] to enter edit mode.
  bool get isEditing;
  @override
  @JsonKey(ignore: true)
  _$$TreeGroupsSettingsStateImplCopyWith<_$TreeGroupsSettingsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
