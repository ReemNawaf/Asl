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
    required TResult Function(Tree currentTree) updated,
    required TResult Function(List<Tree> trees) updateAllTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult? Function(Tree currentTree)? updated,
    TResult? Function(List<Tree> trees)? updateAllTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult Function(Tree currentTree)? updated,
    TResult Function(List<Tree> trees)? updateAllTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Updated value) updated,
    required TResult Function(_UpdateAllTree value) updateAllTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_UpdateAllTree value)? updateAllTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Updated value)? updated,
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
    required TResult Function(Tree currentTree) updated,
    required TResult Function(List<Tree> trees) updateAllTree,
  }) {
    return initialized(currentTree, trees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult? Function(Tree currentTree)? updated,
    TResult? Function(List<Tree> trees)? updateAllTree,
  }) {
    return initialized?.call(currentTree, trees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult Function(Tree currentTree)? updated,
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
    required TResult Function(_Updated value) updated,
    required TResult Function(_UpdateAllTree value) updateAllTree,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_UpdateAllTree value)? updateAllTree,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Updated value)? updated,
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
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tree currentTree});

  $TreeCopyWith<$Res> get currentTree;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$CurrentTreeEventCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTree = null,
  }) {
    return _then(_$UpdatedImpl(
      currentTree: null == currentTree
          ? _value.currentTree
          : currentTree // ignore: cast_nullable_to_non_nullable
              as Tree,
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

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl({required this.currentTree});

  @override
  final Tree currentTree;

  @override
  String toString() {
    return 'CurrentTreeEvent.updated(currentTree: $currentTree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.currentTree, currentTree) ||
                other.currentTree == currentTree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTree);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tree currentTree, List<Tree> trees) initialized,
    required TResult Function(Tree currentTree) updated,
    required TResult Function(List<Tree> trees) updateAllTree,
  }) {
    return updated(currentTree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult? Function(Tree currentTree)? updated,
    TResult? Function(List<Tree> trees)? updateAllTree,
  }) {
    return updated?.call(currentTree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult Function(Tree currentTree)? updated,
    TResult Function(List<Tree> trees)? updateAllTree,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(currentTree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Updated value) updated,
    required TResult Function(_UpdateAllTree value) updateAllTree,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_UpdateAllTree value)? updateAllTree,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Updated value)? updated,
    TResult Function(_UpdateAllTree value)? updateAllTree,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements CurrentTreeEvent {
  const factory _Updated({required final Tree currentTree}) = _$UpdatedImpl;

  Tree get currentTree;
  @JsonKey(ignore: true)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
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
    required TResult Function(Tree currentTree) updated,
    required TResult Function(List<Tree> trees) updateAllTree,
  }) {
    return updateAllTree(trees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult? Function(Tree currentTree)? updated,
    TResult? Function(List<Tree> trees)? updateAllTree,
  }) {
    return updateAllTree?.call(trees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tree currentTree, List<Tree> trees)? initialized,
    TResult Function(Tree currentTree)? updated,
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
    required TResult Function(_Updated value) updated,
    required TResult Function(_UpdateAllTree value) updateAllTree,
  }) {
    return updateAllTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_UpdateAllTree value)? updateAllTree,
  }) {
    return updateAllTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Updated value)? updated,
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
  $Res call({Tree? currentTree, List<Tree> trees});

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
    Object? currentTree = freezed,
    Object? trees = null,
  }) {
    return _then(_value.copyWith(
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
  $Res call({Tree? currentTree, List<Tree> trees});

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
    Object? currentTree = freezed,
    Object? trees = null,
  }) {
    return _then(_$CurrentTreeStateImpl(
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
      {this.currentTree, required final List<Tree> trees})
      : _trees = trees;

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
    return 'CurrentTreeState(currentTree: $currentTree, trees: $trees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentTreeStateImpl &&
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
  _$$CurrentTreeStateImplCopyWith<_$CurrentTreeStateImpl> get copyWith =>
      __$$CurrentTreeStateImplCopyWithImpl<_$CurrentTreeStateImpl>(
          this, _$identity);
}

abstract class _CurrentTreeState implements CurrentTreeState {
  const factory _CurrentTreeState(
      {final Tree? currentTree,
      required final List<Tree> trees}) = _$CurrentTreeStateImpl;

  @override
  Tree? get currentTree;
  @override
  List<Tree> get trees;
  @override
  @JsonKey(ignore: true)
  _$$CurrentTreeStateImplCopyWith<_$CurrentTreeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
