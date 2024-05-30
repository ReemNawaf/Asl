// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(Option<AppUser> existingUserOption) edited,
    required TResult Function(String name) nameChanged,
    required TResult Function(String avatar) avatarChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(Option<AppUser> existingUserOption)? edited,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String avatar)? avatarChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(Option<AppUser> existingUserOption)? edited,
    TResult Function(String name)? nameChanged,
    TResult Function(String avatar)? avatarChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormEventCopyWith<$Res> {
  factory $UserFormEventCopyWith(
          UserFormEvent value, $Res Function(UserFormEvent) then) =
      _$UserFormEventCopyWithImpl<$Res, UserFormEvent>;
}

/// @nodoc
class _$UserFormEventCopyWithImpl<$Res, $Val extends UserFormEvent>
    implements $UserFormEventCopyWith<$Res> {
  _$UserFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<AppUser> initialUserOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialUserOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialUserOption
          ? _value.initialUserOption
          : initialUserOption // ignore: cast_nullable_to_non_nullable
              as Option<AppUser>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialUserOption);

  @override
  final Option<AppUser> initialUserOption;

  @override
  String toString() {
    return 'UserFormEvent.initialized(initialUserOption: $initialUserOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialUserOption, initialUserOption) ||
                other.initialUserOption == initialUserOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialUserOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(Option<AppUser> existingUserOption) edited,
    required TResult Function(String name) nameChanged,
    required TResult Function(String avatar) avatarChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialUserOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(Option<AppUser> existingUserOption)? edited,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String avatar)? avatarChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialUserOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(Option<AppUser> existingUserOption)? edited,
    TResult Function(String name)? nameChanged,
    TResult Function(String avatar)? avatarChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialUserOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements UserFormEvent {
  const factory _Initialized(final Option<AppUser> initialUserOption) =
      _$InitializedImpl;

  Option<AppUser> get initialUserOption;
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
  $Res call({Option<AppUser> existingUserOption});
}

/// @nodoc
class __$$EditedImplCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res, _$EditedImpl>
    implements _$$EditedImplCopyWith<$Res> {
  __$$EditedImplCopyWithImpl(
      _$EditedImpl _value, $Res Function(_$EditedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? existingUserOption = null,
  }) {
    return _then(_$EditedImpl(
      null == existingUserOption
          ? _value.existingUserOption
          : existingUserOption // ignore: cast_nullable_to_non_nullable
              as Option<AppUser>,
    ));
  }
}

/// @nodoc

class _$EditedImpl implements _Edited {
  const _$EditedImpl(this.existingUserOption);

  @override
  final Option<AppUser> existingUserOption;

  @override
  String toString() {
    return 'UserFormEvent.edited(existingUserOption: $existingUserOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditedImpl &&
            (identical(other.existingUserOption, existingUserOption) ||
                other.existingUserOption == existingUserOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, existingUserOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      __$$EditedImplCopyWithImpl<_$EditedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(Option<AppUser> existingUserOption) edited,
    required TResult Function(String name) nameChanged,
    required TResult Function(String avatar) avatarChanged,
    required TResult Function() saved,
  }) {
    return edited(existingUserOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(Option<AppUser> existingUserOption)? edited,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String avatar)? avatarChanged,
    TResult? Function()? saved,
  }) {
    return edited?.call(existingUserOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(Option<AppUser> existingUserOption)? edited,
    TResult Function(String name)? nameChanged,
    TResult Function(String avatar)? avatarChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(existingUserOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements UserFormEvent {
  const factory _Edited(final Option<AppUser> existingUserOption) =
      _$EditedImpl;

  Option<AppUser> get existingUserOption;
  @JsonKey(ignore: true)
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'UserFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(Option<AppUser> existingUserOption) edited,
    required TResult Function(String name) nameChanged,
    required TResult Function(String avatar) avatarChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(Option<AppUser> existingUserOption)? edited,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String avatar)? avatarChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(Option<AppUser> existingUserOption)? edited,
    TResult Function(String name)? nameChanged,
    TResult Function(String avatar)? avatarChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements UserFormEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AvatarChangedImplCopyWith<$Res> {
  factory _$$AvatarChangedImplCopyWith(
          _$AvatarChangedImpl value, $Res Function(_$AvatarChangedImpl) then) =
      __$$AvatarChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String avatar});
}

/// @nodoc
class __$$AvatarChangedImplCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res, _$AvatarChangedImpl>
    implements _$$AvatarChangedImplCopyWith<$Res> {
  __$$AvatarChangedImplCopyWithImpl(
      _$AvatarChangedImpl _value, $Res Function(_$AvatarChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
  }) {
    return _then(_$AvatarChangedImpl(
      null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AvatarChangedImpl implements _AvatarChanged {
  const _$AvatarChangedImpl(this.avatar);

  @override
  final String avatar;

  @override
  String toString() {
    return 'UserFormEvent.avatarChanged(avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarChangedImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarChangedImplCopyWith<_$AvatarChangedImpl> get copyWith =>
      __$$AvatarChangedImplCopyWithImpl<_$AvatarChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(Option<AppUser> existingUserOption) edited,
    required TResult Function(String name) nameChanged,
    required TResult Function(String avatar) avatarChanged,
    required TResult Function() saved,
  }) {
    return avatarChanged(avatar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(Option<AppUser> existingUserOption)? edited,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String avatar)? avatarChanged,
    TResult? Function()? saved,
  }) {
    return avatarChanged?.call(avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(Option<AppUser> existingUserOption)? edited,
    TResult Function(String name)? nameChanged,
    TResult Function(String avatar)? avatarChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return avatarChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(this);
    }
    return orElse();
  }
}

abstract class _AvatarChanged implements UserFormEvent {
  const factory _AvatarChanged(final String avatar) = _$AvatarChangedImpl;

  String get avatar;
  @JsonKey(ignore: true)
  _$$AvatarChangedImplCopyWith<_$AvatarChangedImpl> get copyWith =>
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
    extends _$UserFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'UserFormEvent.saved()';
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
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(Option<AppUser> existingUserOption) edited,
    required TResult Function(String name) nameChanged,
    required TResult Function(String avatar) avatarChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(Option<AppUser> existingUserOption)? edited,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String avatar)? avatarChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(Option<AppUser> existingUserOption)? edited,
    TResult Function(String name)? nameChanged,
    TResult Function(String avatar)? avatarChanged,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements UserFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$UserFormState {
  AppUser get user => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing =>
      throw _privateConstructorUsedError; // only for update existing ones
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isViewing => throw _privateConstructorUsedError;
  Option<Either<UserFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFormStateCopyWith<UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res, UserFormState>;
  @useResult
  $Res call(
      {AppUser user,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      bool isViewing,
      Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserFormStateCopyWithImpl<$Res, $Val extends UserFormState>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
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
              as Option<Either<UserFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserFormStateImplCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$$UserFormStateImplCopyWith(
          _$UserFormStateImpl value, $Res Function(_$UserFormStateImpl) then) =
      __$$UserFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser user,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      bool isViewing,
      Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserFormStateImplCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res, _$UserFormStateImpl>
    implements _$$UserFormStateImplCopyWith<$Res> {
  __$$UserFormStateImplCopyWithImpl(
      _$UserFormStateImpl _value, $Res Function(_$UserFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$UserFormStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
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
              as Option<Either<UserFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$UserFormStateImpl implements _UserFormState {
  const _$UserFormStateImpl(
      {required this.user,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.isViewing,
      required this.saveFailureOrSuccessOption});

  @override
  final AppUser user;
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
  final Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserFormState(user: $user, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, isViewing: $isViewing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFormStateImpl &&
            (identical(other.user, user) || other.user == user) &&
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
  int get hashCode => Object.hash(runtimeType, user, showErrorMessages,
      isEditing, isSaving, isViewing, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFormStateImplCopyWith<_$UserFormStateImpl> get copyWith =>
      __$$UserFormStateImplCopyWithImpl<_$UserFormStateImpl>(this, _$identity);
}

abstract class _UserFormState implements UserFormState {
  const factory _UserFormState(
      {required final AppUser user,
      required final AutovalidateMode showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final bool isViewing,
      required final Option<Either<UserFailure, Unit>>
          saveFailureOrSuccessOption}) = _$UserFormStateImpl;

  @override
  AppUser get user;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isEditing;
  @override // only for update existing ones
  bool get isSaving;
  @override
  bool get isViewing;
  @override
  Option<Either<UserFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$UserFormStateImplCopyWith<_$UserFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
