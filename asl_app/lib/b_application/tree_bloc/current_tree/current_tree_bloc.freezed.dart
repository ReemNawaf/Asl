// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_tree_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentTreeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree currentTree, List<Tree> trees) initialized,
    required TResult Function(Tree tree) updateCurrentTree,
    required TResult Function(TNode node) updateCurrentRoot,
    required TResult Function(List<Tree> trees) updateAllTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult? Function(Tree tree)? updateCurrentTree,
    TResult? Function(TNode node)? updateCurrentRoot,
    TResult? Function(List<Tree> trees)? updateAllTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult Function(Tree tree)? updateCurrentTree,
    TResult Function(TNode node)? updateCurrentRoot,
    TResult Function(List<Tree> trees)? updateAllTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UpdateCurrentTree value) updateCurrentTree,
    required TResult Function(_UpdateCurrentRoot value) updateCurrentRoot,
    required TResult Function(_UpdateAllTree value) updateAllTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UpdateCurrentTree value)? updateCurrentTree,
    TResult? Function(_UpdateCurrentRoot value)? updateCurrentRoot,
    TResult? Function(_UpdateAllTree value)? updateAllTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UpdateCurrentTree value)? updateCurrentTree,
    TResult Function(_UpdateCurrentRoot value)? updateCurrentRoot,
    TResult Function(_UpdateAllTree value)? updateAllTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentTreeEventCopyWith<$Res> {
  factory $CurrentTreeEventCopyWith(
          CurrentTreeEvent value, $Res Function(CurrentTreeEvent) then) =
      _$CurrentTreeEventCopyWithImpl<$Res, CurrentTreeEvent>;
}

/// @nodoc
class _$CurrentTreeEventCopyWithImpl<$Res, $Val extends CurrentTreeEvent>
    implements $CurrentTreeEventCopyWith<$Res> {
  _$CurrentTreeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tree currentTree, List<Tree> trees});

  $TreeCopyWith<$Res> get currentTree;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$CurrentTreeEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTree = null,
    Object? trees = null,
  }) {
    return _then(_$InitializedImpl(
      currentTree: null == currentTree
          ? _value.currentTree
          : currentTree // ignore: cast_nullable_to_non_nullable
              as Tree,
      trees: null == trees
          ? _value._trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeCopyWith<$Res> get currentTree {
    return $TreeCopyWith<$Res>(_value.currentTree, (value) {
      return _then(_value.copyWith(currentTree: value));
    });
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(
      {required this.currentTree, required final List<Tree> trees})
      : _trees = trees;

  @override
  final Tree currentTree;
  final List<Tree> _trees;
  @override
  List<Tree> get trees {
    if (_trees is EqualUnmodifiableListView) return _trees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trees);
  }

  @override
  String toString() {
    return 'CurrentTreeEvent.initialized(currentTree: $currentTree, trees: $trees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.currentTree, currentTree) ||
                other.currentTree == currentTree) &&
            const DeepCollectionEquality().equals(other._trees, _trees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentTree, const DeepCollectionEquality().hash(_trees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree currentTree, List<Tree> trees) initialized,
    required TResult Function(Tree tree) updateCurrentTree,
    required TResult Function(TNode node) updateCurrentRoot,
    required TResult Function(List<Tree> trees) updateAllTree,
  }) {
    return initialized(currentTree, trees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult? Function(Tree tree)? updateCurrentTree,
    TResult? Function(TNode node)? updateCurrentRoot,
    TResult? Function(List<Tree> trees)? updateAllTree,
  }) {
    return initialized?.call(currentTree, trees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult Function(Tree tree)? updateCurrentTree,
    TResult Function(TNode node)? updateCurrentRoot,
    TResult Function(List<Tree> trees)? updateAllTree,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(currentTree, trees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UpdateCurrentTree value) updateCurrentTree,
    required TResult Function(_UpdateCurrentRoot value) updateCurrentRoot,
    required TResult Function(_UpdateAllTree value) updateAllTree,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UpdateCurrentTree value)? updateCurrentTree,
    TResult? Function(_UpdateCurrentRoot value)? updateCurrentRoot,
    TResult? Function(_UpdateAllTree value)? updateAllTree,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UpdateCurrentTree value)? updateCurrentTree,
    TResult Function(_UpdateCurrentRoot value)? updateCurrentRoot,
    TResult Function(_UpdateAllTree value)? updateAllTree,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CurrentTreeEvent {
  const factory _Initialized(
      {required final Tree currentTree,
      required final List<Tree> trees}) = _$InitializedImpl;

  Tree get currentTree;
  List<Tree> get trees;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentTreeImplCopyWith<$Res> {
  factory _$$UpdateCurrentTreeImplCopyWith(_$UpdateCurrentTreeImpl value,
          $Res Function(_$UpdateCurrentTreeImpl) then) =
      __$$UpdateCurrentTreeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tree tree});

  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class __$$UpdateCurrentTreeImplCopyWithImpl<$Res>
    extends _$CurrentTreeEventCopyWithImpl<$Res, _$UpdateCurrentTreeImpl>
    implements _$$UpdateCurrentTreeImplCopyWith<$Res> {
  __$$UpdateCurrentTreeImplCopyWithImpl(_$UpdateCurrentTreeImpl _value,
      $Res Function(_$UpdateCurrentTreeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
  }) {
    return _then(_$UpdateCurrentTreeImpl(
      tree: null == tree
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

class _$UpdateCurrentTreeImpl implements _UpdateCurrentTree {
  const _$UpdateCurrentTreeImpl({required this.tree});

  @override
  final Tree tree;

  @override
  String toString() {
    return 'CurrentTreeEvent.updateCurrentTree(tree: $tree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentTreeImpl &&
            (identical(other.tree, tree) || other.tree == tree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tree);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentTreeImplCopyWith<_$UpdateCurrentTreeImpl> get copyWith =>
      __$$UpdateCurrentTreeImplCopyWithImpl<_$UpdateCurrentTreeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree currentTree, List<Tree> trees) initialized,
    required TResult Function(Tree tree) updateCurrentTree,
    required TResult Function(TNode node) updateCurrentRoot,
    required TResult Function(List<Tree> trees) updateAllTree,
  }) {
    return updateCurrentTree(tree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult? Function(Tree tree)? updateCurrentTree,
    TResult? Function(TNode node)? updateCurrentRoot,
    TResult? Function(List<Tree> trees)? updateAllTree,
  }) {
    return updateCurrentTree?.call(tree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult Function(Tree tree)? updateCurrentTree,
    TResult Function(TNode node)? updateCurrentRoot,
    TResult Function(List<Tree> trees)? updateAllTree,
    required TResult orElse(),
  }) {
    if (updateCurrentTree != null) {
      return updateCurrentTree(tree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UpdateCurrentTree value) updateCurrentTree,
    required TResult Function(_UpdateCurrentRoot value) updateCurrentRoot,
    required TResult Function(_UpdateAllTree value) updateAllTree,
  }) {
    return updateCurrentTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UpdateCurrentTree value)? updateCurrentTree,
    TResult? Function(_UpdateCurrentRoot value)? updateCurrentRoot,
    TResult? Function(_UpdateAllTree value)? updateAllTree,
  }) {
    return updateCurrentTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UpdateCurrentTree value)? updateCurrentTree,
    TResult Function(_UpdateCurrentRoot value)? updateCurrentRoot,
    TResult Function(_UpdateAllTree value)? updateAllTree,
    required TResult orElse(),
  }) {
    if (updateCurrentTree != null) {
      return updateCurrentTree(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentTree implements CurrentTreeEvent {
  const factory _UpdateCurrentTree({required final Tree tree}) =
      _$UpdateCurrentTreeImpl;

  Tree get tree;
  @JsonKey(ignore: true)
  _$$UpdateCurrentTreeImplCopyWith<_$UpdateCurrentTreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentRootImplCopyWith<$Res> {
  factory _$$UpdateCurrentRootImplCopyWith(_$UpdateCurrentRootImpl value,
          $Res Function(_$UpdateCurrentRootImpl) then) =
      __$$UpdateCurrentRootImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TNode node});

  $TNodeCopyWith<$Res> get node;
}

/// @nodoc
class __$$UpdateCurrentRootImplCopyWithImpl<$Res>
    extends _$CurrentTreeEventCopyWithImpl<$Res, _$UpdateCurrentRootImpl>
    implements _$$UpdateCurrentRootImplCopyWith<$Res> {
  __$$UpdateCurrentRootImplCopyWithImpl(_$UpdateCurrentRootImpl _value,
      $Res Function(_$UpdateCurrentRootImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = null,
  }) {
    return _then(_$UpdateCurrentRootImpl(
      node: null == node
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

class _$UpdateCurrentRootImpl implements _UpdateCurrentRoot {
  const _$UpdateCurrentRootImpl({required this.node});

  @override
  final TNode node;

  @override
  String toString() {
    return 'CurrentTreeEvent.updateCurrentRoot(node: $node)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentRootImpl &&
            (identical(other.node, node) || other.node == node));
  }

  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentRootImplCopyWith<_$UpdateCurrentRootImpl> get copyWith =>
      __$$UpdateCurrentRootImplCopyWithImpl<_$UpdateCurrentRootImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree currentTree, List<Tree> trees) initialized,
    required TResult Function(Tree tree) updateCurrentTree,
    required TResult Function(TNode node) updateCurrentRoot,
    required TResult Function(List<Tree> trees) updateAllTree,
  }) {
    return updateCurrentRoot(node);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult? Function(Tree tree)? updateCurrentTree,
    TResult? Function(TNode node)? updateCurrentRoot,
    TResult? Function(List<Tree> trees)? updateAllTree,
  }) {
    return updateCurrentRoot?.call(node);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult Function(Tree tree)? updateCurrentTree,
    TResult Function(TNode node)? updateCurrentRoot,
    TResult Function(List<Tree> trees)? updateAllTree,
    required TResult orElse(),
  }) {
    if (updateCurrentRoot != null) {
      return updateCurrentRoot(node);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UpdateCurrentTree value) updateCurrentTree,
    required TResult Function(_UpdateCurrentRoot value) updateCurrentRoot,
    required TResult Function(_UpdateAllTree value) updateAllTree,
  }) {
    return updateCurrentRoot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UpdateCurrentTree value)? updateCurrentTree,
    TResult? Function(_UpdateCurrentRoot value)? updateCurrentRoot,
    TResult? Function(_UpdateAllTree value)? updateAllTree,
  }) {
    return updateCurrentRoot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UpdateCurrentTree value)? updateCurrentTree,
    TResult Function(_UpdateCurrentRoot value)? updateCurrentRoot,
    TResult Function(_UpdateAllTree value)? updateAllTree,
    required TResult orElse(),
  }) {
    if (updateCurrentRoot != null) {
      return updateCurrentRoot(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentRoot implements CurrentTreeEvent {
  const factory _UpdateCurrentRoot({required final TNode node}) =
      _$UpdateCurrentRootImpl;

  TNode get node;
  @JsonKey(ignore: true)
  _$$UpdateCurrentRootImplCopyWith<_$UpdateCurrentRootImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAllTreeImplCopyWith<$Res> {
  factory _$$UpdateAllTreeImplCopyWith(
          _$UpdateAllTreeImpl value, $Res Function(_$UpdateAllTreeImpl) then) =
      __$$UpdateAllTreeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Tree> trees});
}

/// @nodoc
class __$$UpdateAllTreeImplCopyWithImpl<$Res>
    extends _$CurrentTreeEventCopyWithImpl<$Res, _$UpdateAllTreeImpl>
    implements _$$UpdateAllTreeImplCopyWith<$Res> {
  __$$UpdateAllTreeImplCopyWithImpl(
      _$UpdateAllTreeImpl _value, $Res Function(_$UpdateAllTreeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trees = null,
  }) {
    return _then(_$UpdateAllTreeImpl(
      trees: null == trees
          ? _value._trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
    ));
  }
}

/// @nodoc

class _$UpdateAllTreeImpl implements _UpdateAllTree {
  const _$UpdateAllTreeImpl({required final List<Tree> trees}) : _trees = trees;

  final List<Tree> _trees;
  @override
  List<Tree> get trees {
    if (_trees is EqualUnmodifiableListView) return _trees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trees);
  }

  @override
  String toString() {
    return 'CurrentTreeEvent.updateAllTree(trees: $trees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAllTreeImpl &&
            const DeepCollectionEquality().equals(other._trees, _trees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAllTreeImplCopyWith<_$UpdateAllTreeImpl> get copyWith =>
      __$$UpdateAllTreeImplCopyWithImpl<_$UpdateAllTreeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree currentTree, List<Tree> trees) initialized,
    required TResult Function(Tree tree) updateCurrentTree,
    required TResult Function(TNode node) updateCurrentRoot,
    required TResult Function(List<Tree> trees) updateAllTree,
  }) {
    return updateAllTree(trees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult? Function(Tree tree)? updateCurrentTree,
    TResult? Function(TNode node)? updateCurrentRoot,
    TResult? Function(List<Tree> trees)? updateAllTree,
  }) {
    return updateAllTree?.call(trees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult Function(Tree tree)? updateCurrentTree,
    TResult Function(TNode node)? updateCurrentRoot,
    TResult Function(List<Tree> trees)? updateAllTree,
    required TResult orElse(),
  }) {
    if (updateAllTree != null) {
      return updateAllTree(trees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UpdateCurrentTree value) updateCurrentTree,
    required TResult Function(_UpdateCurrentRoot value) updateCurrentRoot,
    required TResult Function(_UpdateAllTree value) updateAllTree,
  }) {
    return updateAllTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UpdateCurrentTree value)? updateCurrentTree,
    TResult? Function(_UpdateCurrentRoot value)? updateCurrentRoot,
    TResult? Function(_UpdateAllTree value)? updateAllTree,
  }) {
    return updateAllTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UpdateCurrentTree value)? updateCurrentTree,
    TResult Function(_UpdateCurrentRoot value)? updateCurrentRoot,
    TResult Function(_UpdateAllTree value)? updateAllTree,
    required TResult orElse(),
  }) {
    if (updateAllTree != null) {
      return updateAllTree(this);
    }
    return orElse();
  }
}

abstract class _UpdateAllTree implements CurrentTreeEvent {
  const factory _UpdateAllTree({required final List<Tree> trees}) =
      _$UpdateAllTreeImpl;

  List<Tree> get trees;
  @JsonKey(ignore: true)
  _$$UpdateAllTreeImplCopyWith<_$UpdateAllTreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrentTreeState {
  TNode? get currentRoot => throw _privateConstructorUsedError;
  Tree? get currentTree => throw _privateConstructorUsedError;
  List<Tree> get trees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentTreeStateCopyWith<CurrentTreeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentTreeStateCopyWith<$Res> {
  factory $CurrentTreeStateCopyWith(
          CurrentTreeState value, $Res Function(CurrentTreeState) then) =
      _$CurrentTreeStateCopyWithImpl<$Res, CurrentTreeState>;
  @useResult
  $Res call({TNode? currentRoot, Tree? currentTree, List<Tree> trees});

  $TNodeCopyWith<$Res>? get currentRoot;
  $TreeCopyWith<$Res>? get currentTree;
}

/// @nodoc
class _$CurrentTreeStateCopyWithImpl<$Res, $Val extends CurrentTreeState>
    implements $CurrentTreeStateCopyWith<$Res> {
  _$CurrentTreeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRoot = freezed,
    Object? currentTree = freezed,
    Object? trees = null,
  }) {
    return _then(_value.copyWith(
      currentRoot: freezed == currentRoot
          ? _value.currentRoot
          : currentRoot // ignore: cast_nullable_to_non_nullable
              as TNode?,
      currentTree: freezed == currentTree
          ? _value.currentTree
          : currentTree // ignore: cast_nullable_to_non_nullable
              as Tree?,
      trees: null == trees
          ? _value.trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res>? get currentRoot {
    if (_value.currentRoot == null) {
      return null;
    }

    return $TNodeCopyWith<$Res>(_value.currentRoot!, (value) {
      return _then(_value.copyWith(currentRoot: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeCopyWith<$Res>? get currentTree {
    if (_value.currentTree == null) {
      return null;
    }

    return $TreeCopyWith<$Res>(_value.currentTree!, (value) {
      return _then(_value.copyWith(currentTree: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentTreeStateImplCopyWith<$Res>
    implements $CurrentTreeStateCopyWith<$Res> {
  factory _$$CurrentTreeStateImplCopyWith(_$CurrentTreeStateImpl value,
          $Res Function(_$CurrentTreeStateImpl) then) =
      __$$CurrentTreeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TNode? currentRoot, Tree? currentTree, List<Tree> trees});

  @override
  $TNodeCopyWith<$Res>? get currentRoot;
  @override
  $TreeCopyWith<$Res>? get currentTree;
}

/// @nodoc
class __$$CurrentTreeStateImplCopyWithImpl<$Res>
    extends _$CurrentTreeStateCopyWithImpl<$Res, _$CurrentTreeStateImpl>
    implements _$$CurrentTreeStateImplCopyWith<$Res> {
  __$$CurrentTreeStateImplCopyWithImpl(_$CurrentTreeStateImpl _value,
      $Res Function(_$CurrentTreeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRoot = freezed,
    Object? currentTree = freezed,
    Object? trees = null,
  }) {
    return _then(_$CurrentTreeStateImpl(
      currentRoot: freezed == currentRoot
          ? _value.currentRoot
          : currentRoot // ignore: cast_nullable_to_non_nullable
              as TNode?,
      currentTree: freezed == currentTree
          ? _value.currentTree
          : currentTree // ignore: cast_nullable_to_non_nullable
              as Tree?,
      trees: null == trees
          ? _value._trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
    ));
  }
}

/// @nodoc

class _$CurrentTreeStateImpl implements _CurrentTreeState {
  const _$CurrentTreeStateImpl(
      {this.currentRoot, this.currentTree, required final List<Tree> trees})
      : _trees = trees;

  @override
  final TNode? currentRoot;
  @override
  final Tree? currentTree;
  final List<Tree> _trees;
  @override
  List<Tree> get trees {
    if (_trees is EqualUnmodifiableListView) return _trees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trees);
  }

  @override
  String toString() {
    return 'CurrentTreeState(currentRoot: $currentRoot, currentTree: $currentTree, trees: $trees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentTreeStateImpl &&
            (identical(other.currentRoot, currentRoot) ||
                other.currentRoot == currentRoot) &&
            (identical(other.currentTree, currentTree) ||
                other.currentTree == currentTree) &&
            const DeepCollectionEquality().equals(other._trees, _trees));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentRoot, currentTree,
      const DeepCollectionEquality().hash(_trees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentTreeStateImplCopyWith<_$CurrentTreeStateImpl> get copyWith =>
      __$$CurrentTreeStateImplCopyWithImpl<_$CurrentTreeStateImpl>(
          this, _$identity);
}

abstract class _CurrentTreeState implements CurrentTreeState {
  const factory _CurrentTreeState(
      {final TNode? currentRoot,
      final Tree? currentTree,
      required final List<Tree> trees}) = _$CurrentTreeStateImpl;

  @override
  TNode? get currentRoot;
  @override
  Tree? get currentTree;
  @override
  List<Tree> get trees;
  @override
  @JsonKey(ignore: true)
  _$$CurrentTreeStateImplCopyWith<_$CurrentTreeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
