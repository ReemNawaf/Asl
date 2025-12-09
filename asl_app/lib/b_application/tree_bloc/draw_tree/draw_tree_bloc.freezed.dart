// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draw_tree_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DrawTreeEvent {
  int? get maxGenerations => throw _privateConstructorUsedError;
  bool? get isShowUnknown => throw _privateConstructorUsedError;
  Tree get tree => throw _privateConstructorUsedError;
  TNode get root => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? maxGenerations, bool? isShowUnknown,
            Tree tree, TNode root, BuildContext context)
        initialized,
    required TResult Function(int? maxGenerations, bool? isShowUnknown,
            Tree tree, TNode root, BuildContext context)
        drawNewTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        initialized,
    TResult? Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        drawNewTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        initialized,
    TResult Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        drawNewTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DrawNewTree value) drawNewTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_DrawNewTree value)? drawNewTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DrawNewTree value)? drawNewTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawTreeEventCopyWith<DrawTreeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawTreeEventCopyWith<$Res> {
  factory $DrawTreeEventCopyWith(
          DrawTreeEvent value, $Res Function(DrawTreeEvent) then) =
      _$DrawTreeEventCopyWithImpl<$Res, DrawTreeEvent>;
  @useResult
  $Res call(
      {int? maxGenerations,
      bool? isShowUnknown,
      Tree tree,
      TNode root,
      BuildContext context});

  $TreeCopyWith<$Res> get tree;
  $TNodeCopyWith<$Res> get root;
}

/// @nodoc
class _$DrawTreeEventCopyWithImpl<$Res, $Val extends DrawTreeEvent>
    implements $DrawTreeEventCopyWith<$Res> {
  _$DrawTreeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxGenerations = freezed,
    Object? isShowUnknown = freezed,
    Object? tree = null,
    Object? root = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      maxGenerations: freezed == maxGenerations
          ? _value.maxGenerations
          : maxGenerations // ignore: cast_nullable_to_non_nullable
              as int?,
      isShowUnknown: freezed == isShowUnknown
          ? _value.isShowUnknown
          : isShowUnknown // ignore: cast_nullable_to_non_nullable
              as bool?,
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as TNode,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeCopyWith<$Res> get tree {
    return $TreeCopyWith<$Res>(_value.tree, (value) {
      return _then(_value.copyWith(tree: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get root {
    return $TNodeCopyWith<$Res>(_value.root, (value) {
      return _then(_value.copyWith(root: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res>
    implements $DrawTreeEventCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? maxGenerations,
      bool? isShowUnknown,
      Tree tree,
      TNode root,
      BuildContext context});

  @override
  $TreeCopyWith<$Res> get tree;
  @override
  $TNodeCopyWith<$Res> get root;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$DrawTreeEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxGenerations = freezed,
    Object? isShowUnknown = freezed,
    Object? tree = null,
    Object? root = null,
    Object? context = null,
  }) {
    return _then(_$InitializedImpl(
      maxGenerations: freezed == maxGenerations
          ? _value.maxGenerations
          : maxGenerations // ignore: cast_nullable_to_non_nullable
              as int?,
      isShowUnknown: freezed == isShowUnknown
          ? _value.isShowUnknown
          : isShowUnknown // ignore: cast_nullable_to_non_nullable
              as bool?,
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as TNode,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(
      {this.maxGenerations,
      this.isShowUnknown,
      required this.tree,
      required this.root,
      required this.context});

  @override
  final int? maxGenerations;
  @override
  final bool? isShowUnknown;
  @override
  final Tree tree;
  @override
  final TNode root;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DrawTreeEvent.initialized(maxGenerations: $maxGenerations, isShowUnknown: $isShowUnknown, tree: $tree, root: $root, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.maxGenerations, maxGenerations) ||
                other.maxGenerations == maxGenerations) &&
            (identical(other.isShowUnknown, isShowUnknown) ||
                other.isShowUnknown == isShowUnknown) &&
            (identical(other.tree, tree) || other.tree == tree) &&
            (identical(other.root, root) || other.root == root) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, maxGenerations, isShowUnknown, tree, root, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? maxGenerations, bool? isShowUnknown,
            Tree tree, TNode root, BuildContext context)
        initialized,
    required TResult Function(int? maxGenerations, bool? isShowUnknown,
            Tree tree, TNode root, BuildContext context)
        drawNewTree,
  }) {
    return initialized(maxGenerations, isShowUnknown, tree, root, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        initialized,
    TResult? Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        drawNewTree,
  }) {
    return initialized?.call(
        maxGenerations, isShowUnknown, tree, root, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        initialized,
    TResult Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        drawNewTree,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(maxGenerations, isShowUnknown, tree, root, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DrawNewTree value) drawNewTree,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_DrawNewTree value)? drawNewTree,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DrawNewTree value)? drawNewTree,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements DrawTreeEvent {
  const factory _Initialized(
      {final int? maxGenerations,
      final bool? isShowUnknown,
      required final Tree tree,
      required final TNode root,
      required final BuildContext context}) = _$InitializedImpl;

  @override
  int? get maxGenerations;
  @override
  bool? get isShowUnknown;
  @override
  Tree get tree;
  @override
  TNode get root;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrawNewTreeImplCopyWith<$Res>
    implements $DrawTreeEventCopyWith<$Res> {
  factory _$$DrawNewTreeImplCopyWith(
          _$DrawNewTreeImpl value, $Res Function(_$DrawNewTreeImpl) then) =
      __$$DrawNewTreeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? maxGenerations,
      bool? isShowUnknown,
      Tree tree,
      TNode root,
      BuildContext context});

  @override
  $TreeCopyWith<$Res> get tree;
  @override
  $TNodeCopyWith<$Res> get root;
}

/// @nodoc
class __$$DrawNewTreeImplCopyWithImpl<$Res>
    extends _$DrawTreeEventCopyWithImpl<$Res, _$DrawNewTreeImpl>
    implements _$$DrawNewTreeImplCopyWith<$Res> {
  __$$DrawNewTreeImplCopyWithImpl(
      _$DrawNewTreeImpl _value, $Res Function(_$DrawNewTreeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxGenerations = freezed,
    Object? isShowUnknown = freezed,
    Object? tree = null,
    Object? root = null,
    Object? context = null,
  }) {
    return _then(_$DrawNewTreeImpl(
      maxGenerations: freezed == maxGenerations
          ? _value.maxGenerations
          : maxGenerations // ignore: cast_nullable_to_non_nullable
              as int?,
      isShowUnknown: freezed == isShowUnknown
          ? _value.isShowUnknown
          : isShowUnknown // ignore: cast_nullable_to_non_nullable
              as bool?,
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as TNode,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$DrawNewTreeImpl implements _DrawNewTree {
  const _$DrawNewTreeImpl(
      {this.maxGenerations,
      this.isShowUnknown,
      required this.tree,
      required this.root,
      required this.context});

  @override
  final int? maxGenerations;
  @override
  final bool? isShowUnknown;
  @override
  final Tree tree;
  @override
  final TNode root;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DrawTreeEvent.drawNewTree(maxGenerations: $maxGenerations, isShowUnknown: $isShowUnknown, tree: $tree, root: $root, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawNewTreeImpl &&
            (identical(other.maxGenerations, maxGenerations) ||
                other.maxGenerations == maxGenerations) &&
            (identical(other.isShowUnknown, isShowUnknown) ||
                other.isShowUnknown == isShowUnknown) &&
            (identical(other.tree, tree) || other.tree == tree) &&
            (identical(other.root, root) || other.root == root) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, maxGenerations, isShowUnknown, tree, root, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawNewTreeImplCopyWith<_$DrawNewTreeImpl> get copyWith =>
      __$$DrawNewTreeImplCopyWithImpl<_$DrawNewTreeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? maxGenerations, bool? isShowUnknown,
            Tree tree, TNode root, BuildContext context)
        initialized,
    required TResult Function(int? maxGenerations, bool? isShowUnknown,
            Tree tree, TNode root, BuildContext context)
        drawNewTree,
  }) {
    return drawNewTree(maxGenerations, isShowUnknown, tree, root, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        initialized,
    TResult? Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        drawNewTree,
  }) {
    return drawNewTree?.call(
        maxGenerations, isShowUnknown, tree, root, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        initialized,
    TResult Function(int? maxGenerations, bool? isShowUnknown, Tree tree,
            TNode root, BuildContext context)?
        drawNewTree,
    required TResult orElse(),
  }) {
    if (drawNewTree != null) {
      return drawNewTree(maxGenerations, isShowUnknown, tree, root, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DrawNewTree value) drawNewTree,
  }) {
    return drawNewTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_DrawNewTree value)? drawNewTree,
  }) {
    return drawNewTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DrawNewTree value)? drawNewTree,
    required TResult orElse(),
  }) {
    if (drawNewTree != null) {
      return drawNewTree(this);
    }
    return orElse();
  }
}

abstract class _DrawNewTree implements DrawTreeEvent {
  const factory _DrawNewTree(
      {final int? maxGenerations,
      final bool? isShowUnknown,
      required final Tree tree,
      required final TNode root,
      required final BuildContext context}) = _$DrawNewTreeImpl;

  @override
  int? get maxGenerations;
  @override
  bool? get isShowUnknown;
  @override
  Tree get tree;
  @override
  TNode get root;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$DrawNewTreeImplCopyWith<_$DrawNewTreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrawTreeState {
  Graph? get graph => throw _privateConstructorUsedError;
  BuchheimWalkerConfiguration? get builder =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawTreeStateCopyWith<DrawTreeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawTreeStateCopyWith<$Res> {
  factory $DrawTreeStateCopyWith(
          DrawTreeState value, $Res Function(DrawTreeState) then) =
      _$DrawTreeStateCopyWithImpl<$Res, DrawTreeState>;
  @useResult
  $Res call({Graph? graph, BuchheimWalkerConfiguration? builder});
}

/// @nodoc
class _$DrawTreeStateCopyWithImpl<$Res, $Val extends DrawTreeState>
    implements $DrawTreeStateCopyWith<$Res> {
  _$DrawTreeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graph = freezed,
    Object? builder = freezed,
  }) {
    return _then(_value.copyWith(
      graph: freezed == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as Graph?,
      builder: freezed == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as BuchheimWalkerConfiguration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DrawTreeStateImplCopyWith<$Res>
    implements $DrawTreeStateCopyWith<$Res> {
  factory _$$DrawTreeStateImplCopyWith(
          _$DrawTreeStateImpl value, $Res Function(_$DrawTreeStateImpl) then) =
      __$$DrawTreeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Graph? graph, BuchheimWalkerConfiguration? builder});
}

/// @nodoc
class __$$DrawTreeStateImplCopyWithImpl<$Res>
    extends _$DrawTreeStateCopyWithImpl<$Res, _$DrawTreeStateImpl>
    implements _$$DrawTreeStateImplCopyWith<$Res> {
  __$$DrawTreeStateImplCopyWithImpl(
      _$DrawTreeStateImpl _value, $Res Function(_$DrawTreeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graph = freezed,
    Object? builder = freezed,
  }) {
    return _then(_$DrawTreeStateImpl(
      graph: freezed == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as Graph?,
      builder: freezed == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as BuchheimWalkerConfiguration?,
    ));
  }
}

/// @nodoc

class _$DrawTreeStateImpl implements _DrawTreeState {
  const _$DrawTreeStateImpl({this.graph, this.builder});

  @override
  final Graph? graph;
  @override
  final BuchheimWalkerConfiguration? builder;

  @override
  String toString() {
    return 'DrawTreeState(graph: $graph, builder: $builder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawTreeStateImpl &&
            (identical(other.graph, graph) || other.graph == graph) &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, graph, builder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawTreeStateImplCopyWith<_$DrawTreeStateImpl> get copyWith =>
      __$$DrawTreeStateImplCopyWithImpl<_$DrawTreeStateImpl>(this, _$identity);
}

abstract class _DrawTreeState implements DrawTreeState {
  const factory _DrawTreeState(
      {final Graph? graph,
      final BuchheimWalkerConfiguration? builder}) = _$DrawTreeStateImpl;

  @override
  Graph? get graph;
  @override
  BuchheimWalkerConfiguration? get builder;
  @override
  @JsonKey(ignore: true)
  _$$DrawTreeStateImplCopyWith<_$DrawTreeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
