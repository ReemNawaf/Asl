// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreeSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TreeSettings? treeSettings) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(UniqueId treeId, int option)
        numberOfGenerationsChanged,
    required TResult Function(UniqueId treeId, bool isShow) showUnknownChanged,
    required TResult Function() sharedLinkCopied,
    required TResult Function(int shareOption) updateShareSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TreeSettings? treeSettings)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult? Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult? Function()? sharedLinkCopied,
    TResult? Function(int shareOption)? updateShareSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TreeSettings? treeSettings)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult Function()? sharedLinkCopied,
    TResult Function(int shareOption)? updateShareSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_NumberOfGenerationsChanged value)
        numberOfGenerationsChanged,
    required TResult Function(_ShowUnknownChanged value) showUnknownChanged,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
    required TResult Function(_UpdateShareSettings value) updateShareSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult? Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult? Function(_UpdateShareSettings value)? updateShareSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult Function(_UpdateShareSettings value)? updateShareSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeSettingsEventCopyWith<$Res> {
  factory $TreeSettingsEventCopyWith(
          TreeSettingsEvent value, $Res Function(TreeSettingsEvent) then) =
      _$TreeSettingsEventCopyWithImpl<$Res, TreeSettingsEvent>;
}

/// @nodoc
class _$TreeSettingsEventCopyWithImpl<$Res, $Val extends TreeSettingsEvent>
    implements $TreeSettingsEventCopyWith<$Res> {
  _$TreeSettingsEventCopyWithImpl(this._value, this._then);

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
  $Res call({TreeSettings? treeSettings});

  $TreeSettingsCopyWith<$Res>? get treeSettings;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$TreeSettingsEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeSettings = freezed,
  }) {
    return _then(_$InitializedImpl(
      freezed == treeSettings
          ? _value.treeSettings
          : treeSettings // ignore: cast_nullable_to_non_nullable
              as TreeSettings?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeSettingsCopyWith<$Res>? get treeSettings {
    if (_value.treeSettings == null) {
      return null;
    }

    return $TreeSettingsCopyWith<$Res>(_value.treeSettings!, (value) {
      return _then(_value.copyWith(treeSettings: value));
    });
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.treeSettings);

  @override
  final TreeSettings? treeSettings;

  @override
  String toString() {
    return 'TreeSettingsEvent.initialized(treeSettings: $treeSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.treeSettings, treeSettings) ||
                other.treeSettings == treeSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TreeSettings? treeSettings) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(UniqueId treeId, int option)
        numberOfGenerationsChanged,
    required TResult Function(UniqueId treeId, bool isShow) showUnknownChanged,
    required TResult Function() sharedLinkCopied,
    required TResult Function(int shareOption) updateShareSettings,
  }) {
    return initialized(treeSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TreeSettings? treeSettings)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult? Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult? Function()? sharedLinkCopied,
    TResult? Function(int shareOption)? updateShareSettings,
  }) {
    return initialized?.call(treeSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TreeSettings? treeSettings)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult Function()? sharedLinkCopied,
    TResult Function(int shareOption)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(treeSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_NumberOfGenerationsChanged value)
        numberOfGenerationsChanged,
    required TResult Function(_ShowUnknownChanged value) showUnknownChanged,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
    required TResult Function(_UpdateShareSettings value) updateShareSettings,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult? Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult? Function(_UpdateShareSettings value)? updateShareSettings,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult Function(_UpdateShareSettings value)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TreeSettingsEvent {
  const factory _Initialized(final TreeSettings? treeSettings) =
      _$InitializedImpl;

  TreeSettings? get treeSettings;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ZoomChangedImplCopyWith<$Res> {
  factory _$$ZoomChangedImplCopyWith(
          _$ZoomChangedImpl value, $Res Function(_$ZoomChangedImpl) then) =
      __$$ZoomChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double zoomScale});
}

/// @nodoc
class __$$ZoomChangedImplCopyWithImpl<$Res>
    extends _$TreeSettingsEventCopyWithImpl<$Res, _$ZoomChangedImpl>
    implements _$$ZoomChangedImplCopyWith<$Res> {
  __$$ZoomChangedImplCopyWithImpl(
      _$ZoomChangedImpl _value, $Res Function(_$ZoomChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoomScale = null,
  }) {
    return _then(_$ZoomChangedImpl(
      null == zoomScale
          ? _value.zoomScale
          : zoomScale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ZoomChangedImpl implements _ZoomChanged {
  const _$ZoomChangedImpl(this.zoomScale);

  @override
  final double zoomScale;

  @override
  String toString() {
    return 'TreeSettingsEvent.zoomChanged(zoomScale: $zoomScale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoomChangedImpl &&
            (identical(other.zoomScale, zoomScale) ||
                other.zoomScale == zoomScale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, zoomScale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoomChangedImplCopyWith<_$ZoomChangedImpl> get copyWith =>
      __$$ZoomChangedImplCopyWithImpl<_$ZoomChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TreeSettings? treeSettings) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(UniqueId treeId, int option)
        numberOfGenerationsChanged,
    required TResult Function(UniqueId treeId, bool isShow) showUnknownChanged,
    required TResult Function() sharedLinkCopied,
    required TResult Function(int shareOption) updateShareSettings,
  }) {
    return zoomChanged(zoomScale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TreeSettings? treeSettings)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult? Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult? Function()? sharedLinkCopied,
    TResult? Function(int shareOption)? updateShareSettings,
  }) {
    return zoomChanged?.call(zoomScale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TreeSettings? treeSettings)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult Function()? sharedLinkCopied,
    TResult Function(int shareOption)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (zoomChanged != null) {
      return zoomChanged(zoomScale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_NumberOfGenerationsChanged value)
        numberOfGenerationsChanged,
    required TResult Function(_ShowUnknownChanged value) showUnknownChanged,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
    required TResult Function(_UpdateShareSettings value) updateShareSettings,
  }) {
    return zoomChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult? Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult? Function(_UpdateShareSettings value)? updateShareSettings,
  }) {
    return zoomChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult Function(_UpdateShareSettings value)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (zoomChanged != null) {
      return zoomChanged(this);
    }
    return orElse();
  }
}

abstract class _ZoomChanged implements TreeSettingsEvent {
  const factory _ZoomChanged(final double zoomScale) = _$ZoomChangedImpl;

  double get zoomScale;
  @JsonKey(ignore: true)
  _$$ZoomChangedImplCopyWith<_$ZoomChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberOfGenerationsChangedImplCopyWith<$Res> {
  factory _$$NumberOfGenerationsChangedImplCopyWith(
          _$NumberOfGenerationsChangedImpl value,
          $Res Function(_$NumberOfGenerationsChangedImpl) then) =
      __$$NumberOfGenerationsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId treeId, int option});
}

/// @nodoc
class __$$NumberOfGenerationsChangedImplCopyWithImpl<$Res>
    extends _$TreeSettingsEventCopyWithImpl<$Res,
        _$NumberOfGenerationsChangedImpl>
    implements _$$NumberOfGenerationsChangedImplCopyWith<$Res> {
  __$$NumberOfGenerationsChangedImplCopyWithImpl(
      _$NumberOfGenerationsChangedImpl _value,
      $Res Function(_$NumberOfGenerationsChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? option = null,
  }) {
    return _then(_$NumberOfGenerationsChangedImpl(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NumberOfGenerationsChangedImpl implements _NumberOfGenerationsChanged {
  const _$NumberOfGenerationsChangedImpl(
      {required this.treeId, required this.option});

  @override
  final UniqueId treeId;
  @override
  final int option;

  @override
  String toString() {
    return 'TreeSettingsEvent.numberOfGenerationsChanged(treeId: $treeId, option: $option)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberOfGenerationsChangedImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberOfGenerationsChangedImplCopyWith<_$NumberOfGenerationsChangedImpl>
      get copyWith => __$$NumberOfGenerationsChangedImplCopyWithImpl<
          _$NumberOfGenerationsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TreeSettings? treeSettings) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(UniqueId treeId, int option)
        numberOfGenerationsChanged,
    required TResult Function(UniqueId treeId, bool isShow) showUnknownChanged,
    required TResult Function() sharedLinkCopied,
    required TResult Function(int shareOption) updateShareSettings,
  }) {
    return numberOfGenerationsChanged(treeId, option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TreeSettings? treeSettings)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult? Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult? Function()? sharedLinkCopied,
    TResult? Function(int shareOption)? updateShareSettings,
  }) {
    return numberOfGenerationsChanged?.call(treeId, option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TreeSettings? treeSettings)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult Function()? sharedLinkCopied,
    TResult Function(int shareOption)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (numberOfGenerationsChanged != null) {
      return numberOfGenerationsChanged(treeId, option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_NumberOfGenerationsChanged value)
        numberOfGenerationsChanged,
    required TResult Function(_ShowUnknownChanged value) showUnknownChanged,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
    required TResult Function(_UpdateShareSettings value) updateShareSettings,
  }) {
    return numberOfGenerationsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult? Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult? Function(_UpdateShareSettings value)? updateShareSettings,
  }) {
    return numberOfGenerationsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult Function(_UpdateShareSettings value)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (numberOfGenerationsChanged != null) {
      return numberOfGenerationsChanged(this);
    }
    return orElse();
  }
}

abstract class _NumberOfGenerationsChanged implements TreeSettingsEvent {
  const factory _NumberOfGenerationsChanged(
      {required final UniqueId treeId,
      required final int option}) = _$NumberOfGenerationsChangedImpl;

  UniqueId get treeId;
  int get option;
  @JsonKey(ignore: true)
  _$$NumberOfGenerationsChangedImplCopyWith<_$NumberOfGenerationsChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowUnknownChangedImplCopyWith<$Res> {
  factory _$$ShowUnknownChangedImplCopyWith(_$ShowUnknownChangedImpl value,
          $Res Function(_$ShowUnknownChangedImpl) then) =
      __$$ShowUnknownChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId treeId, bool isShow});
}

/// @nodoc
class __$$ShowUnknownChangedImplCopyWithImpl<$Res>
    extends _$TreeSettingsEventCopyWithImpl<$Res, _$ShowUnknownChangedImpl>
    implements _$$ShowUnknownChangedImplCopyWith<$Res> {
  __$$ShowUnknownChangedImplCopyWithImpl(_$ShowUnknownChangedImpl _value,
      $Res Function(_$ShowUnknownChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? isShow = null,
  }) {
    return _then(_$ShowUnknownChangedImpl(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowUnknownChangedImpl implements _ShowUnknownChanged {
  const _$ShowUnknownChangedImpl({required this.treeId, required this.isShow});

  @override
  final UniqueId treeId;
  @override
  final bool isShow;

  @override
  String toString() {
    return 'TreeSettingsEvent.showUnknownChanged(treeId: $treeId, isShow: $isShow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowUnknownChangedImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.isShow, isShow) || other.isShow == isShow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId, isShow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowUnknownChangedImplCopyWith<_$ShowUnknownChangedImpl> get copyWith =>
      __$$ShowUnknownChangedImplCopyWithImpl<_$ShowUnknownChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TreeSettings? treeSettings) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(UniqueId treeId, int option)
        numberOfGenerationsChanged,
    required TResult Function(UniqueId treeId, bool isShow) showUnknownChanged,
    required TResult Function() sharedLinkCopied,
    required TResult Function(int shareOption) updateShareSettings,
  }) {
    return showUnknownChanged(treeId, isShow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TreeSettings? treeSettings)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult? Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult? Function()? sharedLinkCopied,
    TResult? Function(int shareOption)? updateShareSettings,
  }) {
    return showUnknownChanged?.call(treeId, isShow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TreeSettings? treeSettings)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult Function()? sharedLinkCopied,
    TResult Function(int shareOption)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (showUnknownChanged != null) {
      return showUnknownChanged(treeId, isShow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_NumberOfGenerationsChanged value)
        numberOfGenerationsChanged,
    required TResult Function(_ShowUnknownChanged value) showUnknownChanged,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
    required TResult Function(_UpdateShareSettings value) updateShareSettings,
  }) {
    return showUnknownChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult? Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult? Function(_UpdateShareSettings value)? updateShareSettings,
  }) {
    return showUnknownChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult Function(_UpdateShareSettings value)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (showUnknownChanged != null) {
      return showUnknownChanged(this);
    }
    return orElse();
  }
}

abstract class _ShowUnknownChanged implements TreeSettingsEvent {
  const factory _ShowUnknownChanged(
      {required final UniqueId treeId,
      required final bool isShow}) = _$ShowUnknownChangedImpl;

  UniqueId get treeId;
  bool get isShow;
  @JsonKey(ignore: true)
  _$$ShowUnknownChangedImplCopyWith<_$ShowUnknownChangedImpl> get copyWith =>
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
    extends _$TreeSettingsEventCopyWithImpl<$Res, _$SharedLinkCopiedImpl>
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
    return 'TreeSettingsEvent.sharedLinkCopied()';
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
    required TResult Function(TreeSettings? treeSettings) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(UniqueId treeId, int option)
        numberOfGenerationsChanged,
    required TResult Function(UniqueId treeId, bool isShow) showUnknownChanged,
    required TResult Function() sharedLinkCopied,
    required TResult Function(int shareOption) updateShareSettings,
  }) {
    return sharedLinkCopied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TreeSettings? treeSettings)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult? Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult? Function()? sharedLinkCopied,
    TResult? Function(int shareOption)? updateShareSettings,
  }) {
    return sharedLinkCopied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TreeSettings? treeSettings)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult Function()? sharedLinkCopied,
    TResult Function(int shareOption)? updateShareSettings,
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
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_NumberOfGenerationsChanged value)
        numberOfGenerationsChanged,
    required TResult Function(_ShowUnknownChanged value) showUnknownChanged,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
    required TResult Function(_UpdateShareSettings value) updateShareSettings,
  }) {
    return sharedLinkCopied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult? Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult? Function(_UpdateShareSettings value)? updateShareSettings,
  }) {
    return sharedLinkCopied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult Function(_UpdateShareSettings value)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (sharedLinkCopied != null) {
      return sharedLinkCopied(this);
    }
    return orElse();
  }
}

abstract class _SharedLinkCopied implements TreeSettingsEvent {
  const factory _SharedLinkCopied() = _$SharedLinkCopiedImpl;
}

/// @nodoc
abstract class _$$UpdateShareSettingsImplCopyWith<$Res> {
  factory _$$UpdateShareSettingsImplCopyWith(_$UpdateShareSettingsImpl value,
          $Res Function(_$UpdateShareSettingsImpl) then) =
      __$$UpdateShareSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int shareOption});
}

/// @nodoc
class __$$UpdateShareSettingsImplCopyWithImpl<$Res>
    extends _$TreeSettingsEventCopyWithImpl<$Res, _$UpdateShareSettingsImpl>
    implements _$$UpdateShareSettingsImplCopyWith<$Res> {
  __$$UpdateShareSettingsImplCopyWithImpl(_$UpdateShareSettingsImpl _value,
      $Res Function(_$UpdateShareSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shareOption = null,
  }) {
    return _then(_$UpdateShareSettingsImpl(
      null == shareOption
          ? _value.shareOption
          : shareOption // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateShareSettingsImpl implements _UpdateShareSettings {
  const _$UpdateShareSettingsImpl(this.shareOption);

  @override
  final int shareOption;

  @override
  String toString() {
    return 'TreeSettingsEvent.updateShareSettings(shareOption: $shareOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateShareSettingsImpl &&
            (identical(other.shareOption, shareOption) ||
                other.shareOption == shareOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shareOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateShareSettingsImplCopyWith<_$UpdateShareSettingsImpl> get copyWith =>
      __$$UpdateShareSettingsImplCopyWithImpl<_$UpdateShareSettingsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TreeSettings? treeSettings) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(UniqueId treeId, int option)
        numberOfGenerationsChanged,
    required TResult Function(UniqueId treeId, bool isShow) showUnknownChanged,
    required TResult Function() sharedLinkCopied,
    required TResult Function(int shareOption) updateShareSettings,
  }) {
    return updateShareSettings(shareOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TreeSettings? treeSettings)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult? Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult? Function()? sharedLinkCopied,
    TResult? Function(int shareOption)? updateShareSettings,
  }) {
    return updateShareSettings?.call(shareOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TreeSettings? treeSettings)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(UniqueId treeId, int option)? numberOfGenerationsChanged,
    TResult Function(UniqueId treeId, bool isShow)? showUnknownChanged,
    TResult Function()? sharedLinkCopied,
    TResult Function(int shareOption)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (updateShareSettings != null) {
      return updateShareSettings(shareOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
    required TResult Function(_NumberOfGenerationsChanged value)
        numberOfGenerationsChanged,
    required TResult Function(_ShowUnknownChanged value) showUnknownChanged,
    required TResult Function(_SharedLinkCopied value) sharedLinkCopied,
    required TResult Function(_UpdateShareSettings value) updateShareSettings,
  }) {
    return updateShareSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult? Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult? Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult? Function(_UpdateShareSettings value)? updateShareSettings,
  }) {
    return updateShareSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult Function(_ShowUnknownChanged value)? showUnknownChanged,
    TResult Function(_SharedLinkCopied value)? sharedLinkCopied,
    TResult Function(_UpdateShareSettings value)? updateShareSettings,
    required TResult orElse(),
  }) {
    if (updateShareSettings != null) {
      return updateShareSettings(this);
    }
    return orElse();
  }
}

abstract class _UpdateShareSettings implements TreeSettingsEvent {
  const factory _UpdateShareSettings(final int shareOption) =
      _$UpdateShareSettingsImpl;

  int get shareOption;
  @JsonKey(ignore: true)
  _$$UpdateShareSettingsImplCopyWith<_$UpdateShareSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TreeSettingsState {
  double get zoomScale => throw _privateConstructorUsedError;
  bool get showUnknown => throw _privateConstructorUsedError;
  int get numberOfGenerations => throw _privateConstructorUsedError;
  bool get isLinkCopied => throw _privateConstructorUsedError;
  int get shareOption => throw _privateConstructorUsedError;
  int get langOpt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeSettingsStateCopyWith<TreeSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeSettingsStateCopyWith<$Res> {
  factory $TreeSettingsStateCopyWith(
          TreeSettingsState value, $Res Function(TreeSettingsState) then) =
      _$TreeSettingsStateCopyWithImpl<$Res, TreeSettingsState>;
  @useResult
  $Res call(
      {double zoomScale,
      bool showUnknown,
      int numberOfGenerations,
      bool isLinkCopied,
      int shareOption,
      int langOpt});
}

/// @nodoc
class _$TreeSettingsStateCopyWithImpl<$Res, $Val extends TreeSettingsState>
    implements $TreeSettingsStateCopyWith<$Res> {
  _$TreeSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoomScale = null,
    Object? showUnknown = null,
    Object? numberOfGenerations = null,
    Object? isLinkCopied = null,
    Object? shareOption = null,
    Object? langOpt = null,
  }) {
    return _then(_value.copyWith(
      zoomScale: null == zoomScale
          ? _value.zoomScale
          : zoomScale // ignore: cast_nullable_to_non_nullable
              as double,
      showUnknown: null == showUnknown
          ? _value.showUnknown
          : showUnknown // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfGenerations: null == numberOfGenerations
          ? _value.numberOfGenerations
          : numberOfGenerations // ignore: cast_nullable_to_non_nullable
              as int,
      isLinkCopied: null == isLinkCopied
          ? _value.isLinkCopied
          : isLinkCopied // ignore: cast_nullable_to_non_nullable
              as bool,
      shareOption: null == shareOption
          ? _value.shareOption
          : shareOption // ignore: cast_nullable_to_non_nullable
              as int,
      langOpt: null == langOpt
          ? _value.langOpt
          : langOpt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeSettingsStateImplCopyWith<$Res>
    implements $TreeSettingsStateCopyWith<$Res> {
  factory _$$TreeSettingsStateImplCopyWith(_$TreeSettingsStateImpl value,
          $Res Function(_$TreeSettingsStateImpl) then) =
      __$$TreeSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double zoomScale,
      bool showUnknown,
      int numberOfGenerations,
      bool isLinkCopied,
      int shareOption,
      int langOpt});
}

/// @nodoc
class __$$TreeSettingsStateImplCopyWithImpl<$Res>
    extends _$TreeSettingsStateCopyWithImpl<$Res, _$TreeSettingsStateImpl>
    implements _$$TreeSettingsStateImplCopyWith<$Res> {
  __$$TreeSettingsStateImplCopyWithImpl(_$TreeSettingsStateImpl _value,
      $Res Function(_$TreeSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoomScale = null,
    Object? showUnknown = null,
    Object? numberOfGenerations = null,
    Object? isLinkCopied = null,
    Object? shareOption = null,
    Object? langOpt = null,
  }) {
    return _then(_$TreeSettingsStateImpl(
      zoomScale: null == zoomScale
          ? _value.zoomScale
          : zoomScale // ignore: cast_nullable_to_non_nullable
              as double,
      showUnknown: null == showUnknown
          ? _value.showUnknown
          : showUnknown // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfGenerations: null == numberOfGenerations
          ? _value.numberOfGenerations
          : numberOfGenerations // ignore: cast_nullable_to_non_nullable
              as int,
      isLinkCopied: null == isLinkCopied
          ? _value.isLinkCopied
          : isLinkCopied // ignore: cast_nullable_to_non_nullable
              as bool,
      shareOption: null == shareOption
          ? _value.shareOption
          : shareOption // ignore: cast_nullable_to_non_nullable
              as int,
      langOpt: null == langOpt
          ? _value.langOpt
          : langOpt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TreeSettingsStateImpl implements _TreeSettingsState {
  const _$TreeSettingsStateImpl(
      {required this.zoomScale,
      required this.showUnknown,
      required this.numberOfGenerations,
      required this.isLinkCopied,
      required this.shareOption,
      required this.langOpt});

  @override
  final double zoomScale;
  @override
  final bool showUnknown;
  @override
  final int numberOfGenerations;
  @override
  final bool isLinkCopied;
  @override
  final int shareOption;
  @override
  final int langOpt;

  @override
  String toString() {
    return 'TreeSettingsState(zoomScale: $zoomScale, showUnknown: $showUnknown, numberOfGenerations: $numberOfGenerations, isLinkCopied: $isLinkCopied, shareOption: $shareOption, langOpt: $langOpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeSettingsStateImpl &&
            (identical(other.zoomScale, zoomScale) ||
                other.zoomScale == zoomScale) &&
            (identical(other.showUnknown, showUnknown) ||
                other.showUnknown == showUnknown) &&
            (identical(other.numberOfGenerations, numberOfGenerations) ||
                other.numberOfGenerations == numberOfGenerations) &&
            (identical(other.isLinkCopied, isLinkCopied) ||
                other.isLinkCopied == isLinkCopied) &&
            (identical(other.shareOption, shareOption) ||
                other.shareOption == shareOption) &&
            (identical(other.langOpt, langOpt) || other.langOpt == langOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, zoomScale, showUnknown,
      numberOfGenerations, isLinkCopied, shareOption, langOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeSettingsStateImplCopyWith<_$TreeSettingsStateImpl> get copyWith =>
      __$$TreeSettingsStateImplCopyWithImpl<_$TreeSettingsStateImpl>(
          this, _$identity);
}

abstract class _TreeSettingsState implements TreeSettingsState {
  const factory _TreeSettingsState(
      {required final double zoomScale,
      required final bool showUnknown,
      required final int numberOfGenerations,
      required final bool isLinkCopied,
      required final int shareOption,
      required final int langOpt}) = _$TreeSettingsStateImpl;

  @override
  double get zoomScale;
  @override
  bool get showUnknown;
  @override
  int get numberOfGenerations;
  @override
  bool get isLinkCopied;
  @override
  int get shareOption;
  @override
  int get langOpt;
  @override
  @JsonKey(ignore: true)
  _$$TreeSettingsStateImplCopyWith<_$TreeSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
