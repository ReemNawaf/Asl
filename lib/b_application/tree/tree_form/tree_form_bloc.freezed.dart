// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreeFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Tree> initialTreeOption) initialized,
    required TResult Function(Option<Tree> existingTreeOption) edited,
    required TResult Function(String title) changeName,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Tree> initialTreeOption)? initialized,
    TResult? Function(Option<Tree> existingTreeOption)? edited,
    TResult? Function(String title)? changeName,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Tree> initialTreeOption)? initialized,
    TResult Function(Option<Tree> existingTreeOption)? edited,
    TResult Function(String title)? changeName,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_TitleChanged value) changeName,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_TitleChanged value)? changeName,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_TitleChanged value)? changeName,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeFormEventCopyWith<$Res> {
  factory $TreeFormEventCopyWith(
          TreeFormEvent value, $Res Function(TreeFormEvent) then) =
      _$TreeFormEventCopyWithImpl<$Res, TreeFormEvent>;
}

/// @nodoc
class _$TreeFormEventCopyWithImpl<$Res, $Val extends TreeFormEvent>
    implements $TreeFormEventCopyWith<$Res> {
  _$TreeFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<Tree> initialTreeOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$TreeFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialTreeOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialTreeOption
          ? _value.initialTreeOption
          : initialTreeOption // ignore: cast_nullable_to_non_nullable
              as Option<Tree>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialTreeOption);

  @override
  final Option<Tree> initialTreeOption;

  @override
  String toString() {
    return 'TreeFormEvent.initialized(initialTreeOption: $initialTreeOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialTreeOption, initialTreeOption) ||
                other.initialTreeOption == initialTreeOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialTreeOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Tree> initialTreeOption) initialized,
    required TResult Function(Option<Tree> existingTreeOption) edited,
    required TResult Function(String title) changeName,
    required TResult Function() saved,
  }) {
    return initialized(initialTreeOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Tree> initialTreeOption)? initialized,
    TResult? Function(Option<Tree> existingTreeOption)? edited,
    TResult? Function(String title)? changeName,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialTreeOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Tree> initialTreeOption)? initialized,
    TResult Function(Option<Tree> existingTreeOption)? edited,
    TResult Function(String title)? changeName,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialTreeOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_TitleChanged value) changeName,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_TitleChanged value)? changeName,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_TitleChanged value)? changeName,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TreeFormEvent {
  const factory _Initialized(final Option<Tree> initialTreeOption) =
      _$InitializedImpl;

  Option<Tree> get initialTreeOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditedImplCopyWith<$Res> {
  factory _$$EditedImplCopyWith(
          _$EditedImpl value, $Res Function(_$EditedImpl) then) =
      __$$EditedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Tree> existingTreeOption});
}

/// @nodoc
class __$$EditedImplCopyWithImpl<$Res>
    extends _$TreeFormEventCopyWithImpl<$Res, _$EditedImpl>
    implements _$$EditedImplCopyWith<$Res> {
  __$$EditedImplCopyWithImpl(
      _$EditedImpl _value, $Res Function(_$EditedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? existingTreeOption = null,
  }) {
    return _then(_$EditedImpl(
      null == existingTreeOption
          ? _value.existingTreeOption
          : existingTreeOption // ignore: cast_nullable_to_non_nullable
              as Option<Tree>,
    ));
  }
}

/// @nodoc

class _$EditedImpl implements _Edited {
  const _$EditedImpl(this.existingTreeOption);

  @override
  final Option<Tree> existingTreeOption;

  @override
  String toString() {
    return 'TreeFormEvent.edited(existingTreeOption: $existingTreeOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditedImpl &&
            (identical(other.existingTreeOption, existingTreeOption) ||
                other.existingTreeOption == existingTreeOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, existingTreeOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      __$$EditedImplCopyWithImpl<_$EditedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Tree> initialTreeOption) initialized,
    required TResult Function(Option<Tree> existingTreeOption) edited,
    required TResult Function(String title) changeName,
    required TResult Function() saved,
  }) {
    return edited(existingTreeOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Tree> initialTreeOption)? initialized,
    TResult? Function(Option<Tree> existingTreeOption)? edited,
    TResult? Function(String title)? changeName,
    TResult? Function()? saved,
  }) {
    return edited?.call(existingTreeOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Tree> initialTreeOption)? initialized,
    TResult Function(Option<Tree> existingTreeOption)? edited,
    TResult Function(String title)? changeName,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(existingTreeOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_TitleChanged value) changeName,
    required TResult Function(_Saved value) saved,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_TitleChanged value)? changeName,
    TResult? Function(_Saved value)? saved,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_TitleChanged value)? changeName,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements TreeFormEvent {
  const factory _Edited(final Option<Tree> existingTreeOption) = _$EditedImpl;

  Option<Tree> get existingTreeOption;
  @JsonKey(ignore: true)
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
          _$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) =
      __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$TreeFormEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
      _$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangedImpl implements _TitleChanged {
  const _$TitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'TreeFormEvent.changeName(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Tree> initialTreeOption) initialized,
    required TResult Function(Option<Tree> existingTreeOption) edited,
    required TResult Function(String title) changeName,
    required TResult Function() saved,
  }) {
    return changeName(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Tree> initialTreeOption)? initialized,
    TResult? Function(Option<Tree> existingTreeOption)? edited,
    TResult? Function(String title)? changeName,
    TResult? Function()? saved,
  }) {
    return changeName?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Tree> initialTreeOption)? initialized,
    TResult Function(Option<Tree> existingTreeOption)? edited,
    TResult Function(String title)? changeName,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_TitleChanged value) changeName,
    required TResult Function(_Saved value) saved,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_TitleChanged value)? changeName,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_TitleChanged value)? changeName,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements TreeFormEvent {
  const factory _TitleChanged(final String title) = _$TitleChangedImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
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
    extends _$TreeFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'TreeFormEvent.saved()';
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
    required TResult Function(Option<Tree> initialTreeOption) initialized,
    required TResult Function(Option<Tree> existingTreeOption) edited,
    required TResult Function(String title) changeName,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Tree> initialTreeOption)? initialized,
    TResult? Function(Option<Tree> existingTreeOption)? edited,
    TResult? Function(String title)? changeName,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Tree> initialTreeOption)? initialized,
    TResult Function(Option<Tree> existingTreeOption)? edited,
    TResult Function(String title)? changeName,
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
    required TResult Function(_Edited value) edited,
    required TResult Function(_TitleChanged value) changeName,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_TitleChanged value)? changeName,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_TitleChanged value)? changeName,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements TreeFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$TreeFormState {
  Tree get tree => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing =>
      throw _privateConstructorUsedError; // only for update existing ones
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isViewing => throw _privateConstructorUsedError;
  Option<Either<TreeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeFormStateCopyWith<TreeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeFormStateCopyWith<$Res> {
  factory $TreeFormStateCopyWith(
          TreeFormState value, $Res Function(TreeFormState) then) =
      _$TreeFormStateCopyWithImpl<$Res, TreeFormState>;
  @useResult
  $Res call(
      {Tree tree,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      bool isViewing,
      Option<Either<TreeFailure, Unit>> saveFailureOrSuccessOption});

  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class _$TreeFormStateCopyWithImpl<$Res, $Val extends TreeFormState>
    implements $TreeFormStateCopyWith<$Res> {
  _$TreeFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewing: null == isViewing
          ? _value.isViewing
          : isViewing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TreeFailure, Unit>>,
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
abstract class _$$TreeFormStateImplCopyWith<$Res>
    implements $TreeFormStateCopyWith<$Res> {
  factory _$$TreeFormStateImplCopyWith(
          _$TreeFormStateImpl value, $Res Function(_$TreeFormStateImpl) then) =
      __$$TreeFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Tree tree,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      bool isViewing,
      Option<Either<TreeFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class __$$TreeFormStateImplCopyWithImpl<$Res>
    extends _$TreeFormStateCopyWithImpl<$Res, _$TreeFormStateImpl>
    implements _$$TreeFormStateImplCopyWith<$Res> {
  __$$TreeFormStateImplCopyWithImpl(
      _$TreeFormStateImpl _value, $Res Function(_$TreeFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$TreeFormStateImpl(
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewing: null == isViewing
          ? _value.isViewing
          : isViewing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TreeFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$TreeFormStateImpl implements _TreeFormState {
  const _$TreeFormStateImpl(
      {required this.tree,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.isViewing,
      required this.saveFailureOrSuccessOption});

  @override
  final Tree tree;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isEditing;
// only for update existing ones
  @override
  final bool isSaving;
  @override
  final bool isViewing;
  @override
  final Option<Either<TreeFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TreeFormState(tree: $tree, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, isViewing: $isViewing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeFormStateImpl &&
            (identical(other.tree, tree) || other.tree == tree) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isViewing, isViewing) ||
                other.isViewing == isViewing) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tree, showErrorMessages,
      isEditing, isSaving, isViewing, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeFormStateImplCopyWith<_$TreeFormStateImpl> get copyWith =>
      __$$TreeFormStateImplCopyWithImpl<_$TreeFormStateImpl>(this, _$identity);
}

abstract class _TreeFormState implements TreeFormState {
  const factory _TreeFormState(
      {required final Tree tree,
      required final AutovalidateMode showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final bool isViewing,
      required final Option<Either<TreeFailure, Unit>>
          saveFailureOrSuccessOption}) = _$TreeFormStateImpl;

  @override
  Tree get tree;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isEditing;
  @override // only for update existing ones
  bool get isSaving;
  @override
  bool get isViewing;
  @override
  Option<Either<TreeFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$TreeFormStateImplCopyWith<_$TreeFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
