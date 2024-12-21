// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_option_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShareOptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int shareOption) initialized,
    required TResult Function(int shareOption) updated,
    required TResult Function() sharedLinkCopied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int shareOption)? initialized,
    TResult? Function(int shareOption)? updated,
    TResult? Function()? sharedLinkCopied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int shareOption)? initialized,
    TResult Function(int shareOption)? updated,
    TResult Function()? sharedLinkCopied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Updated value) updated,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Updated value)? updated,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareOptionEventCopyWith<$Res> {
  factory $ShareOptionEventCopyWith(
          ShareOptionEvent value, $Res Function(ShareOptionEvent) then) =
      _$ShareOptionEventCopyWithImpl<$Res, ShareOptionEvent>;
}

/// @nodoc
class _$ShareOptionEventCopyWithImpl<$Res, $Val extends ShareOptionEvent>
    implements $ShareOptionEventCopyWith<$Res> {
  _$ShareOptionEventCopyWithImpl(this._value, this._then);

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
  $Res call({int shareOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ShareOptionEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shareOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == shareOption
          ? _value.shareOption
          : shareOption // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.shareOption);

  @override
  final int shareOption;

  @override
  String toString() {
    return 'ShareOptionEvent.initialized(shareOption: $shareOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.shareOption, shareOption) ||
                other.shareOption == shareOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shareOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int shareOption) initialized,
    required TResult Function(int shareOption) updated,
    required TResult Function() sharedLinkCopied,
  }) {
    return initialized(shareOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int shareOption)? initialized,
    TResult? Function(int shareOption)? updated,
    TResult? Function()? sharedLinkCopied,
  }) {
    return initialized?.call(shareOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int shareOption)? initialized,
    TResult Function(int shareOption)? updated,
    TResult Function()? sharedLinkCopied,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(shareOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Updated value) updated,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Updated value)? updated,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ShareOptionEvent {
  const factory _Initialized(final int shareOption) = _$InitializedImpl;

  int get shareOption;
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
  $Res call({int shareOption});
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$ShareOptionEventCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shareOption = null,
  }) {
    return _then(_$UpdatedImpl(
      null == shareOption
          ? _value.shareOption
          : shareOption // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(this.shareOption);

  @override
  final int shareOption;

  @override
  String toString() {
    return 'ShareOptionEvent.updated(shareOption: $shareOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.shareOption, shareOption) ||
                other.shareOption == shareOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shareOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int shareOption) initialized,
    required TResult Function(int shareOption) updated,
    required TResult Function() sharedLinkCopied,
  }) {
    return updated(shareOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int shareOption)? initialized,
    TResult? Function(int shareOption)? updated,
    TResult? Function()? sharedLinkCopied,
  }) {
    return updated?.call(shareOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int shareOption)? initialized,
    TResult Function(int shareOption)? updated,
    TResult Function()? sharedLinkCopied,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(shareOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Updated value) updated,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Updated value)? updated,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements ShareOptionEvent {
  const factory _Updated(final int shareOption) = _$UpdatedImpl;

  int get shareOption;
  @JsonKey(ignore: true)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SharedLinkCopiedImplCopyWith<$Res> {
  factory _$$SharedLinkCopiedImplCopyWith(_$SharedLinkCopiedImpl value,
          $Res Function(_$SharedLinkCopiedImpl) then) =
      __$$SharedLinkCopiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SharedLinkCopiedImplCopyWithImpl<$Res>
    extends _$ShareOptionEventCopyWithImpl<$Res, _$SharedLinkCopiedImpl>
    implements _$$SharedLinkCopiedImplCopyWith<$Res> {
  __$$SharedLinkCopiedImplCopyWithImpl(_$SharedLinkCopiedImpl _value,
      $Res Function(_$SharedLinkCopiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SharedLinkCopiedImpl implements _SharedLinkCopied {
  const _$SharedLinkCopiedImpl();

  @override
  String toString() {
    return 'ShareOptionEvent.sharedLinkCopied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SharedLinkCopiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int shareOption) initialized,
    required TResult Function(int shareOption) updated,
    required TResult Function() sharedLinkCopied,
  }) {
    return sharedLinkCopied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int shareOption)? initialized,
    TResult? Function(int shareOption)? updated,
    TResult? Function()? sharedLinkCopied,
  }) {
    return sharedLinkCopied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int shareOption)? initialized,
    TResult Function(int shareOption)? updated,
    TResult Function()? sharedLinkCopied,
    required TResult orElse(),
  }) {
    if (sharedLinkCopied != null) {
      return sharedLinkCopied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Updated value) updated,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
  }) {
    return sharedLinkCopied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
  }) {
    return sharedLinkCopied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Updated value)? updated,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    required TResult orElse(),
  }) {
    if (sharedLinkCopied != null) {
      return sharedLinkCopied(this);
    }
    return orElse();
  }
}

abstract class _SharedLinkCopied implements ShareOptionEvent {
  const factory _SharedLinkCopied() = _$SharedLinkCopiedImpl;
}

/// @nodoc
mixin _$ShareOptionState {
  int? get shareOption => throw _privateConstructorUsedError;
  bool get isLinkCopied => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareOptionStateCopyWith<ShareOptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareOptionStateCopyWith<$Res> {
  factory $ShareOptionStateCopyWith(
          ShareOptionState value, $Res Function(ShareOptionState) then) =
      _$ShareOptionStateCopyWithImpl<$Res, ShareOptionState>;
  @useResult
  $Res call({int? shareOption, bool isLinkCopied});
}

/// @nodoc
class _$ShareOptionStateCopyWithImpl<$Res, $Val extends ShareOptionState>
    implements $ShareOptionStateCopyWith<$Res> {
  _$ShareOptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shareOption = freezed,
    Object? isLinkCopied = null,
  }) {
    return _then(_value.copyWith(
      shareOption: freezed == shareOption
          ? _value.shareOption
          : shareOption // ignore: cast_nullable_to_non_nullable
              as int?,
      isLinkCopied: null == isLinkCopied
          ? _value.isLinkCopied
          : isLinkCopied // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShareOptionStateImplCopyWith<$Res>
    implements $ShareOptionStateCopyWith<$Res> {
  factory _$$ShareOptionStateImplCopyWith(_$ShareOptionStateImpl value,
          $Res Function(_$ShareOptionStateImpl) then) =
      __$$ShareOptionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? shareOption, bool isLinkCopied});
}

/// @nodoc
class __$$ShareOptionStateImplCopyWithImpl<$Res>
    extends _$ShareOptionStateCopyWithImpl<$Res, _$ShareOptionStateImpl>
    implements _$$ShareOptionStateImplCopyWith<$Res> {
  __$$ShareOptionStateImplCopyWithImpl(_$ShareOptionStateImpl _value,
      $Res Function(_$ShareOptionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shareOption = freezed,
    Object? isLinkCopied = null,
  }) {
    return _then(_$ShareOptionStateImpl(
      shareOption: freezed == shareOption
          ? _value.shareOption
          : shareOption // ignore: cast_nullable_to_non_nullable
              as int?,
      isLinkCopied: null == isLinkCopied
          ? _value.isLinkCopied
          : isLinkCopied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShareOptionStateImpl implements _ShareOptionState {
  const _$ShareOptionStateImpl({this.shareOption, required this.isLinkCopied});

  @override
  final int? shareOption;
  @override
  final bool isLinkCopied;

  @override
  String toString() {
    return 'ShareOptionState(shareOption: $shareOption, isLinkCopied: $isLinkCopied)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareOptionStateImpl &&
            (identical(other.shareOption, shareOption) ||
                other.shareOption == shareOption) &&
            (identical(other.isLinkCopied, isLinkCopied) ||
                other.isLinkCopied == isLinkCopied));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shareOption, isLinkCopied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareOptionStateImplCopyWith<_$ShareOptionStateImpl> get copyWith =>
      __$$ShareOptionStateImplCopyWithImpl<_$ShareOptionStateImpl>(
          this, _$identity);
}

abstract class _ShareOptionState implements ShareOptionState {
  const factory _ShareOptionState(
      {final int? shareOption,
      required final bool isLinkCopied}) = _$ShareOptionStateImpl;

  @override
  int? get shareOption;
  @override
  bool get isLinkCopied;
  @override
  @JsonKey(ignore: true)
  _$$ShareOptionStateImplCopyWith<_$ShareOptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
