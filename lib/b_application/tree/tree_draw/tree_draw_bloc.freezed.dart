// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_draw_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreeDrawEvent {
  Tree get tree => throw _privateConstructorUsedError;
  List<TNode> get nodes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree tree, List<TNode> nodes) drawTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree tree, List<TNode> nodes)? drawTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree tree, List<TNode> nodes)? drawTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DrawTree value) drawTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DrawTree value)? drawTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DrawTree value)? drawTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeDrawEventCopyWith<TreeDrawEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeDrawEventCopyWith<$Res> {
  factory $TreeDrawEventCopyWith(
          TreeDrawEvent value, $Res Function(TreeDrawEvent) then) =
      _$TreeDrawEventCopyWithImpl<$Res, TreeDrawEvent>;
  @useResult
  $Res call({Tree tree, List<TNode> nodes});

  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class _$TreeDrawEventCopyWithImpl<$Res, $Val extends TreeDrawEvent>
    implements $TreeDrawEventCopyWith<$Res> {
  _$TreeDrawEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
    Object? nodes = null,
  }) {
    return _then(_value.copyWith(
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
      nodes: null == nodes
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<TNode>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeCopyWith<$Res> get tree {
    return $TreeCopyWith<$Res>(_value.tree, (value) {
      return _then(_value.copyWith(tree: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DrawTreeImplCopyWith<$Res>
    implements $TreeDrawEventCopyWith<$Res> {
  factory _$$DrawTreeImplCopyWith(
          _$DrawTreeImpl value, $Res Function(_$DrawTreeImpl) then) =
      __$$DrawTreeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tree tree, List<TNode> nodes});

  @override
  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class __$$DrawTreeImplCopyWithImpl<$Res>
    extends _$TreeDrawEventCopyWithImpl<$Res, _$DrawTreeImpl>
    implements _$$DrawTreeImplCopyWith<$Res> {
  __$$DrawTreeImplCopyWithImpl(
      _$DrawTreeImpl _value, $Res Function(_$DrawTreeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
    Object? nodes = null,
  }) {
    return _then(_$DrawTreeImpl(
      null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
      null == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<TNode>,
    ));
  }
}

/// @nodoc

class _$DrawTreeImpl implements _DrawTree {
  const _$DrawTreeImpl(this.tree, final List<TNode> nodes) : _nodes = nodes;

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
    return 'TreeDrawEvent.drawTree(tree: $tree, nodes: $nodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawTreeImpl &&
            (identical(other.tree, tree) || other.tree == tree) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tree, const DeepCollectionEquality().hash(_nodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawTreeImplCopyWith<_$DrawTreeImpl> get copyWith =>
      __$$DrawTreeImplCopyWithImpl<_$DrawTreeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree tree, List<TNode> nodes) drawTree,
  }) {
    return drawTree(tree, nodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree tree, List<TNode> nodes)? drawTree,
  }) {
    return drawTree?.call(tree, nodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree tree, List<TNode> nodes)? drawTree,
    required TResult orElse(),
  }) {
    if (drawTree != null) {
      return drawTree(tree, nodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DrawTree value) drawTree,
  }) {
    return drawTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DrawTree value)? drawTree,
  }) {
    return drawTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DrawTree value)? drawTree,
    required TResult orElse(),
  }) {
    if (drawTree != null) {
      return drawTree(this);
    }
    return orElse();
  }
}

abstract class _DrawTree implements TreeDrawEvent {
  const factory _DrawTree(final Tree tree, final List<TNode> nodes) =
      _$DrawTreeImpl;

  @override
  Tree get tree;
  @override
  List<TNode> get nodes;
  @override
  @JsonKey(ignore: true)
  _$$DrawTreeImplCopyWith<_$DrawTreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TreeDrawState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Graph graph, BuchheimWalkerConfiguration builder)
        graphDrawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Graph graph, BuchheimWalkerConfiguration builder)?
        graphDrawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Graph graph, BuchheimWalkerConfiguration builder)?
        graphDrawn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GraphDrawn value) graphDrawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GraphDrawn value)? graphDrawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GraphDrawn value)? graphDrawn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeDrawStateCopyWith<$Res> {
  factory $TreeDrawStateCopyWith(
          TreeDrawState value, $Res Function(TreeDrawState) then) =
      _$TreeDrawStateCopyWithImpl<$Res, TreeDrawState>;
}

/// @nodoc
class _$TreeDrawStateCopyWithImpl<$Res, $Val extends TreeDrawState>
    implements $TreeDrawStateCopyWith<$Res> {
  _$TreeDrawStateCopyWithImpl(this._value, this._then);

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
    extends _$TreeDrawStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TreeDrawState.initial()';
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
    required TResult Function(Graph graph, BuchheimWalkerConfiguration builder)
        graphDrawn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Graph graph, BuchheimWalkerConfiguration builder)?
        graphDrawn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Graph graph, BuchheimWalkerConfiguration builder)?
        graphDrawn,
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
    required TResult Function(_GraphDrawn value) graphDrawn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GraphDrawn value)? graphDrawn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GraphDrawn value)? graphDrawn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TreeDrawState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GraphDrawnImplCopyWith<$Res> {
  factory _$$GraphDrawnImplCopyWith(
          _$GraphDrawnImpl value, $Res Function(_$GraphDrawnImpl) then) =
      __$$GraphDrawnImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Graph graph, BuchheimWalkerConfiguration builder});
}

/// @nodoc
class __$$GraphDrawnImplCopyWithImpl<$Res>
    extends _$TreeDrawStateCopyWithImpl<$Res, _$GraphDrawnImpl>
    implements _$$GraphDrawnImplCopyWith<$Res> {
  __$$GraphDrawnImplCopyWithImpl(
      _$GraphDrawnImpl _value, $Res Function(_$GraphDrawnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graph = null,
    Object? builder = null,
  }) {
    return _then(_$GraphDrawnImpl(
      null == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as Graph,
      null == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as BuchheimWalkerConfiguration,
    ));
  }
}

/// @nodoc

class _$GraphDrawnImpl implements _GraphDrawn {
  const _$GraphDrawnImpl(this.graph, this.builder);

  @override
  final Graph graph;
  @override
  final BuchheimWalkerConfiguration builder;

  @override
  String toString() {
    return 'TreeDrawState.graphDrawn(graph: $graph, builder: $builder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphDrawnImpl &&
            (identical(other.graph, graph) || other.graph == graph) &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, graph, builder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphDrawnImplCopyWith<_$GraphDrawnImpl> get copyWith =>
      __$$GraphDrawnImplCopyWithImpl<_$GraphDrawnImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Graph graph, BuchheimWalkerConfiguration builder)
        graphDrawn,
  }) {
    return graphDrawn(graph, builder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Graph graph, BuchheimWalkerConfiguration builder)?
        graphDrawn,
  }) {
    return graphDrawn?.call(graph, builder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Graph graph, BuchheimWalkerConfiguration builder)?
        graphDrawn,
    required TResult orElse(),
  }) {
    if (graphDrawn != null) {
      return graphDrawn(graph, builder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GraphDrawn value) graphDrawn,
  }) {
    return graphDrawn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GraphDrawn value)? graphDrawn,
  }) {
    return graphDrawn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GraphDrawn value)? graphDrawn,
    required TResult orElse(),
  }) {
    if (graphDrawn != null) {
      return graphDrawn(this);
    }
    return orElse();
  }
}

abstract class _GraphDrawn implements TreeDrawState {
  const factory _GraphDrawn(
          final Graph graph, final BuchheimWalkerConfiguration builder) =
      _$GraphDrawnImpl;

  Graph get graph;
  BuchheimWalkerConfiguration get builder;
  @JsonKey(ignore: true)
  _$$GraphDrawnImplCopyWith<_$GraphDrawnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
