// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreeWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTrees,
    required TResult Function(UniqueId treeId) getTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTrees,
    TResult? Function(UniqueId treeId)? getTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTrees,
    TResult Function(UniqueId treeId)? getTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTrees value) getAllTrees,
    required TResult Function(_GetTree value) getTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTrees value)? getAllTrees,
    TResult? Function(_GetTree value)? getTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTrees value)? getAllTrees,
    TResult Function(_GetTree value)? getTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeWatcherEventCopyWith<$Res> {
  factory $TreeWatcherEventCopyWith(
          TreeWatcherEvent value, $Res Function(TreeWatcherEvent) then) =
      _$TreeWatcherEventCopyWithImpl<$Res, TreeWatcherEvent>;
}

/// @nodoc
class _$TreeWatcherEventCopyWithImpl<$Res, $Val extends TreeWatcherEvent>
    implements $TreeWatcherEventCopyWith<$Res> {
  _$TreeWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllTreesImplCopyWith<$Res> {
  factory _$$GetAllTreesImplCopyWith(
          _$GetAllTreesImpl value, $Res Function(_$GetAllTreesImpl) then) =
      __$$GetAllTreesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllTreesImplCopyWithImpl<$Res>
    extends _$TreeWatcherEventCopyWithImpl<$Res, _$GetAllTreesImpl>
    implements _$$GetAllTreesImplCopyWith<$Res> {
  __$$GetAllTreesImplCopyWithImpl(
      _$GetAllTreesImpl _value, $Res Function(_$GetAllTreesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllTreesImpl implements _GetAllTrees {
  const _$GetAllTreesImpl();

  @override
  String toString() {
    return 'TreeWatcherEvent.getAllTrees()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllTreesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTrees,
    required TResult Function(UniqueId treeId) getTree,
  }) {
    return getAllTrees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTrees,
    TResult? Function(UniqueId treeId)? getTree,
  }) {
    return getAllTrees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTrees,
    TResult Function(UniqueId treeId)? getTree,
    required TResult orElse(),
  }) {
    if (getAllTrees != null) {
      return getAllTrees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTrees value) getAllTrees,
    required TResult Function(_GetTree value) getTree,
  }) {
    return getAllTrees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTrees value)? getAllTrees,
    TResult? Function(_GetTree value)? getTree,
  }) {
    return getAllTrees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTrees value)? getAllTrees,
    TResult Function(_GetTree value)? getTree,
    required TResult orElse(),
  }) {
    if (getAllTrees != null) {
      return getAllTrees(this);
    }
    return orElse();
  }
}

abstract class _GetAllTrees implements TreeWatcherEvent {
  const factory _GetAllTrees() = _$GetAllTreesImpl;
}

/// @nodoc
abstract class _$$GetTreeImplCopyWith<$Res> {
  factory _$$GetTreeImplCopyWith(
          _$GetTreeImpl value, $Res Function(_$GetTreeImpl) then) =
      __$$GetTreeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId treeId});
}

/// @nodoc
class __$$GetTreeImplCopyWithImpl<$Res>
    extends _$TreeWatcherEventCopyWithImpl<$Res, _$GetTreeImpl>
    implements _$$GetTreeImplCopyWith<$Res> {
  __$$GetTreeImplCopyWithImpl(
      _$GetTreeImpl _value, $Res Function(_$GetTreeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
  }) {
    return _then(_$GetTreeImpl(
      null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$GetTreeImpl implements _GetTree {
  const _$GetTreeImpl(this.treeId);

  @override
  final UniqueId treeId;

  @override
  String toString() {
    return 'TreeWatcherEvent.getTree(treeId: $treeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTreeImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTreeImplCopyWith<_$GetTreeImpl> get copyWith =>
      __$$GetTreeImplCopyWithImpl<_$GetTreeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTrees,
    required TResult Function(UniqueId treeId) getTree,
  }) {
    return getTree(treeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTrees,
    TResult? Function(UniqueId treeId)? getTree,
  }) {
    return getTree?.call(treeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTrees,
    TResult Function(UniqueId treeId)? getTree,
    required TResult orElse(),
  }) {
    if (getTree != null) {
      return getTree(treeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTrees value) getAllTrees,
    required TResult Function(_GetTree value) getTree,
  }) {
    return getTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTrees value)? getAllTrees,
    TResult? Function(_GetTree value)? getTree,
  }) {
    return getTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTrees value)? getAllTrees,
    TResult Function(_GetTree value)? getTree,
    required TResult orElse(),
  }) {
    if (getTree != null) {
      return getTree(this);
    }
    return orElse();
  }
}

abstract class _GetTree implements TreeWatcherEvent {
  const factory _GetTree(final UniqueId treeId) = _$GetTreeImpl;

  UniqueId get treeId;
  @JsonKey(ignore: true)
  _$$GetTreeImplCopyWith<_$GetTreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TreeWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(List<Tree> trees) loadSuccess,
    required TResult Function(TreeFailure treeFailure) loadFailure,
    required TResult Function(Tree tree) gettingTreeSuccess,
    required TResult Function(TreeFailure purchaseFailure) gettingTreeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(List<Tree> trees)? loadSuccess,
    TResult? Function(TreeFailure treeFailure)? loadFailure,
    TResult? Function(Tree tree)? gettingTreeSuccess,
    TResult? Function(TreeFailure purchaseFailure)? gettingTreeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(List<Tree> trees)? loadSuccess,
    TResult Function(TreeFailure treeFailure)? loadFailure,
    TResult Function(Tree tree)? gettingTreeSuccess,
    TResult Function(TreeFailure purchaseFailure)? gettingTreeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GettingTreeSuccess value) gettingTreeSuccess,
    required TResult Function(_GettingTreeFailure value) gettingTreeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult? Function(_GettingTreeFailure value)? gettingTreeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult Function(_GettingTreeFailure value)? gettingTreeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeWatcherStateCopyWith<$Res> {
  factory $TreeWatcherStateCopyWith(
          TreeWatcherState value, $Res Function(TreeWatcherState) then) =
      _$TreeWatcherStateCopyWithImpl<$Res, TreeWatcherState>;
}

/// @nodoc
class _$TreeWatcherStateCopyWithImpl<$Res, $Val extends TreeWatcherState>
    implements $TreeWatcherStateCopyWith<$Res> {
  _$TreeWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$TreeWatcherStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TreeWatcherState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(List<Tree> trees) loadSuccess,
    required TResult Function(TreeFailure treeFailure) loadFailure,
    required TResult Function(Tree tree) gettingTreeSuccess,
    required TResult Function(TreeFailure purchaseFailure) gettingTreeFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(List<Tree> trees)? loadSuccess,
    TResult? Function(TreeFailure treeFailure)? loadFailure,
    TResult? Function(Tree tree)? gettingTreeSuccess,
    TResult? Function(TreeFailure purchaseFailure)? gettingTreeFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(List<Tree> trees)? loadSuccess,
    TResult Function(TreeFailure treeFailure)? loadFailure,
    TResult Function(Tree tree)? gettingTreeSuccess,
    TResult Function(TreeFailure purchaseFailure)? gettingTreeFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GettingTreeSuccess value) gettingTreeSuccess,
    required TResult Function(_GettingTreeFailure value) gettingTreeFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult? Function(_GettingTreeFailure value)? gettingTreeFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult Function(_GettingTreeFailure value)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TreeWatcherState {
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
    extends _$TreeWatcherStateCopyWithImpl<$Res, _$LoadInProgressImpl>
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
    return 'TreeWatcherState.loadInProgress()';
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
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(List<Tree> trees) loadSuccess,
    required TResult Function(TreeFailure treeFailure) loadFailure,
    required TResult Function(Tree tree) gettingTreeSuccess,
    required TResult Function(TreeFailure purchaseFailure) gettingTreeFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(List<Tree> trees)? loadSuccess,
    TResult? Function(TreeFailure treeFailure)? loadFailure,
    TResult? Function(Tree tree)? gettingTreeSuccess,
    TResult? Function(TreeFailure purchaseFailure)? gettingTreeFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(List<Tree> trees)? loadSuccess,
    TResult Function(TreeFailure treeFailure)? loadFailure,
    TResult Function(Tree tree)? gettingTreeSuccess,
    TResult Function(TreeFailure purchaseFailure)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GettingTreeSuccess value) gettingTreeSuccess,
    required TResult Function(_GettingTreeFailure value) gettingTreeFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult? Function(_GettingTreeFailure value)? gettingTreeFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult Function(_GettingTreeFailure value)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TreeWatcherState {
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
    extends _$TreeWatcherStateCopyWithImpl<$Res, _$InProgressImpl>
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
    return 'TreeWatcherState.inProgress()';
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
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(List<Tree> trees) loadSuccess,
    required TResult Function(TreeFailure treeFailure) loadFailure,
    required TResult Function(Tree tree) gettingTreeSuccess,
    required TResult Function(TreeFailure purchaseFailure) gettingTreeFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(List<Tree> trees)? loadSuccess,
    TResult? Function(TreeFailure treeFailure)? loadFailure,
    TResult? Function(Tree tree)? gettingTreeSuccess,
    TResult? Function(TreeFailure purchaseFailure)? gettingTreeFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(List<Tree> trees)? loadSuccess,
    TResult Function(TreeFailure treeFailure)? loadFailure,
    TResult Function(Tree tree)? gettingTreeSuccess,
    TResult Function(TreeFailure purchaseFailure)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GettingTreeSuccess value) gettingTreeSuccess,
    required TResult Function(_GettingTreeFailure value) gettingTreeFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult? Function(_GettingTreeFailure value)? gettingTreeFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult Function(_GettingTreeFailure value)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements TreeWatcherState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Tree> trees});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$TreeWatcherStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trees = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == trees
          ? _value._trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(final List<Tree> trees) : _trees = trees;

  final List<Tree> _trees;
  @override
  List<Tree> get trees {
    if (_trees is EqualUnmodifiableListView) return _trees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trees);
  }

  @override
  String toString() {
    return 'TreeWatcherState.loadSuccess(trees: $trees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality().equals(other._trees, _trees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(List<Tree> trees) loadSuccess,
    required TResult Function(TreeFailure treeFailure) loadFailure,
    required TResult Function(Tree tree) gettingTreeSuccess,
    required TResult Function(TreeFailure purchaseFailure) gettingTreeFailure,
  }) {
    return loadSuccess(trees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(List<Tree> trees)? loadSuccess,
    TResult? Function(TreeFailure treeFailure)? loadFailure,
    TResult? Function(Tree tree)? gettingTreeSuccess,
    TResult? Function(TreeFailure purchaseFailure)? gettingTreeFailure,
  }) {
    return loadSuccess?.call(trees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(List<Tree> trees)? loadSuccess,
    TResult Function(TreeFailure treeFailure)? loadFailure,
    TResult Function(Tree tree)? gettingTreeSuccess,
    TResult Function(TreeFailure purchaseFailure)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(trees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GettingTreeSuccess value) gettingTreeSuccess,
    required TResult Function(_GettingTreeFailure value) gettingTreeFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult? Function(_GettingTreeFailure value)? gettingTreeFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult Function(_GettingTreeFailure value)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements TreeWatcherState {
  const factory _LoadSuccess(final List<Tree> trees) = _$LoadSuccessImpl;

  List<Tree> get trees;
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
  $Res call({TreeFailure treeFailure});

  $TreeFailureCopyWith<$Res> get treeFailure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$TreeWatcherStateCopyWithImpl<$Res, _$LoadFailureImpl>
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
              as TreeFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeFailureCopyWith<$Res> get treeFailure {
    return $TreeFailureCopyWith<$Res>(_value.treeFailure, (value) {
      return _then(_value.copyWith(treeFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.treeFailure);

  @override
  final TreeFailure treeFailure;

  @override
  String toString() {
    return 'TreeWatcherState.loadFailure(treeFailure: $treeFailure)';
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
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(List<Tree> trees) loadSuccess,
    required TResult Function(TreeFailure treeFailure) loadFailure,
    required TResult Function(Tree tree) gettingTreeSuccess,
    required TResult Function(TreeFailure purchaseFailure) gettingTreeFailure,
  }) {
    return loadFailure(treeFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(List<Tree> trees)? loadSuccess,
    TResult? Function(TreeFailure treeFailure)? loadFailure,
    TResult? Function(Tree tree)? gettingTreeSuccess,
    TResult? Function(TreeFailure purchaseFailure)? gettingTreeFailure,
  }) {
    return loadFailure?.call(treeFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(List<Tree> trees)? loadSuccess,
    TResult Function(TreeFailure treeFailure)? loadFailure,
    TResult Function(Tree tree)? gettingTreeSuccess,
    TResult Function(TreeFailure purchaseFailure)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(treeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GettingTreeSuccess value) gettingTreeSuccess,
    required TResult Function(_GettingTreeFailure value) gettingTreeFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult? Function(_GettingTreeFailure value)? gettingTreeFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult Function(_GettingTreeFailure value)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements TreeWatcherState {
  const factory _LoadFailure(final TreeFailure treeFailure) = _$LoadFailureImpl;

  TreeFailure get treeFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GettingTreeSuccessImplCopyWith<$Res> {
  factory _$$GettingTreeSuccessImplCopyWith(_$GettingTreeSuccessImpl value,
          $Res Function(_$GettingTreeSuccessImpl) then) =
      __$$GettingTreeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tree tree});

  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class __$$GettingTreeSuccessImplCopyWithImpl<$Res>
    extends _$TreeWatcherStateCopyWithImpl<$Res, _$GettingTreeSuccessImpl>
    implements _$$GettingTreeSuccessImplCopyWith<$Res> {
  __$$GettingTreeSuccessImplCopyWithImpl(_$GettingTreeSuccessImpl _value,
      $Res Function(_$GettingTreeSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
  }) {
    return _then(_$GettingTreeSuccessImpl(
      null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeCopyWith<$Res> get tree {
    return $TreeCopyWith<$Res>(_value.tree, (value) {
      return _then(_value.copyWith(tree: value));
    });
  }
}

/// @nodoc

class _$GettingTreeSuccessImpl implements _GettingTreeSuccess {
  const _$GettingTreeSuccessImpl(this.tree);

  @override
  final Tree tree;

  @override
  String toString() {
    return 'TreeWatcherState.gettingTreeSuccess(tree: $tree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingTreeSuccessImpl &&
            (identical(other.tree, tree) || other.tree == tree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tree);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GettingTreeSuccessImplCopyWith<_$GettingTreeSuccessImpl> get copyWith =>
      __$$GettingTreeSuccessImplCopyWithImpl<_$GettingTreeSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(List<Tree> trees) loadSuccess,
    required TResult Function(TreeFailure treeFailure) loadFailure,
    required TResult Function(Tree tree) gettingTreeSuccess,
    required TResult Function(TreeFailure purchaseFailure) gettingTreeFailure,
  }) {
    return gettingTreeSuccess(tree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(List<Tree> trees)? loadSuccess,
    TResult? Function(TreeFailure treeFailure)? loadFailure,
    TResult? Function(Tree tree)? gettingTreeSuccess,
    TResult? Function(TreeFailure purchaseFailure)? gettingTreeFailure,
  }) {
    return gettingTreeSuccess?.call(tree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(List<Tree> trees)? loadSuccess,
    TResult Function(TreeFailure treeFailure)? loadFailure,
    TResult Function(Tree tree)? gettingTreeSuccess,
    TResult Function(TreeFailure purchaseFailure)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (gettingTreeSuccess != null) {
      return gettingTreeSuccess(tree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GettingTreeSuccess value) gettingTreeSuccess,
    required TResult Function(_GettingTreeFailure value) gettingTreeFailure,
  }) {
    return gettingTreeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult? Function(_GettingTreeFailure value)? gettingTreeFailure,
  }) {
    return gettingTreeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult Function(_GettingTreeFailure value)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (gettingTreeSuccess != null) {
      return gettingTreeSuccess(this);
    }
    return orElse();
  }
}

abstract class _GettingTreeSuccess implements TreeWatcherState {
  const factory _GettingTreeSuccess(final Tree tree) = _$GettingTreeSuccessImpl;

  Tree get tree;
  @JsonKey(ignore: true)
  _$$GettingTreeSuccessImplCopyWith<_$GettingTreeSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GettingTreeFailureImplCopyWith<$Res> {
  factory _$$GettingTreeFailureImplCopyWith(_$GettingTreeFailureImpl value,
          $Res Function(_$GettingTreeFailureImpl) then) =
      __$$GettingTreeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TreeFailure purchaseFailure});

  $TreeFailureCopyWith<$Res> get purchaseFailure;
}

/// @nodoc
class __$$GettingTreeFailureImplCopyWithImpl<$Res>
    extends _$TreeWatcherStateCopyWithImpl<$Res, _$GettingTreeFailureImpl>
    implements _$$GettingTreeFailureImplCopyWith<$Res> {
  __$$GettingTreeFailureImplCopyWithImpl(_$GettingTreeFailureImpl _value,
      $Res Function(_$GettingTreeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseFailure = null,
  }) {
    return _then(_$GettingTreeFailureImpl(
      null == purchaseFailure
          ? _value.purchaseFailure
          : purchaseFailure // ignore: cast_nullable_to_non_nullable
              as TreeFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeFailureCopyWith<$Res> get purchaseFailure {
    return $TreeFailureCopyWith<$Res>(_value.purchaseFailure, (value) {
      return _then(_value.copyWith(purchaseFailure: value));
    });
  }
}

/// @nodoc

class _$GettingTreeFailureImpl implements _GettingTreeFailure {
  const _$GettingTreeFailureImpl(this.purchaseFailure);

  @override
  final TreeFailure purchaseFailure;

  @override
  String toString() {
    return 'TreeWatcherState.gettingTreeFailure(purchaseFailure: $purchaseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingTreeFailureImpl &&
            (identical(other.purchaseFailure, purchaseFailure) ||
                other.purchaseFailure == purchaseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GettingTreeFailureImplCopyWith<_$GettingTreeFailureImpl> get copyWith =>
      __$$GettingTreeFailureImplCopyWithImpl<_$GettingTreeFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(List<Tree> trees) loadSuccess,
    required TResult Function(TreeFailure treeFailure) loadFailure,
    required TResult Function(Tree tree) gettingTreeSuccess,
    required TResult Function(TreeFailure purchaseFailure) gettingTreeFailure,
  }) {
    return gettingTreeFailure(purchaseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(List<Tree> trees)? loadSuccess,
    TResult? Function(TreeFailure treeFailure)? loadFailure,
    TResult? Function(Tree tree)? gettingTreeSuccess,
    TResult? Function(TreeFailure purchaseFailure)? gettingTreeFailure,
  }) {
    return gettingTreeFailure?.call(purchaseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(List<Tree> trees)? loadSuccess,
    TResult Function(TreeFailure treeFailure)? loadFailure,
    TResult Function(Tree tree)? gettingTreeSuccess,
    TResult Function(TreeFailure purchaseFailure)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (gettingTreeFailure != null) {
      return gettingTreeFailure(purchaseFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GettingTreeSuccess value) gettingTreeSuccess,
    required TResult Function(_GettingTreeFailure value) gettingTreeFailure,
  }) {
    return gettingTreeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult? Function(_GettingTreeFailure value)? gettingTreeFailure,
  }) {
    return gettingTreeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingTreeSuccess value)? gettingTreeSuccess,
    TResult Function(_GettingTreeFailure value)? gettingTreeFailure,
    required TResult orElse(),
  }) {
    if (gettingTreeFailure != null) {
      return gettingTreeFailure(this);
    }
    return orElse();
  }
}

abstract class _GettingTreeFailure implements TreeWatcherState {
  const factory _GettingTreeFailure(final TreeFailure purchaseFailure) =
      _$GettingTreeFailureImpl;

  TreeFailure get purchaseFailure;
  @JsonKey(ignore: true)
  _$$GettingTreeFailureImplCopyWith<_$GettingTreeFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
