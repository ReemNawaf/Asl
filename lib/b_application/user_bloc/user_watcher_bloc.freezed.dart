// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStarted,
    required TResult Function(Either<UserFailure, AppUser> failureOrUser)
        userReceived,
    required TResult Function() get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStarted,
    TResult? Function(Either<UserFailure, AppUser> failureOrUser)? userReceived,
    TResult? Function()? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStarted,
    TResult Function(Either<UserFailure, AppUser> failureOrUser)? userReceived,
    TResult Function()? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStarted value) getStarted,
    required TResult Function(_UserReceived value) userReceived,
    required TResult Function(_Get value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStarted value)? getStarted,
    TResult? Function(_UserReceived value)? userReceived,
    TResult? Function(_Get value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStarted value)? getStarted,
    TResult Function(_UserReceived value)? userReceived,
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWatcherEventCopyWith<$Res> {
  factory $UserWatcherEventCopyWith(
          UserWatcherEvent value, $Res Function(UserWatcherEvent) then) =
      _$UserWatcherEventCopyWithImpl<$Res, UserWatcherEvent>;
}

/// @nodoc
class _$UserWatcherEventCopyWithImpl<$Res, $Val extends UserWatcherEvent>
    implements $UserWatcherEventCopyWith<$Res> {
  _$UserWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetStartedImplCopyWith<$Res> {
  factory _$$GetStartedImplCopyWith(
          _$GetStartedImpl value, $Res Function(_$GetStartedImpl) then) =
      __$$GetStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStartedImplCopyWithImpl<$Res>
    extends _$UserWatcherEventCopyWithImpl<$Res, _$GetStartedImpl>
    implements _$$GetStartedImplCopyWith<$Res> {
  __$$GetStartedImplCopyWithImpl(
      _$GetStartedImpl _value, $Res Function(_$GetStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStartedImpl implements _GetStarted {
  const _$GetStartedImpl();

  @override
  String toString() {
    return 'UserWatcherEvent.getStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStarted,
    required TResult Function(Either<UserFailure, AppUser> failureOrUser)
        userReceived,
    required TResult Function() get,
  }) {
    return getStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStarted,
    TResult? Function(Either<UserFailure, AppUser> failureOrUser)? userReceived,
    TResult? Function()? get,
  }) {
    return getStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStarted,
    TResult Function(Either<UserFailure, AppUser> failureOrUser)? userReceived,
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (getStarted != null) {
      return getStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStarted value) getStarted,
    required TResult Function(_UserReceived value) userReceived,
    required TResult Function(_Get value) get,
  }) {
    return getStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStarted value)? getStarted,
    TResult? Function(_UserReceived value)? userReceived,
    TResult? Function(_Get value)? get,
  }) {
    return getStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStarted value)? getStarted,
    TResult Function(_UserReceived value)? userReceived,
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) {
    if (getStarted != null) {
      return getStarted(this);
    }
    return orElse();
  }
}

abstract class _GetStarted implements UserWatcherEvent {
  const factory _GetStarted() = _$GetStartedImpl;
}

/// @nodoc
abstract class _$$UserReceivedImplCopyWith<$Res> {
  factory _$$UserReceivedImplCopyWith(
          _$UserReceivedImpl value, $Res Function(_$UserReceivedImpl) then) =
      __$$UserReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<UserFailure, AppUser> failureOrUser});
}

/// @nodoc
class __$$UserReceivedImplCopyWithImpl<$Res>
    extends _$UserWatcherEventCopyWithImpl<$Res, _$UserReceivedImpl>
    implements _$$UserReceivedImplCopyWith<$Res> {
  __$$UserReceivedImplCopyWithImpl(
      _$UserReceivedImpl _value, $Res Function(_$UserReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrUser = null,
  }) {
    return _then(_$UserReceivedImpl(
      null == failureOrUser
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, AppUser>,
    ));
  }
}

/// @nodoc

class _$UserReceivedImpl implements _UserReceived {
  const _$UserReceivedImpl(this.failureOrUser);

  @override
  final Either<UserFailure, AppUser> failureOrUser;

  @override
  String toString() {
    return 'UserWatcherEvent.userReceived(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserReceivedImpl &&
            (identical(other.failureOrUser, failureOrUser) ||
                other.failureOrUser == failureOrUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserReceivedImplCopyWith<_$UserReceivedImpl> get copyWith =>
      __$$UserReceivedImplCopyWithImpl<_$UserReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStarted,
    required TResult Function(Either<UserFailure, AppUser> failureOrUser)
        userReceived,
    required TResult Function() get,
  }) {
    return userReceived(failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStarted,
    TResult? Function(Either<UserFailure, AppUser> failureOrUser)? userReceived,
    TResult? Function()? get,
  }) {
    return userReceived?.call(failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStarted,
    TResult Function(Either<UserFailure, AppUser> failureOrUser)? userReceived,
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(failureOrUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStarted value) getStarted,
    required TResult Function(_UserReceived value) userReceived,
    required TResult Function(_Get value) get,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStarted value)? getStarted,
    TResult? Function(_UserReceived value)? userReceived,
    TResult? Function(_Get value)? get,
  }) {
    return userReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStarted value)? getStarted,
    TResult Function(_UserReceived value)? userReceived,
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class _UserReceived implements UserWatcherEvent {
  const factory _UserReceived(
      final Either<UserFailure, AppUser> failureOrUser) = _$UserReceivedImpl;

  Either<UserFailure, AppUser> get failureOrUser;
  @JsonKey(ignore: true)
  _$$UserReceivedImplCopyWith<_$UserReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$UserWatcherEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetImpl implements _Get {
  const _$GetImpl();

  @override
  String toString() {
    return 'UserWatcherEvent.get()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStarted,
    required TResult Function(Either<UserFailure, AppUser> failureOrUser)
        userReceived,
    required TResult Function() get,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStarted,
    TResult? Function(Either<UserFailure, AppUser> failureOrUser)? userReceived,
    TResult? Function()? get,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStarted,
    TResult Function(Either<UserFailure, AppUser> failureOrUser)? userReceived,
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStarted value) getStarted,
    required TResult Function(_UserReceived value) userReceived,
    required TResult Function(_Get value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStarted value)? getStarted,
    TResult? Function(_UserReceived value)? userReceived,
    TResult? Function(_Get value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStarted value)? getStarted,
    TResult Function(_UserReceived value)? userReceived,
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements UserWatcherEvent {
  const factory _Get() = _$GetImpl;
}

/// @nodoc
mixin _$UserWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(AppUser appUser) loadSuccess,
    required TResult Function(UserFailure userFailure) loadFailure,
    required TResult Function(AppUser user) gettingUserSuccess,
    required TResult Function(UserFailure purchaseFailure) gettingUserFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(AppUser appUser)? loadSuccess,
    TResult? Function(UserFailure userFailure)? loadFailure,
    TResult? Function(AppUser user)? gettingUserSuccess,
    TResult? Function(UserFailure purchaseFailure)? gettingUserFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(AppUser appUser)? loadSuccess,
    TResult Function(UserFailure userFailure)? loadFailure,
    TResult Function(AppUser user)? gettingUserSuccess,
    TResult Function(UserFailure purchaseFailure)? gettingUserFailure,
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
    required TResult Function(_GettingUserSuccess value) gettingUserSuccess,
    required TResult Function(_GettingUserFailure value) gettingUserFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult? Function(_GettingUserFailure value)? gettingUserFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult Function(_GettingUserFailure value)? gettingUserFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWatcherStateCopyWith<$Res> {
  factory $UserWatcherStateCopyWith(
          UserWatcherState value, $Res Function(UserWatcherState) then) =
      _$UserWatcherStateCopyWithImpl<$Res, UserWatcherState>;
}

/// @nodoc
class _$UserWatcherStateCopyWithImpl<$Res, $Val extends UserWatcherState>
    implements $UserWatcherStateCopyWith<$Res> {
  _$UserWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$UserWatcherStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'UserWatcherState.initial()';
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
    required TResult Function(AppUser appUser) loadSuccess,
    required TResult Function(UserFailure userFailure) loadFailure,
    required TResult Function(AppUser user) gettingUserSuccess,
    required TResult Function(UserFailure purchaseFailure) gettingUserFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(AppUser appUser)? loadSuccess,
    TResult? Function(UserFailure userFailure)? loadFailure,
    TResult? Function(AppUser user)? gettingUserSuccess,
    TResult? Function(UserFailure purchaseFailure)? gettingUserFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(AppUser appUser)? loadSuccess,
    TResult Function(UserFailure userFailure)? loadFailure,
    TResult Function(AppUser user)? gettingUserSuccess,
    TResult Function(UserFailure purchaseFailure)? gettingUserFailure,
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
    required TResult Function(_GettingUserSuccess value) gettingUserSuccess,
    required TResult Function(_GettingUserFailure value) gettingUserFailure,
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
    TResult? Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult? Function(_GettingUserFailure value)? gettingUserFailure,
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
    TResult Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult Function(_GettingUserFailure value)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserWatcherState {
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
    extends _$UserWatcherStateCopyWithImpl<$Res, _$LoadInProgressImpl>
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
    return 'UserWatcherState.loadInProgress()';
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
    required TResult Function(AppUser appUser) loadSuccess,
    required TResult Function(UserFailure userFailure) loadFailure,
    required TResult Function(AppUser user) gettingUserSuccess,
    required TResult Function(UserFailure purchaseFailure) gettingUserFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(AppUser appUser)? loadSuccess,
    TResult? Function(UserFailure userFailure)? loadFailure,
    TResult? Function(AppUser user)? gettingUserSuccess,
    TResult? Function(UserFailure purchaseFailure)? gettingUserFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(AppUser appUser)? loadSuccess,
    TResult Function(UserFailure userFailure)? loadFailure,
    TResult Function(AppUser user)? gettingUserSuccess,
    TResult Function(UserFailure purchaseFailure)? gettingUserFailure,
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
    required TResult Function(_GettingUserSuccess value) gettingUserSuccess,
    required TResult Function(_GettingUserFailure value) gettingUserFailure,
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
    TResult? Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult? Function(_GettingUserFailure value)? gettingUserFailure,
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
    TResult Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult Function(_GettingUserFailure value)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements UserWatcherState {
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
    extends _$UserWatcherStateCopyWithImpl<$Res, _$InProgressImpl>
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
    return 'UserWatcherState.inProgress()';
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
    required TResult Function(AppUser appUser) loadSuccess,
    required TResult Function(UserFailure userFailure) loadFailure,
    required TResult Function(AppUser user) gettingUserSuccess,
    required TResult Function(UserFailure purchaseFailure) gettingUserFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(AppUser appUser)? loadSuccess,
    TResult? Function(UserFailure userFailure)? loadFailure,
    TResult? Function(AppUser user)? gettingUserSuccess,
    TResult? Function(UserFailure purchaseFailure)? gettingUserFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(AppUser appUser)? loadSuccess,
    TResult Function(UserFailure userFailure)? loadFailure,
    TResult Function(AppUser user)? gettingUserSuccess,
    TResult Function(UserFailure purchaseFailure)? gettingUserFailure,
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
    required TResult Function(_GettingUserSuccess value) gettingUserSuccess,
    required TResult Function(_GettingUserFailure value) gettingUserFailure,
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
    TResult? Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult? Function(_GettingUserFailure value)? gettingUserFailure,
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
    TResult Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult Function(_GettingUserFailure value)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements UserWatcherState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'UserWatcherState.loadSuccess(appUser: $appUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            (identical(other.appUser, appUser) || other.appUser == appUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser);

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
    required TResult Function(AppUser appUser) loadSuccess,
    required TResult Function(UserFailure userFailure) loadFailure,
    required TResult Function(AppUser user) gettingUserSuccess,
    required TResult Function(UserFailure purchaseFailure) gettingUserFailure,
  }) {
    return loadSuccess(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(AppUser appUser)? loadSuccess,
    TResult? Function(UserFailure userFailure)? loadFailure,
    TResult? Function(AppUser user)? gettingUserSuccess,
    TResult? Function(UserFailure purchaseFailure)? gettingUserFailure,
  }) {
    return loadSuccess?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(AppUser appUser)? loadSuccess,
    TResult Function(UserFailure userFailure)? loadFailure,
    TResult Function(AppUser user)? gettingUserSuccess,
    TResult Function(UserFailure purchaseFailure)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(appUser);
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
    required TResult Function(_GettingUserSuccess value) gettingUserSuccess,
    required TResult Function(_GettingUserFailure value) gettingUserFailure,
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
    TResult? Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult? Function(_GettingUserFailure value)? gettingUserFailure,
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
    TResult Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult Function(_GettingUserFailure value)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements UserWatcherState {
  const factory _LoadSuccess(final AppUser appUser) = _$LoadSuccessImpl;

  AppUser get appUser;
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
  $Res call({UserFailure userFailure});

  $UserFailureCopyWith<$Res> get userFailure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userFailure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == userFailure
          ? _value.userFailure
          : userFailure // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFailureCopyWith<$Res> get userFailure {
    return $UserFailureCopyWith<$Res>(_value.userFailure, (value) {
      return _then(_value.copyWith(userFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.userFailure);

  @override
  final UserFailure userFailure;

  @override
  String toString() {
    return 'UserWatcherState.loadFailure(userFailure: $userFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.userFailure, userFailure) ||
                other.userFailure == userFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userFailure);

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
    required TResult Function(AppUser appUser) loadSuccess,
    required TResult Function(UserFailure userFailure) loadFailure,
    required TResult Function(AppUser user) gettingUserSuccess,
    required TResult Function(UserFailure purchaseFailure) gettingUserFailure,
  }) {
    return loadFailure(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(AppUser appUser)? loadSuccess,
    TResult? Function(UserFailure userFailure)? loadFailure,
    TResult? Function(AppUser user)? gettingUserSuccess,
    TResult? Function(UserFailure purchaseFailure)? gettingUserFailure,
  }) {
    return loadFailure?.call(userFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(AppUser appUser)? loadSuccess,
    TResult Function(UserFailure userFailure)? loadFailure,
    TResult Function(AppUser user)? gettingUserSuccess,
    TResult Function(UserFailure purchaseFailure)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(userFailure);
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
    required TResult Function(_GettingUserSuccess value) gettingUserSuccess,
    required TResult Function(_GettingUserFailure value) gettingUserFailure,
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
    TResult? Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult? Function(_GettingUserFailure value)? gettingUserFailure,
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
    TResult Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult Function(_GettingUserFailure value)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements UserWatcherState {
  const factory _LoadFailure(final UserFailure userFailure) = _$LoadFailureImpl;

  UserFailure get userFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GettingUserSuccessImplCopyWith<$Res> {
  factory _$$GettingUserSuccessImplCopyWith(_$GettingUserSuccessImpl value,
          $Res Function(_$GettingUserSuccessImpl) then) =
      __$$GettingUserSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$GettingUserSuccessImplCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res, _$GettingUserSuccessImpl>
    implements _$$GettingUserSuccessImplCopyWith<$Res> {
  __$$GettingUserSuccessImplCopyWithImpl(_$GettingUserSuccessImpl _value,
      $Res Function(_$GettingUserSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$GettingUserSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$GettingUserSuccessImpl implements _GettingUserSuccess {
  const _$GettingUserSuccessImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'UserWatcherState.gettingUserSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingUserSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GettingUserSuccessImplCopyWith<_$GettingUserSuccessImpl> get copyWith =>
      __$$GettingUserSuccessImplCopyWithImpl<_$GettingUserSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(AppUser appUser) loadSuccess,
    required TResult Function(UserFailure userFailure) loadFailure,
    required TResult Function(AppUser user) gettingUserSuccess,
    required TResult Function(UserFailure purchaseFailure) gettingUserFailure,
  }) {
    return gettingUserSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(AppUser appUser)? loadSuccess,
    TResult? Function(UserFailure userFailure)? loadFailure,
    TResult? Function(AppUser user)? gettingUserSuccess,
    TResult? Function(UserFailure purchaseFailure)? gettingUserFailure,
  }) {
    return gettingUserSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(AppUser appUser)? loadSuccess,
    TResult Function(UserFailure userFailure)? loadFailure,
    TResult Function(AppUser user)? gettingUserSuccess,
    TResult Function(UserFailure purchaseFailure)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (gettingUserSuccess != null) {
      return gettingUserSuccess(user);
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
    required TResult Function(_GettingUserSuccess value) gettingUserSuccess,
    required TResult Function(_GettingUserFailure value) gettingUserFailure,
  }) {
    return gettingUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult? Function(_GettingUserFailure value)? gettingUserFailure,
  }) {
    return gettingUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult Function(_GettingUserFailure value)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (gettingUserSuccess != null) {
      return gettingUserSuccess(this);
    }
    return orElse();
  }
}

abstract class _GettingUserSuccess implements UserWatcherState {
  const factory _GettingUserSuccess(final AppUser user) =
      _$GettingUserSuccessImpl;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$GettingUserSuccessImplCopyWith<_$GettingUserSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GettingUserFailureImplCopyWith<$Res> {
  factory _$$GettingUserFailureImplCopyWith(_$GettingUserFailureImpl value,
          $Res Function(_$GettingUserFailureImpl) then) =
      __$$GettingUserFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserFailure purchaseFailure});

  $UserFailureCopyWith<$Res> get purchaseFailure;
}

/// @nodoc
class __$$GettingUserFailureImplCopyWithImpl<$Res>
    extends _$UserWatcherStateCopyWithImpl<$Res, _$GettingUserFailureImpl>
    implements _$$GettingUserFailureImplCopyWith<$Res> {
  __$$GettingUserFailureImplCopyWithImpl(_$GettingUserFailureImpl _value,
      $Res Function(_$GettingUserFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseFailure = null,
  }) {
    return _then(_$GettingUserFailureImpl(
      null == purchaseFailure
          ? _value.purchaseFailure
          : purchaseFailure // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFailureCopyWith<$Res> get purchaseFailure {
    return $UserFailureCopyWith<$Res>(_value.purchaseFailure, (value) {
      return _then(_value.copyWith(purchaseFailure: value));
    });
  }
}

/// @nodoc

class _$GettingUserFailureImpl implements _GettingUserFailure {
  const _$GettingUserFailureImpl(this.purchaseFailure);

  @override
  final UserFailure purchaseFailure;

  @override
  String toString() {
    return 'UserWatcherState.gettingUserFailure(purchaseFailure: $purchaseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingUserFailureImpl &&
            (identical(other.purchaseFailure, purchaseFailure) ||
                other.purchaseFailure == purchaseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GettingUserFailureImplCopyWith<_$GettingUserFailureImpl> get copyWith =>
      __$$GettingUserFailureImplCopyWithImpl<_$GettingUserFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() inProgress,
    required TResult Function(AppUser appUser) loadSuccess,
    required TResult Function(UserFailure userFailure) loadFailure,
    required TResult Function(AppUser user) gettingUserSuccess,
    required TResult Function(UserFailure purchaseFailure) gettingUserFailure,
  }) {
    return gettingUserFailure(purchaseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? inProgress,
    TResult? Function(AppUser appUser)? loadSuccess,
    TResult? Function(UserFailure userFailure)? loadFailure,
    TResult? Function(AppUser user)? gettingUserSuccess,
    TResult? Function(UserFailure purchaseFailure)? gettingUserFailure,
  }) {
    return gettingUserFailure?.call(purchaseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? inProgress,
    TResult Function(AppUser appUser)? loadSuccess,
    TResult Function(UserFailure userFailure)? loadFailure,
    TResult Function(AppUser user)? gettingUserSuccess,
    TResult Function(UserFailure purchaseFailure)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (gettingUserFailure != null) {
      return gettingUserFailure(purchaseFailure);
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
    required TResult Function(_GettingUserSuccess value) gettingUserSuccess,
    required TResult Function(_GettingUserFailure value) gettingUserFailure,
  }) {
    return gettingUserFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult? Function(_GettingUserFailure value)? gettingUserFailure,
  }) {
    return gettingUserFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GettingUserSuccess value)? gettingUserSuccess,
    TResult Function(_GettingUserFailure value)? gettingUserFailure,
    required TResult orElse(),
  }) {
    if (gettingUserFailure != null) {
      return gettingUserFailure(this);
    }
    return orElse();
  }
}

abstract class _GettingUserFailure implements UserWatcherState {
  const factory _GettingUserFailure(final UserFailure purchaseFailure) =
      _$GettingUserFailureImpl;

  UserFailure get purchaseFailure;
  @JsonKey(ignore: true)
  _$$GettingUserFailureImplCopyWith<_$GettingUserFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
