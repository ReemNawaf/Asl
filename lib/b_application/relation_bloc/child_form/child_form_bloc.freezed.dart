// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChildFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TNode node) initialized,
    required TResult Function(String name, UniqueId relationId, Gender gender)
        addChild,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(String name, UniqueId relationId, Gender gender)?
        addChild,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(String name, UniqueId relationId, Gender gender)? addChild,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddChild value) addChild,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AddChild value)? addChild,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddChild value)? addChild,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildFormEventCopyWith<$Res> {
  factory $ChildFormEventCopyWith(
          ChildFormEvent value, $Res Function(ChildFormEvent) then) =
      _$ChildFormEventCopyWithImpl<$Res, ChildFormEvent>;
}

/// @nodoc
class _$ChildFormEventCopyWithImpl<$Res, $Val extends ChildFormEvent>
    implements $ChildFormEventCopyWith<$Res> {
  _$ChildFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({TNode node});

  $TNodeCopyWith<$Res> get node;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ChildFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = null,
  }) {
    return _then(_$InitializedImpl(
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

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.node);

  @override
  final TNode node;

  @override
  String toString() {
    return 'ChildFormEvent.initialized(node: $node)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.node, node) || other.node == node));
  }

  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TNode node) initialized,
    required TResult Function(String name, UniqueId relationId, Gender gender)
        addChild,
    required TResult Function() saved,
  }) {
    return initialized(node);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(String name, UniqueId relationId, Gender gender)?
        addChild,
    TResult? Function()? saved,
  }) {
    return initialized?.call(node);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(String name, UniqueId relationId, Gender gender)? addChild,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(node);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddChild value) addChild,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AddChild value)? addChild,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddChild value)? addChild,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ChildFormEvent {
  const factory _Initialized(final TNode node) = _$InitializedImpl;

  TNode get node;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddChildImplCopyWith<$Res> {
  factory _$$AddChildImplCopyWith(
          _$AddChildImpl value, $Res Function(_$AddChildImpl) then) =
      __$$AddChildImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, UniqueId relationId, Gender gender});
}

/// @nodoc
class __$$AddChildImplCopyWithImpl<$Res>
    extends _$ChildFormEventCopyWithImpl<$Res, _$AddChildImpl>
    implements _$$AddChildImplCopyWith<$Res> {
  __$$AddChildImplCopyWithImpl(
      _$AddChildImpl _value, $Res Function(_$AddChildImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? relationId = null,
    Object? gender = null,
  }) {
    return _then(_$AddChildImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
    ));
  }
}

/// @nodoc

class _$AddChildImpl implements _AddChild {
  const _$AddChildImpl(this.name, this.relationId, this.gender);

  @override
  final String name;
  @override
  final UniqueId relationId;
  @override
  final Gender gender;

  @override
  String toString() {
    return 'ChildFormEvent.addChild(name: $name, relationId: $relationId, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddChildImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.relationId, relationId) ||
                other.relationId == relationId) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, relationId, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddChildImplCopyWith<_$AddChildImpl> get copyWith =>
      __$$AddChildImplCopyWithImpl<_$AddChildImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TNode node) initialized,
    required TResult Function(String name, UniqueId relationId, Gender gender)
        addChild,
    required TResult Function() saved,
  }) {
    return addChild(name, relationId, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(String name, UniqueId relationId, Gender gender)?
        addChild,
    TResult? Function()? saved,
  }) {
    return addChild?.call(name, relationId, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(String name, UniqueId relationId, Gender gender)? addChild,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (addChild != null) {
      return addChild(name, relationId, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddChild value) addChild,
    required TResult Function(_Saved value) saved,
  }) {
    return addChild(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AddChild value)? addChild,
    TResult? Function(_Saved value)? saved,
  }) {
    return addChild?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddChild value)? addChild,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (addChild != null) {
      return addChild(this);
    }
    return orElse();
  }
}

abstract class _AddChild implements ChildFormEvent {
  const factory _AddChild(
          final String name, final UniqueId relationId, final Gender gender) =
      _$AddChildImpl;

  String get name;
  UniqueId get relationId;
  Gender get gender;
  @JsonKey(ignore: true)
  _$$AddChildImplCopyWith<_$AddChildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$ChildFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'ChildFormEvent.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TNode node) initialized,
    required TResult Function(String name, UniqueId relationId, Gender gender)
        addChild,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(String name, UniqueId relationId, Gender gender)?
        addChild,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(String name, UniqueId relationId, Gender gender)? addChild,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddChild value) addChild,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AddChild value)? addChild,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddChild value)? addChild,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ChildFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$ChildFormState {
  TNode get node => throw _privateConstructorUsedError;
  TNode get child => throw _privateConstructorUsedError;
  UniqueId get relationId => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isViewing => throw _privateConstructorUsedError;
  bool get isAdding => throw _privateConstructorUsedError;
  Option<Either<RelationFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildFormStateCopyWith<ChildFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildFormStateCopyWith<$Res> {
  factory $ChildFormStateCopyWith(
          ChildFormState value, $Res Function(ChildFormState) then) =
      _$ChildFormStateCopyWithImpl<$Res, ChildFormState>;
  @useResult
  $Res call(
      {TNode node,
      TNode child,
      UniqueId relationId,
      AutovalidateMode showErrorMessages,
      bool isSaving,
      bool isViewing,
      bool isAdding,
      Option<Either<RelationFailure, Unit>> saveFailureOrSuccessOption});

  $TNodeCopyWith<$Res> get node;
  $TNodeCopyWith<$Res> get child;
}

/// @nodoc
class _$ChildFormStateCopyWithImpl<$Res, $Val extends ChildFormState>
    implements $ChildFormStateCopyWith<$Res> {
  _$ChildFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = null,
    Object? child = null,
    Object? relationId = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? isAdding = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      node: null == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as TNode,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as TNode,
      relationId: null == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewing: null == isViewing
          ? _value.isViewing
          : isViewing // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RelationFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get node {
    return $TNodeCopyWith<$Res>(_value.node, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get child {
    return $TNodeCopyWith<$Res>(_value.child, (value) {
      return _then(_value.copyWith(child: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChildFormStateImplCopyWith<$Res>
    implements $ChildFormStateCopyWith<$Res> {
  factory _$$ChildFormStateImplCopyWith(_$ChildFormStateImpl value,
          $Res Function(_$ChildFormStateImpl) then) =
      __$$ChildFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TNode node,
      TNode child,
      UniqueId relationId,
      AutovalidateMode showErrorMessages,
      bool isSaving,
      bool isViewing,
      bool isAdding,
      Option<Either<RelationFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TNodeCopyWith<$Res> get node;
  @override
  $TNodeCopyWith<$Res> get child;
}

/// @nodoc
class __$$ChildFormStateImplCopyWithImpl<$Res>
    extends _$ChildFormStateCopyWithImpl<$Res, _$ChildFormStateImpl>
    implements _$$ChildFormStateImplCopyWith<$Res> {
  __$$ChildFormStateImplCopyWithImpl(
      _$ChildFormStateImpl _value, $Res Function(_$ChildFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = null,
    Object? child = null,
    Object? relationId = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? isAdding = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$ChildFormStateImpl(
      node: null == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as TNode,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as TNode,
      relationId: null == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewing: null == isViewing
          ? _value.isViewing
          : isViewing // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RelationFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ChildFormStateImpl implements _ChildFormState {
  const _$ChildFormStateImpl(
      {required this.node,
      required this.child,
      required this.relationId,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isViewing,
      required this.isAdding,
      required this.saveFailureOrSuccessOption});

  @override
  final TNode node;
  @override
  final TNode child;
  @override
  final UniqueId relationId;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isViewing;
  @override
  final bool isAdding;
  @override
  final Option<Either<RelationFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChildFormState(node: $node, child: $child, relationId: $relationId, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isViewing: $isViewing, isAdding: $isAdding, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildFormStateImpl &&
            (identical(other.node, node) || other.node == node) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.relationId, relationId) ||
                other.relationId == relationId) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isViewing, isViewing) ||
                other.isViewing == isViewing) &&
            (identical(other.isAdding, isAdding) ||
                other.isAdding == isAdding) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      node,
      child,
      relationId,
      showErrorMessages,
      isSaving,
      isViewing,
      isAdding,
      saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildFormStateImplCopyWith<_$ChildFormStateImpl> get copyWith =>
      __$$ChildFormStateImplCopyWithImpl<_$ChildFormStateImpl>(
          this, _$identity);
}

abstract class _ChildFormState implements ChildFormState {
  const factory _ChildFormState(
      {required final TNode node,
      required final TNode child,
      required final UniqueId relationId,
      required final AutovalidateMode showErrorMessages,
      required final bool isSaving,
      required final bool isViewing,
      required final bool isAdding,
      required final Option<Either<RelationFailure, Unit>>
          saveFailureOrSuccessOption}) = _$ChildFormStateImpl;

  @override
  TNode get node;
  @override
  TNode get child;
  @override
  UniqueId get relationId;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isSaving;
  @override
  bool get isViewing;
  @override
  bool get isAdding;
  @override
  Option<Either<RelationFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$ChildFormStateImplCopyWith<_$ChildFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
