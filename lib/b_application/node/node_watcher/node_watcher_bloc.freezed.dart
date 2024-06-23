// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NodeWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree tree) watchAllStarted,
    required TResult Function(UniqueId treeId, UniqueId nodeId) getNode,
    required TResult Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)
        nodesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree tree)? watchAllStarted,
    TResult? Function(UniqueId treeId, UniqueId nodeId)? getNode,
    TResult? Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)?
        nodesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree tree)? watchAllStarted,
    TResult Function(UniqueId treeId, UniqueId nodeId)? getNode,
    TResult Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)?
        nodesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_GetNode value) getNode,
    required TResult Function(_NodesReceived value) nodesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_GetNode value)? getNode,
    TResult? Function(_NodesReceived value)? nodesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_GetNode value)? getNode,
    TResult Function(_NodesReceived value)? nodesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeWatcherEventCopyWith<$Res> {
  factory $NodeWatcherEventCopyWith(
          NodeWatcherEvent value, $Res Function(NodeWatcherEvent) then) =
      _$NodeWatcherEventCopyWithImpl<$Res, NodeWatcherEvent>;
}

/// @nodoc
class _$NodeWatcherEventCopyWithImpl<$Res, $Val extends NodeWatcherEvent>
    implements $NodeWatcherEventCopyWith<$Res> {
  _$NodeWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WatchAllStartedImplCopyWith<$Res> {
  factory _$$WatchAllStartedImplCopyWith(_$WatchAllStartedImpl value,
          $Res Function(_$WatchAllStartedImpl) then) =
      __$$WatchAllStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tree tree});

  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class __$$WatchAllStartedImplCopyWithImpl<$Res>
    extends _$NodeWatcherEventCopyWithImpl<$Res, _$WatchAllStartedImpl>
    implements _$$WatchAllStartedImplCopyWith<$Res> {
  __$$WatchAllStartedImplCopyWithImpl(
      _$WatchAllStartedImpl _value, $Res Function(_$WatchAllStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
  }) {
    return _then(_$WatchAllStartedImpl(
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

class _$WatchAllStartedImpl implements _WatchAllStarted {
  const _$WatchAllStartedImpl(this.tree);

  @override
  final Tree tree;

  @override
  String toString() {
    return 'NodeWatcherEvent.watchAllStarted(tree: $tree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchAllStartedImpl &&
            (identical(other.tree, tree) || other.tree == tree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tree);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchAllStartedImplCopyWith<_$WatchAllStartedImpl> get copyWith =>
      __$$WatchAllStartedImplCopyWithImpl<_$WatchAllStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree tree) watchAllStarted,
    required TResult Function(UniqueId treeId, UniqueId nodeId) getNode,
    required TResult Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)
        nodesReceived,
  }) {
    return watchAllStarted(tree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree tree)? watchAllStarted,
    TResult? Function(UniqueId treeId, UniqueId nodeId)? getNode,
    TResult? Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)?
        nodesReceived,
  }) {
    return watchAllStarted?.call(tree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree tree)? watchAllStarted,
    TResult Function(UniqueId treeId, UniqueId nodeId)? getNode,
    TResult Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)?
        nodesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(tree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_GetNode value) getNode,
    required TResult Function(_NodesReceived value) nodesReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_GetNode value)? getNode,
    TResult? Function(_NodesReceived value)? nodesReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_GetNode value)? getNode,
    TResult Function(_NodesReceived value)? nodesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements NodeWatcherEvent {
  const factory _WatchAllStarted(final Tree tree) = _$WatchAllStartedImpl;

  Tree get tree;
  @JsonKey(ignore: true)
  _$$WatchAllStartedImplCopyWith<_$WatchAllStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNodeImplCopyWith<$Res> {
  factory _$$GetNodeImplCopyWith(
          _$GetNodeImpl value, $Res Function(_$GetNodeImpl) then) =
      __$$GetNodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId treeId, UniqueId nodeId});
}

/// @nodoc
class __$$GetNodeImplCopyWithImpl<$Res>
    extends _$NodeWatcherEventCopyWithImpl<$Res, _$GetNodeImpl>
    implements _$$GetNodeImplCopyWith<$Res> {
  __$$GetNodeImplCopyWithImpl(
      _$GetNodeImpl _value, $Res Function(_$GetNodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? nodeId = null,
  }) {
    return _then(_$GetNodeImpl(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$GetNodeImpl implements _GetNode {
  const _$GetNodeImpl({required this.treeId, required this.nodeId});

  @override
  final UniqueId treeId;
  @override
  final UniqueId nodeId;

  @override
  String toString() {
    return 'NodeWatcherEvent.getNode(treeId: $treeId, nodeId: $nodeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNodeImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId, nodeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNodeImplCopyWith<_$GetNodeImpl> get copyWith =>
      __$$GetNodeImplCopyWithImpl<_$GetNodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree tree) watchAllStarted,
    required TResult Function(UniqueId treeId, UniqueId nodeId) getNode,
    required TResult Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)
        nodesReceived,
  }) {
    return getNode(treeId, nodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree tree)? watchAllStarted,
    TResult? Function(UniqueId treeId, UniqueId nodeId)? getNode,
    TResult? Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)?
        nodesReceived,
  }) {
    return getNode?.call(treeId, nodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree tree)? watchAllStarted,
    TResult Function(UniqueId treeId, UniqueId nodeId)? getNode,
    TResult Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)?
        nodesReceived,
    required TResult orElse(),
  }) {
    if (getNode != null) {
      return getNode(treeId, nodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_GetNode value) getNode,
    required TResult Function(_NodesReceived value) nodesReceived,
  }) {
    return getNode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_GetNode value)? getNode,
    TResult? Function(_NodesReceived value)? nodesReceived,
  }) {
    return getNode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_GetNode value)? getNode,
    TResult Function(_NodesReceived value)? nodesReceived,
    required TResult orElse(),
  }) {
    if (getNode != null) {
      return getNode(this);
    }
    return orElse();
  }
}

abstract class _GetNode implements NodeWatcherEvent {
  const factory _GetNode(
      {required final UniqueId treeId,
      required final UniqueId nodeId}) = _$GetNodeImpl;

  UniqueId get treeId;
  UniqueId get nodeId;
  @JsonKey(ignore: true)
  _$$GetNodeImplCopyWith<_$GetNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NodesReceivedImplCopyWith<$Res> {
  factory _$$NodesReceivedImplCopyWith(
          _$NodesReceivedImpl value, $Res Function(_$NodesReceivedImpl) then) =
      __$$NodesReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree});

  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class __$$NodesReceivedImplCopyWithImpl<$Res>
    extends _$NodeWatcherEventCopyWithImpl<$Res, _$NodesReceivedImpl>
    implements _$$NodesReceivedImplCopyWith<$Res> {
  __$$NodesReceivedImplCopyWithImpl(
      _$NodesReceivedImpl _value, $Res Function(_$NodesReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrNodes = null,
    Object? tree = null,
  }) {
    return _then(_$NodesReceivedImpl(
      null == failureOrNodes
          ? _value.failureOrNodes
          : failureOrNodes // ignore: cast_nullable_to_non_nullable
              as Either<TNodeFailure, List<TNode>>,
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

class _$NodesReceivedImpl implements _NodesReceived {
  const _$NodesReceivedImpl(this.failureOrNodes, this.tree);

  @override
  final Either<TNodeFailure, List<TNode>> failureOrNodes;
  @override
  final Tree tree;

  @override
  String toString() {
    return 'NodeWatcherEvent.nodesReceived(failureOrNodes: $failureOrNodes, tree: $tree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodesReceivedImpl &&
            (identical(other.failureOrNodes, failureOrNodes) ||
                other.failureOrNodes == failureOrNodes) &&
            (identical(other.tree, tree) || other.tree == tree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrNodes, tree);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NodesReceivedImplCopyWith<_$NodesReceivedImpl> get copyWith =>
      __$$NodesReceivedImplCopyWithImpl<_$NodesReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree tree) watchAllStarted,
    required TResult Function(UniqueId treeId, UniqueId nodeId) getNode,
    required TResult Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)
        nodesReceived,
  }) {
    return nodesReceived(failureOrNodes, tree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree tree)? watchAllStarted,
    TResult? Function(UniqueId treeId, UniqueId nodeId)? getNode,
    TResult? Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)?
        nodesReceived,
  }) {
    return nodesReceived?.call(failureOrNodes, tree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree tree)? watchAllStarted,
    TResult Function(UniqueId treeId, UniqueId nodeId)? getNode,
    TResult Function(
            Either<TNodeFailure, List<TNode>> failureOrNodes, Tree tree)?
        nodesReceived,
    required TResult orElse(),
  }) {
    if (nodesReceived != null) {
      return nodesReceived(failureOrNodes, tree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_GetNode value) getNode,
    required TResult Function(_NodesReceived value) nodesReceived,
  }) {
    return nodesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_GetNode value)? getNode,
    TResult? Function(_NodesReceived value)? nodesReceived,
  }) {
    return nodesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_GetNode value)? getNode,
    TResult Function(_NodesReceived value)? nodesReceived,
    required TResult orElse(),
  }) {
    if (nodesReceived != null) {
      return nodesReceived(this);
    }
    return orElse();
  }
}

abstract class _NodesReceived implements NodeWatcherEvent {
  const factory _NodesReceived(
      final Either<TNodeFailure, List<TNode>> failureOrNodes,
      final Tree tree) = _$NodesReceivedImpl;

  Either<TNodeFailure, List<TNode>> get failureOrNodes;
  Tree get tree;
  @JsonKey(ignore: true)
  _$$NodesReceivedImplCopyWith<_$NodesReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NodeWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(Tree tree, List<TNode> nodes) loadSuccess,
    required TResult Function(TNodeFailure purchaseFailure) loadFailure,
    required TResult Function(TNode node) gettingNodeSuccess,
    required TResult Function(TNodeFailure purchaseFailure) gettingNodeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult? Function(TNode node)? gettingNodeSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult Function(TNode node)? gettingNodeSuccess,
    TResult Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
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
    required TResult Function(_GettingNodeSuccess value) gettingNodeSuccess,
    required TResult Function(_GettingNodeFailure value) gettingNodeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult? Function(_GettingNodeFailure value)? gettingNodeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult Function(_GettingNodeFailure value)? gettingNodeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeWatcherStateCopyWith<$Res> {
  factory $NodeWatcherStateCopyWith(
          NodeWatcherState value, $Res Function(NodeWatcherState) then) =
      _$NodeWatcherStateCopyWithImpl<$Res, NodeWatcherState>;
}

/// @nodoc
class _$NodeWatcherStateCopyWithImpl<$Res, $Val extends NodeWatcherState>
    implements $NodeWatcherStateCopyWith<$Res> {
  _$NodeWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$NodeWatcherStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'NodeWatcherState.initial()';
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
    required TResult Function(Tree tree, List<TNode> nodes) loadSuccess,
    required TResult Function(TNodeFailure purchaseFailure) loadFailure,
    required TResult Function(TNode node) gettingNodeSuccess,
    required TResult Function(TNodeFailure purchaseFailure) gettingNodeFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult? Function(TNode node)? gettingNodeSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult Function(TNode node)? gettingNodeSuccess,
    TResult Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
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
    required TResult Function(_GettingNodeSuccess value) gettingNodeSuccess,
    required TResult Function(_GettingNodeFailure value) gettingNodeFailure,
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
    TResult? Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult? Function(_GettingNodeFailure value)? gettingNodeFailure,
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
    TResult Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult Function(_GettingNodeFailure value)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NodeWatcherState {
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
    extends _$NodeWatcherStateCopyWithImpl<$Res, _$LoadInProgressImpl>
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
    return 'NodeWatcherState.loadInProgress()';
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
    required TResult Function(Tree tree, List<TNode> nodes) loadSuccess,
    required TResult Function(TNodeFailure purchaseFailure) loadFailure,
    required TResult Function(TNode node) gettingNodeSuccess,
    required TResult Function(TNodeFailure purchaseFailure) gettingNodeFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult? Function(TNode node)? gettingNodeSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult Function(TNode node)? gettingNodeSuccess,
    TResult Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
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
    required TResult Function(_GettingNodeSuccess value) gettingNodeSuccess,
    required TResult Function(_GettingNodeFailure value) gettingNodeFailure,
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
    TResult? Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult? Function(_GettingNodeFailure value)? gettingNodeFailure,
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
    TResult Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult Function(_GettingNodeFailure value)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements NodeWatcherState {
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
    extends _$NodeWatcherStateCopyWithImpl<$Res, _$InProgressImpl>
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
    return 'NodeWatcherState.inProgress()';
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
    required TResult Function(Tree tree, List<TNode> nodes) loadSuccess,
    required TResult Function(TNodeFailure purchaseFailure) loadFailure,
    required TResult Function(TNode node) gettingNodeSuccess,
    required TResult Function(TNodeFailure purchaseFailure) gettingNodeFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult? Function(TNode node)? gettingNodeSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult Function(TNode node)? gettingNodeSuccess,
    TResult Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
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
    required TResult Function(_GettingNodeSuccess value) gettingNodeSuccess,
    required TResult Function(_GettingNodeFailure value) gettingNodeFailure,
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
    TResult? Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult? Function(_GettingNodeFailure value)? gettingNodeFailure,
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
    TResult Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult Function(_GettingNodeFailure value)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements NodeWatcherState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tree tree, List<TNode> nodes});

  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$NodeWatcherStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
    Object? nodes = null,
  }) {
    return _then(_$LoadSuccessImpl(
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
      nodes: null == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<TNode>,
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

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(
      {required this.tree, required final List<TNode> nodes})
      : _nodes = nodes;

  @override
  final Tree tree;
  final List<TNode> _nodes;
  @override
  List<TNode> get nodes {
    if (_nodes is EqualUnmodifiableListView) return _nodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodes);
  }

  @override
  String toString() {
    return 'NodeWatcherState.loadSuccess(tree: $tree, nodes: $nodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            (identical(other.tree, tree) || other.tree == tree) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tree, const DeepCollectionEquality().hash(_nodes));

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
    required TResult Function(Tree tree, List<TNode> nodes) loadSuccess,
    required TResult Function(TNodeFailure purchaseFailure) loadFailure,
    required TResult Function(TNode node) gettingNodeSuccess,
    required TResult Function(TNodeFailure purchaseFailure) gettingNodeFailure,
  }) {
    return loadSuccess(tree, nodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult? Function(TNode node)? gettingNodeSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
  }) {
    return loadSuccess?.call(tree, nodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult Function(TNode node)? gettingNodeSuccess,
    TResult Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(tree, nodes);
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
    required TResult Function(_GettingNodeSuccess value) gettingNodeSuccess,
    required TResult Function(_GettingNodeFailure value) gettingNodeFailure,
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
    TResult? Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult? Function(_GettingNodeFailure value)? gettingNodeFailure,
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
    TResult Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult Function(_GettingNodeFailure value)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements NodeWatcherState {
  const factory _LoadSuccess(
      {required final Tree tree,
      required final List<TNode> nodes}) = _$LoadSuccessImpl;

  Tree get tree;
  List<TNode> get nodes;
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
  $Res call({TNodeFailure purchaseFailure});

  $TNodeFailureCopyWith<$Res> get purchaseFailure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$NodeWatcherStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseFailure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == purchaseFailure
          ? _value.purchaseFailure
          : purchaseFailure // ignore: cast_nullable_to_non_nullable
              as TNodeFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeFailureCopyWith<$Res> get purchaseFailure {
    return $TNodeFailureCopyWith<$Res>(_value.purchaseFailure, (value) {
      return _then(_value.copyWith(purchaseFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.purchaseFailure);

  @override
  final TNodeFailure purchaseFailure;

  @override
  String toString() {
    return 'NodeWatcherState.loadFailure(purchaseFailure: $purchaseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.purchaseFailure, purchaseFailure) ||
                other.purchaseFailure == purchaseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseFailure);

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
    required TResult Function(Tree tree, List<TNode> nodes) loadSuccess,
    required TResult Function(TNodeFailure purchaseFailure) loadFailure,
    required TResult Function(TNode node) gettingNodeSuccess,
    required TResult Function(TNodeFailure purchaseFailure) gettingNodeFailure,
  }) {
    return loadFailure(purchaseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult? Function(TNode node)? gettingNodeSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
  }) {
    return loadFailure?.call(purchaseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult Function(TNode node)? gettingNodeSuccess,
    TResult Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(purchaseFailure);
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
    required TResult Function(_GettingNodeSuccess value) gettingNodeSuccess,
    required TResult Function(_GettingNodeFailure value) gettingNodeFailure,
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
    TResult? Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult? Function(_GettingNodeFailure value)? gettingNodeFailure,
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
    TResult Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult Function(_GettingNodeFailure value)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements NodeWatcherState {
  const factory _LoadFailure(final TNodeFailure purchaseFailure) =
      _$LoadFailureImpl;

  TNodeFailure get purchaseFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GettingNodeSuccessImplCopyWith<$Res> {
  factory _$$GettingNodeSuccessImplCopyWith(_$GettingNodeSuccessImpl value,
          $Res Function(_$GettingNodeSuccessImpl) then) =
      __$$GettingNodeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TNode node});

  $TNodeCopyWith<$Res> get node;
}

/// @nodoc
class __$$GettingNodeSuccessImplCopyWithImpl<$Res>
    extends _$NodeWatcherStateCopyWithImpl<$Res, _$GettingNodeSuccessImpl>
    implements _$$GettingNodeSuccessImplCopyWith<$Res> {
  __$$GettingNodeSuccessImplCopyWithImpl(_$GettingNodeSuccessImpl _value,
      $Res Function(_$GettingNodeSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = null,
  }) {
    return _then(_$GettingNodeSuccessImpl(
      null == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as TNode,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get node {
    return $TNodeCopyWith<$Res>(_value.node, (value) {
      return _then(_value.copyWith(node: value));
    });
  }
}

/// @nodoc

class _$GettingNodeSuccessImpl implements _GettingNodeSuccess {
  const _$GettingNodeSuccessImpl(this.node);

  @override
  final TNode node;

  @override
  String toString() {
    return 'NodeWatcherState.gettingNodeSuccess(node: $node)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingNodeSuccessImpl &&
            (identical(other.node, node) || other.node == node));
  }

  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GettingNodeSuccessImplCopyWith<_$GettingNodeSuccessImpl> get copyWith =>
      __$$GettingNodeSuccessImplCopyWithImpl<_$GettingNodeSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(Tree tree, List<TNode> nodes) loadSuccess,
    required TResult Function(TNodeFailure purchaseFailure) loadFailure,
    required TResult Function(TNode node) gettingNodeSuccess,
    required TResult Function(TNodeFailure purchaseFailure) gettingNodeFailure,
  }) {
    return gettingNodeSuccess(node);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult? Function(TNode node)? gettingNodeSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
  }) {
    return gettingNodeSuccess?.call(node);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult Function(TNode node)? gettingNodeSuccess,
    TResult Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (gettingNodeSuccess != null) {
      return gettingNodeSuccess(node);
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
    required TResult Function(_GettingNodeSuccess value) gettingNodeSuccess,
    required TResult Function(_GettingNodeFailure value) gettingNodeFailure,
  }) {
    return gettingNodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult? Function(_GettingNodeFailure value)? gettingNodeFailure,
  }) {
    return gettingNodeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult Function(_GettingNodeFailure value)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (gettingNodeSuccess != null) {
      return gettingNodeSuccess(this);
    }
    return orElse();
  }
}

abstract class _GettingNodeSuccess implements NodeWatcherState {
  const factory _GettingNodeSuccess(final TNode node) =
      _$GettingNodeSuccessImpl;

  TNode get node;
  @JsonKey(ignore: true)
  _$$GettingNodeSuccessImplCopyWith<_$GettingNodeSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GettingNodeFailureImplCopyWith<$Res> {
  factory _$$GettingNodeFailureImplCopyWith(_$GettingNodeFailureImpl value,
          $Res Function(_$GettingNodeFailureImpl) then) =
      __$$GettingNodeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TNodeFailure purchaseFailure});

  $TNodeFailureCopyWith<$Res> get purchaseFailure;
}

/// @nodoc
class __$$GettingNodeFailureImplCopyWithImpl<$Res>
    extends _$NodeWatcherStateCopyWithImpl<$Res, _$GettingNodeFailureImpl>
    implements _$$GettingNodeFailureImplCopyWith<$Res> {
  __$$GettingNodeFailureImplCopyWithImpl(_$GettingNodeFailureImpl _value,
      $Res Function(_$GettingNodeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseFailure = null,
  }) {
    return _then(_$GettingNodeFailureImpl(
      null == purchaseFailure
          ? _value.purchaseFailure
          : purchaseFailure // ignore: cast_nullable_to_non_nullable
              as TNodeFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeFailureCopyWith<$Res> get purchaseFailure {
    return $TNodeFailureCopyWith<$Res>(_value.purchaseFailure, (value) {
      return _then(_value.copyWith(purchaseFailure: value));
    });
  }
}

/// @nodoc

class _$GettingNodeFailureImpl implements _GettingNodeFailure {
  const _$GettingNodeFailureImpl(this.purchaseFailure);

  @override
  final TNodeFailure purchaseFailure;

  @override
  String toString() {
    return 'NodeWatcherState.gettingNodeFailure(purchaseFailure: $purchaseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingNodeFailureImpl &&
            (identical(other.purchaseFailure, purchaseFailure) ||
                other.purchaseFailure == purchaseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GettingNodeFailureImplCopyWith<_$GettingNodeFailureImpl> get copyWith =>
      __$$GettingNodeFailureImplCopyWithImpl<_$GettingNodeFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(Tree tree, List<TNode> nodes) loadSuccess,
    required TResult Function(TNodeFailure purchaseFailure) loadFailure,
    required TResult Function(TNode node) gettingNodeSuccess,
    required TResult Function(TNodeFailure purchaseFailure) gettingNodeFailure,
  }) {
    return gettingNodeFailure(purchaseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult? Function(TNode node)? gettingNodeSuccess,
    TResult? Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
  }) {
    return gettingNodeFailure?.call(purchaseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(Tree tree, List<TNode> nodes)? loadSuccess,
    TResult Function(TNodeFailure purchaseFailure)? loadFailure,
    TResult Function(TNode node)? gettingNodeSuccess,
    TResult Function(TNodeFailure purchaseFailure)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (gettingNodeFailure != null) {
      return gettingNodeFailure(purchaseFailure);
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
    required TResult Function(_GettingNodeSuccess value) gettingNodeSuccess,
    required TResult Function(_GettingNodeFailure value) gettingNodeFailure,
  }) {
    return gettingNodeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult? Function(_GettingNodeFailure value)? gettingNodeFailure,
  }) {
    return gettingNodeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingNodeSuccess value)? gettingNodeSuccess,
    TResult Function(_GettingNodeFailure value)? gettingNodeFailure,
    required TResult orElse(),
  }) {
    if (gettingNodeFailure != null) {
      return gettingNodeFailure(this);
    }
    return orElse();
  }
}

abstract class _GettingNodeFailure implements NodeWatcherState {
  const factory _GettingNodeFailure(final TNodeFailure purchaseFailure) =
      _$GettingNodeFailureImpl;

  TNodeFailure get purchaseFailure;
  @JsonKey(ignore: true)
  _$$GettingNodeFailureImplCopyWith<_$GettingNodeFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
