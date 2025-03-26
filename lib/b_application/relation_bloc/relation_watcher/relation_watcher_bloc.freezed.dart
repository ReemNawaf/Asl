// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relation_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RelationWatcherEvent {
  UniqueId get treeId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId nodeId) getAllRelations,
    required TResult Function(UniqueId treeId, UniqueId id) getRelation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId nodeId)? getAllRelations,
    TResult? Function(UniqueId treeId, UniqueId id)? getRelation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId nodeId)? getAllRelations,
    TResult Function(UniqueId treeId, UniqueId id)? getRelation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllRelation value) getAllRelations,
    required TResult Function(_GetRelation value) getRelation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllRelation value)? getAllRelations,
    TResult? Function(_GetRelation value)? getRelation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllRelation value)? getAllRelations,
    TResult Function(_GetRelation value)? getRelation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RelationWatcherEventCopyWith<RelationWatcherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationWatcherEventCopyWith<$Res> {
  factory $RelationWatcherEventCopyWith(RelationWatcherEvent value,
          $Res Function(RelationWatcherEvent) then) =
      _$RelationWatcherEventCopyWithImpl<$Res, RelationWatcherEvent>;
  @useResult
  $Res call({UniqueId treeId});
}

/// @nodoc
class _$RelationWatcherEventCopyWithImpl<$Res,
        $Val extends RelationWatcherEvent>
    implements $RelationWatcherEventCopyWith<$Res> {
  _$RelationWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
  }) {
    return _then(_value.copyWith(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WatchAllRelationImplCopyWith<$Res>
    implements $RelationWatcherEventCopyWith<$Res> {
  factory _$$WatchAllRelationImplCopyWith(_$WatchAllRelationImpl value,
          $Res Function(_$WatchAllRelationImpl) then) =
      __$$WatchAllRelationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId treeId, UniqueId nodeId});
}

/// @nodoc
class __$$WatchAllRelationImplCopyWithImpl<$Res>
    extends _$RelationWatcherEventCopyWithImpl<$Res, _$WatchAllRelationImpl>
    implements _$$WatchAllRelationImplCopyWith<$Res> {
  __$$WatchAllRelationImplCopyWithImpl(_$WatchAllRelationImpl _value,
      $Res Function(_$WatchAllRelationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? nodeId = null,
  }) {
    return _then(_$WatchAllRelationImpl(
      null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$WatchAllRelationImpl implements _WatchAllRelation {
  const _$WatchAllRelationImpl(this.treeId, this.nodeId);

  @override
  final UniqueId treeId;
  @override
  final UniqueId nodeId;

  @override
  String toString() {
    return 'RelationWatcherEvent.getAllRelations(treeId: $treeId, nodeId: $nodeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchAllRelationImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId, nodeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchAllRelationImplCopyWith<_$WatchAllRelationImpl> get copyWith =>
      __$$WatchAllRelationImplCopyWithImpl<_$WatchAllRelationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId nodeId) getAllRelations,
    required TResult Function(UniqueId treeId, UniqueId id) getRelation,
  }) {
    return getAllRelations(treeId, nodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId nodeId)? getAllRelations,
    TResult? Function(UniqueId treeId, UniqueId id)? getRelation,
  }) {
    return getAllRelations?.call(treeId, nodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId nodeId)? getAllRelations,
    TResult Function(UniqueId treeId, UniqueId id)? getRelation,
    required TResult orElse(),
  }) {
    if (getAllRelations != null) {
      return getAllRelations(treeId, nodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllRelation value) getAllRelations,
    required TResult Function(_GetRelation value) getRelation,
  }) {
    return getAllRelations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllRelation value)? getAllRelations,
    TResult? Function(_GetRelation value)? getRelation,
  }) {
    return getAllRelations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllRelation value)? getAllRelations,
    TResult Function(_GetRelation value)? getRelation,
    required TResult orElse(),
  }) {
    if (getAllRelations != null) {
      return getAllRelations(this);
    }
    return orElse();
  }
}

abstract class _WatchAllRelation implements RelationWatcherEvent {
  const factory _WatchAllRelation(
      final UniqueId treeId, final UniqueId nodeId) = _$WatchAllRelationImpl;

  @override
  UniqueId get treeId;
  UniqueId get nodeId;
  @override
  @JsonKey(ignore: true)
  _$$WatchAllRelationImplCopyWith<_$WatchAllRelationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRelationImplCopyWith<$Res>
    implements $RelationWatcherEventCopyWith<$Res> {
  factory _$$GetRelationImplCopyWith(
          _$GetRelationImpl value, $Res Function(_$GetRelationImpl) then) =
      __$$GetRelationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId treeId, UniqueId id});
}

/// @nodoc
class __$$GetRelationImplCopyWithImpl<$Res>
    extends _$RelationWatcherEventCopyWithImpl<$Res, _$GetRelationImpl>
    implements _$$GetRelationImplCopyWith<$Res> {
  __$$GetRelationImplCopyWithImpl(
      _$GetRelationImpl _value, $Res Function(_$GetRelationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? id = null,
  }) {
    return _then(_$GetRelationImpl(
      null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$GetRelationImpl implements _GetRelation {
  const _$GetRelationImpl(this.treeId, this.id);

  @override
  final UniqueId treeId;
  @override
  final UniqueId id;

  @override
  String toString() {
    return 'RelationWatcherEvent.getRelation(treeId: $treeId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRelationImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRelationImplCopyWith<_$GetRelationImpl> get copyWith =>
      __$$GetRelationImplCopyWithImpl<_$GetRelationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId nodeId) getAllRelations,
    required TResult Function(UniqueId treeId, UniqueId id) getRelation,
  }) {
    return getRelation(treeId, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId nodeId)? getAllRelations,
    TResult? Function(UniqueId treeId, UniqueId id)? getRelation,
  }) {
    return getRelation?.call(treeId, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId nodeId)? getAllRelations,
    TResult Function(UniqueId treeId, UniqueId id)? getRelation,
    required TResult orElse(),
  }) {
    if (getRelation != null) {
      return getRelation(treeId, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllRelation value) getAllRelations,
    required TResult Function(_GetRelation value) getRelation,
  }) {
    return getRelation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllRelation value)? getAllRelations,
    TResult? Function(_GetRelation value)? getRelation,
  }) {
    return getRelation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllRelation value)? getAllRelations,
    TResult Function(_GetRelation value)? getRelation,
    required TResult orElse(),
  }) {
    if (getRelation != null) {
      return getRelation(this);
    }
    return orElse();
  }
}

abstract class _GetRelation implements RelationWatcherEvent {
  const factory _GetRelation(final UniqueId treeId, final UniqueId id) =
      _$GetRelationImpl;

  @override
  UniqueId get treeId;
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$$GetRelationImplCopyWith<_$GetRelationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RelationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllRelationsInProgress,
    required TResult Function() getRelationInProgress,
    required TResult Function(List<Relation?> relation)
        gettingAllRelationsSuccess,
    required TResult Function(RelationFailure treeFailure)
        gettingAllRelationsFailure,
    required TResult Function(Relation relation) gettingRelationSuccess,
    required TResult Function(RelationFailure relationFailure)
        gettingRelationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllRelationsInProgress,
    TResult? Function()? getRelationInProgress,
    TResult? Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult? Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult? Function(Relation relation)? gettingRelationSuccess,
    TResult? Function(RelationFailure relationFailure)? gettingRelationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllRelationsInProgress,
    TResult Function()? getRelationInProgress,
    TResult Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult Function(Relation relation)? gettingRelationSuccess,
    TResult Function(RelationFailure relationFailure)? gettingRelationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) getAllRelationsInProgress,
    required TResult Function(_InProgress value) getRelationInProgress,
    required TResult Function(_LoadSuccess value) gettingAllRelationsSuccess,
    required TResult Function(_LoadFailure value) gettingAllRelationsFailure,
    required TResult Function(_gettingRelationSuccess value)
        gettingRelationSuccess,
    required TResult Function(_GettingRelationFailure value)
        gettingRelationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult? Function(_InProgress value)? getRelationInProgress,
    TResult? Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult? Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult? Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult? Function(_GettingRelationFailure value)? gettingRelationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult Function(_InProgress value)? getRelationInProgress,
    TResult Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult Function(_GettingRelationFailure value)? gettingRelationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationWatcherStateCopyWith<$Res> {
  factory $RelationWatcherStateCopyWith(RelationWatcherState value,
          $Res Function(RelationWatcherState) then) =
      _$RelationWatcherStateCopyWithImpl<$Res, RelationWatcherState>;
}

/// @nodoc
class _$RelationWatcherStateCopyWithImpl<$Res,
        $Val extends RelationWatcherState>
    implements $RelationWatcherStateCopyWith<$Res> {
  _$RelationWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RelationWatcherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RelationWatcherState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllRelationsInProgress,
    required TResult Function() getRelationInProgress,
    required TResult Function(List<Relation?> relation)
        gettingAllRelationsSuccess,
    required TResult Function(RelationFailure treeFailure)
        gettingAllRelationsFailure,
    required TResult Function(Relation relation) gettingRelationSuccess,
    required TResult Function(RelationFailure relationFailure)
        gettingRelationFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllRelationsInProgress,
    TResult? Function()? getRelationInProgress,
    TResult? Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult? Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult? Function(Relation relation)? gettingRelationSuccess,
    TResult? Function(RelationFailure relationFailure)? gettingRelationFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllRelationsInProgress,
    TResult Function()? getRelationInProgress,
    TResult Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult Function(Relation relation)? gettingRelationSuccess,
    TResult Function(RelationFailure relationFailure)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) getAllRelationsInProgress,
    required TResult Function(_InProgress value) getRelationInProgress,
    required TResult Function(_LoadSuccess value) gettingAllRelationsSuccess,
    required TResult Function(_LoadFailure value) gettingAllRelationsFailure,
    required TResult Function(_gettingRelationSuccess value)
        gettingRelationSuccess,
    required TResult Function(_GettingRelationFailure value)
        gettingRelationFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult? Function(_InProgress value)? getRelationInProgress,
    TResult? Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult? Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult? Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult? Function(_GettingRelationFailure value)? gettingRelationFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult Function(_InProgress value)? getRelationInProgress,
    TResult Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult Function(_GettingRelationFailure value)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RelationWatcherState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$RelationWatcherStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'RelationWatcherState.getAllRelationsInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllRelationsInProgress,
    required TResult Function() getRelationInProgress,
    required TResult Function(List<Relation?> relation)
        gettingAllRelationsSuccess,
    required TResult Function(RelationFailure treeFailure)
        gettingAllRelationsFailure,
    required TResult Function(Relation relation) gettingRelationSuccess,
    required TResult Function(RelationFailure relationFailure)
        gettingRelationFailure,
  }) {
    return getAllRelationsInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllRelationsInProgress,
    TResult? Function()? getRelationInProgress,
    TResult? Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult? Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult? Function(Relation relation)? gettingRelationSuccess,
    TResult? Function(RelationFailure relationFailure)? gettingRelationFailure,
  }) {
    return getAllRelationsInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllRelationsInProgress,
    TResult Function()? getRelationInProgress,
    TResult Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult Function(Relation relation)? gettingRelationSuccess,
    TResult Function(RelationFailure relationFailure)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (getAllRelationsInProgress != null) {
      return getAllRelationsInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) getAllRelationsInProgress,
    required TResult Function(_InProgress value) getRelationInProgress,
    required TResult Function(_LoadSuccess value) gettingAllRelationsSuccess,
    required TResult Function(_LoadFailure value) gettingAllRelationsFailure,
    required TResult Function(_gettingRelationSuccess value)
        gettingRelationSuccess,
    required TResult Function(_GettingRelationFailure value)
        gettingRelationFailure,
  }) {
    return getAllRelationsInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult? Function(_InProgress value)? getRelationInProgress,
    TResult? Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult? Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult? Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult? Function(_GettingRelationFailure value)? gettingRelationFailure,
  }) {
    return getAllRelationsInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult Function(_InProgress value)? getRelationInProgress,
    TResult Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult Function(_GettingRelationFailure value)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (getAllRelationsInProgress != null) {
      return getAllRelationsInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements RelationWatcherState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$RelationWatcherStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'RelationWatcherState.getRelationInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllRelationsInProgress,
    required TResult Function() getRelationInProgress,
    required TResult Function(List<Relation?> relation)
        gettingAllRelationsSuccess,
    required TResult Function(RelationFailure treeFailure)
        gettingAllRelationsFailure,
    required TResult Function(Relation relation) gettingRelationSuccess,
    required TResult Function(RelationFailure relationFailure)
        gettingRelationFailure,
  }) {
    return getRelationInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllRelationsInProgress,
    TResult? Function()? getRelationInProgress,
    TResult? Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult? Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult? Function(Relation relation)? gettingRelationSuccess,
    TResult? Function(RelationFailure relationFailure)? gettingRelationFailure,
  }) {
    return getRelationInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllRelationsInProgress,
    TResult Function()? getRelationInProgress,
    TResult Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult Function(Relation relation)? gettingRelationSuccess,
    TResult Function(RelationFailure relationFailure)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (getRelationInProgress != null) {
      return getRelationInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) getAllRelationsInProgress,
    required TResult Function(_InProgress value) getRelationInProgress,
    required TResult Function(_LoadSuccess value) gettingAllRelationsSuccess,
    required TResult Function(_LoadFailure value) gettingAllRelationsFailure,
    required TResult Function(_gettingRelationSuccess value)
        gettingRelationSuccess,
    required TResult Function(_GettingRelationFailure value)
        gettingRelationFailure,
  }) {
    return getRelationInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult? Function(_InProgress value)? getRelationInProgress,
    TResult? Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult? Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult? Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult? Function(_GettingRelationFailure value)? gettingRelationFailure,
  }) {
    return getRelationInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult Function(_InProgress value)? getRelationInProgress,
    TResult Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult Function(_GettingRelationFailure value)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (getRelationInProgress != null) {
      return getRelationInProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements RelationWatcherState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Relation?> relation});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$RelationWatcherStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relation = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == relation
          ? _value._relation
          : relation // ignore: cast_nullable_to_non_nullable
              as List<Relation?>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(final List<Relation?> relation)
      : _relation = relation;

  final List<Relation?> _relation;
  @override
  List<Relation?> get relation {
    if (_relation is EqualUnmodifiableListView) return _relation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relation);
  }

  @override
  String toString() {
    return 'RelationWatcherState.gettingAllRelationsSuccess(relation: $relation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality().equals(other._relation, _relation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_relation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllRelationsInProgress,
    required TResult Function() getRelationInProgress,
    required TResult Function(List<Relation?> relation)
        gettingAllRelationsSuccess,
    required TResult Function(RelationFailure treeFailure)
        gettingAllRelationsFailure,
    required TResult Function(Relation relation) gettingRelationSuccess,
    required TResult Function(RelationFailure relationFailure)
        gettingRelationFailure,
  }) {
    return gettingAllRelationsSuccess(relation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllRelationsInProgress,
    TResult? Function()? getRelationInProgress,
    TResult? Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult? Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult? Function(Relation relation)? gettingRelationSuccess,
    TResult? Function(RelationFailure relationFailure)? gettingRelationFailure,
  }) {
    return gettingAllRelationsSuccess?.call(relation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllRelationsInProgress,
    TResult Function()? getRelationInProgress,
    TResult Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult Function(Relation relation)? gettingRelationSuccess,
    TResult Function(RelationFailure relationFailure)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (gettingAllRelationsSuccess != null) {
      return gettingAllRelationsSuccess(relation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) getAllRelationsInProgress,
    required TResult Function(_InProgress value) getRelationInProgress,
    required TResult Function(_LoadSuccess value) gettingAllRelationsSuccess,
    required TResult Function(_LoadFailure value) gettingAllRelationsFailure,
    required TResult Function(_gettingRelationSuccess value)
        gettingRelationSuccess,
    required TResult Function(_GettingRelationFailure value)
        gettingRelationFailure,
  }) {
    return gettingAllRelationsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult? Function(_InProgress value)? getRelationInProgress,
    TResult? Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult? Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult? Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult? Function(_GettingRelationFailure value)? gettingRelationFailure,
  }) {
    return gettingAllRelationsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult Function(_InProgress value)? getRelationInProgress,
    TResult Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult Function(_GettingRelationFailure value)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (gettingAllRelationsSuccess != null) {
      return gettingAllRelationsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements RelationWatcherState {
  const factory _LoadSuccess(final List<Relation?> relation) =
      _$LoadSuccessImpl;

  List<Relation?> get relation;
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RelationFailure treeFailure});

  $RelationFailureCopyWith<$Res> get treeFailure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$RelationWatcherStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeFailure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == treeFailure
          ? _value.treeFailure
          : treeFailure // ignore: cast_nullable_to_non_nullable
              as RelationFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RelationFailureCopyWith<$Res> get treeFailure {
    return $RelationFailureCopyWith<$Res>(_value.treeFailure, (value) {
      return _then(_value.copyWith(treeFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.treeFailure);

  @override
  final RelationFailure treeFailure;

  @override
  String toString() {
    return 'RelationWatcherState.gettingAllRelationsFailure(treeFailure: $treeFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.treeFailure, treeFailure) ||
                other.treeFailure == treeFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllRelationsInProgress,
    required TResult Function() getRelationInProgress,
    required TResult Function(List<Relation?> relation)
        gettingAllRelationsSuccess,
    required TResult Function(RelationFailure treeFailure)
        gettingAllRelationsFailure,
    required TResult Function(Relation relation) gettingRelationSuccess,
    required TResult Function(RelationFailure relationFailure)
        gettingRelationFailure,
  }) {
    return gettingAllRelationsFailure(treeFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllRelationsInProgress,
    TResult? Function()? getRelationInProgress,
    TResult? Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult? Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult? Function(Relation relation)? gettingRelationSuccess,
    TResult? Function(RelationFailure relationFailure)? gettingRelationFailure,
  }) {
    return gettingAllRelationsFailure?.call(treeFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllRelationsInProgress,
    TResult Function()? getRelationInProgress,
    TResult Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult Function(Relation relation)? gettingRelationSuccess,
    TResult Function(RelationFailure relationFailure)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (gettingAllRelationsFailure != null) {
      return gettingAllRelationsFailure(treeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) getAllRelationsInProgress,
    required TResult Function(_InProgress value) getRelationInProgress,
    required TResult Function(_LoadSuccess value) gettingAllRelationsSuccess,
    required TResult Function(_LoadFailure value) gettingAllRelationsFailure,
    required TResult Function(_gettingRelationSuccess value)
        gettingRelationSuccess,
    required TResult Function(_GettingRelationFailure value)
        gettingRelationFailure,
  }) {
    return gettingAllRelationsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult? Function(_InProgress value)? getRelationInProgress,
    TResult? Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult? Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult? Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult? Function(_GettingRelationFailure value)? gettingRelationFailure,
  }) {
    return gettingAllRelationsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult Function(_InProgress value)? getRelationInProgress,
    TResult Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult Function(_GettingRelationFailure value)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (gettingAllRelationsFailure != null) {
      return gettingAllRelationsFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements RelationWatcherState {
  const factory _LoadFailure(final RelationFailure treeFailure) =
      _$LoadFailureImpl;

  RelationFailure get treeFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$gettingRelationSuccessImplCopyWith<$Res> {
  factory _$$gettingRelationSuccessImplCopyWith(
          _$gettingRelationSuccessImpl value,
          $Res Function(_$gettingRelationSuccessImpl) then) =
      __$$gettingRelationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Relation relation});

  $RelationCopyWith<$Res> get relation;
}

/// @nodoc
class __$$gettingRelationSuccessImplCopyWithImpl<$Res>
    extends _$RelationWatcherStateCopyWithImpl<$Res,
        _$gettingRelationSuccessImpl>
    implements _$$gettingRelationSuccessImplCopyWith<$Res> {
  __$$gettingRelationSuccessImplCopyWithImpl(
      _$gettingRelationSuccessImpl _value,
      $Res Function(_$gettingRelationSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relation = null,
  }) {
    return _then(_$gettingRelationSuccessImpl(
      null == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as Relation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RelationCopyWith<$Res> get relation {
    return $RelationCopyWith<$Res>(_value.relation, (value) {
      return _then(_value.copyWith(relation: value));
    });
  }
}

/// @nodoc

class _$gettingRelationSuccessImpl implements _gettingRelationSuccess {
  const _$gettingRelationSuccessImpl(this.relation);

  @override
  final Relation relation;

  @override
  String toString() {
    return 'RelationWatcherState.gettingRelationSuccess(relation: $relation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$gettingRelationSuccessImpl &&
            (identical(other.relation, relation) ||
                other.relation == relation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$gettingRelationSuccessImplCopyWith<_$gettingRelationSuccessImpl>
      get copyWith => __$$gettingRelationSuccessImplCopyWithImpl<
          _$gettingRelationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllRelationsInProgress,
    required TResult Function() getRelationInProgress,
    required TResult Function(List<Relation?> relation)
        gettingAllRelationsSuccess,
    required TResult Function(RelationFailure treeFailure)
        gettingAllRelationsFailure,
    required TResult Function(Relation relation) gettingRelationSuccess,
    required TResult Function(RelationFailure relationFailure)
        gettingRelationFailure,
  }) {
    return gettingRelationSuccess(relation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllRelationsInProgress,
    TResult? Function()? getRelationInProgress,
    TResult? Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult? Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult? Function(Relation relation)? gettingRelationSuccess,
    TResult? Function(RelationFailure relationFailure)? gettingRelationFailure,
  }) {
    return gettingRelationSuccess?.call(relation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllRelationsInProgress,
    TResult Function()? getRelationInProgress,
    TResult Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult Function(Relation relation)? gettingRelationSuccess,
    TResult Function(RelationFailure relationFailure)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (gettingRelationSuccess != null) {
      return gettingRelationSuccess(relation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) getAllRelationsInProgress,
    required TResult Function(_InProgress value) getRelationInProgress,
    required TResult Function(_LoadSuccess value) gettingAllRelationsSuccess,
    required TResult Function(_LoadFailure value) gettingAllRelationsFailure,
    required TResult Function(_gettingRelationSuccess value)
        gettingRelationSuccess,
    required TResult Function(_GettingRelationFailure value)
        gettingRelationFailure,
  }) {
    return gettingRelationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult? Function(_InProgress value)? getRelationInProgress,
    TResult? Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult? Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult? Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult? Function(_GettingRelationFailure value)? gettingRelationFailure,
  }) {
    return gettingRelationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult Function(_InProgress value)? getRelationInProgress,
    TResult Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult Function(_GettingRelationFailure value)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (gettingRelationSuccess != null) {
      return gettingRelationSuccess(this);
    }
    return orElse();
  }
}

abstract class _gettingRelationSuccess implements RelationWatcherState {
  const factory _gettingRelationSuccess(final Relation relation) =
      _$gettingRelationSuccessImpl;

  Relation get relation;
  @JsonKey(ignore: true)
  _$$gettingRelationSuccessImplCopyWith<_$gettingRelationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GettingRelationFailureImplCopyWith<$Res> {
  factory _$$GettingRelationFailureImplCopyWith(
          _$GettingRelationFailureImpl value,
          $Res Function(_$GettingRelationFailureImpl) then) =
      __$$GettingRelationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RelationFailure relationFailure});

  $RelationFailureCopyWith<$Res> get relationFailure;
}

/// @nodoc
class __$$GettingRelationFailureImplCopyWithImpl<$Res>
    extends _$RelationWatcherStateCopyWithImpl<$Res,
        _$GettingRelationFailureImpl>
    implements _$$GettingRelationFailureImplCopyWith<$Res> {
  __$$GettingRelationFailureImplCopyWithImpl(
      _$GettingRelationFailureImpl _value,
      $Res Function(_$GettingRelationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relationFailure = null,
  }) {
    return _then(_$GettingRelationFailureImpl(
      null == relationFailure
          ? _value.relationFailure
          : relationFailure // ignore: cast_nullable_to_non_nullable
              as RelationFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RelationFailureCopyWith<$Res> get relationFailure {
    return $RelationFailureCopyWith<$Res>(_value.relationFailure, (value) {
      return _then(_value.copyWith(relationFailure: value));
    });
  }
}

/// @nodoc

class _$GettingRelationFailureImpl implements _GettingRelationFailure {
  const _$GettingRelationFailureImpl(this.relationFailure);

  @override
  final RelationFailure relationFailure;

  @override
  String toString() {
    return 'RelationWatcherState.gettingRelationFailure(relationFailure: $relationFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingRelationFailureImpl &&
            (identical(other.relationFailure, relationFailure) ||
                other.relationFailure == relationFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relationFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GettingRelationFailureImplCopyWith<_$GettingRelationFailureImpl>
      get copyWith => __$$GettingRelationFailureImplCopyWithImpl<
          _$GettingRelationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllRelationsInProgress,
    required TResult Function() getRelationInProgress,
    required TResult Function(List<Relation?> relation)
        gettingAllRelationsSuccess,
    required TResult Function(RelationFailure treeFailure)
        gettingAllRelationsFailure,
    required TResult Function(Relation relation) gettingRelationSuccess,
    required TResult Function(RelationFailure relationFailure)
        gettingRelationFailure,
  }) {
    return gettingRelationFailure(relationFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllRelationsInProgress,
    TResult? Function()? getRelationInProgress,
    TResult? Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult? Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult? Function(Relation relation)? gettingRelationSuccess,
    TResult? Function(RelationFailure relationFailure)? gettingRelationFailure,
  }) {
    return gettingRelationFailure?.call(relationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllRelationsInProgress,
    TResult Function()? getRelationInProgress,
    TResult Function(List<Relation?> relation)? gettingAllRelationsSuccess,
    TResult Function(RelationFailure treeFailure)? gettingAllRelationsFailure,
    TResult Function(Relation relation)? gettingRelationSuccess,
    TResult Function(RelationFailure relationFailure)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (gettingRelationFailure != null) {
      return gettingRelationFailure(relationFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) getAllRelationsInProgress,
    required TResult Function(_InProgress value) getRelationInProgress,
    required TResult Function(_LoadSuccess value) gettingAllRelationsSuccess,
    required TResult Function(_LoadFailure value) gettingAllRelationsFailure,
    required TResult Function(_gettingRelationSuccess value)
        gettingRelationSuccess,
    required TResult Function(_GettingRelationFailure value)
        gettingRelationFailure,
  }) {
    return gettingRelationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult? Function(_InProgress value)? getRelationInProgress,
    TResult? Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult? Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult? Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult? Function(_GettingRelationFailure value)? gettingRelationFailure,
  }) {
    return gettingRelationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? getAllRelationsInProgress,
    TResult Function(_InProgress value)? getRelationInProgress,
    TResult Function(_LoadSuccess value)? gettingAllRelationsSuccess,
    TResult Function(_LoadFailure value)? gettingAllRelationsFailure,
    TResult Function(_gettingRelationSuccess value)? gettingRelationSuccess,
    TResult Function(_GettingRelationFailure value)? gettingRelationFailure,
    required TResult orElse(),
  }) {
    if (gettingRelationFailure != null) {
      return gettingRelationFailure(this);
    }
    return orElse();
  }
}

abstract class _GettingRelationFailure implements RelationWatcherState {
  const factory _GettingRelationFailure(final RelationFailure relationFailure) =
      _$GettingRelationFailureImpl;

  RelationFailure get relationFailure;
  @JsonKey(ignore: true)
  _$$GettingRelationFailureImplCopyWith<_$GettingRelationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
