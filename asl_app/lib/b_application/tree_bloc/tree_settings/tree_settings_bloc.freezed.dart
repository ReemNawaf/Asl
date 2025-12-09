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
    required TResult Function(UniqueId treeId) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(int option) numberOfGenerationsChanged,
    required TResult Function(bool isShow) showUnknownChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(int option)? numberOfGenerationsChanged,
    TResult? Function(bool isShow)? showUnknownChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(int option)? numberOfGenerationsChanged,
    TResult Function(bool isShow)? showUnknownChanged,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
    TResult? Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult? Function(_ShowUnknownChanged value)? showUnknownChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    TResult Function(_NumberOfGenerationsChanged value)?
        numberOfGenerationsChanged,
    TResult Function(_ShowUnknownChanged value)? showUnknownChanged,
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
  $Res call({UniqueId treeId});
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
    Object? treeId = null,
  }) {
    return _then(_$InitializedImpl(
      null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.treeId);

  @override
  final UniqueId treeId;

  @override
  String toString() {
    return 'TreeSettingsEvent.initialized(treeId: $treeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(int option) numberOfGenerationsChanged,
    required TResult Function(bool isShow) showUnknownChanged,
  }) {
    return initialized(treeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(int option)? numberOfGenerationsChanged,
    TResult? Function(bool isShow)? showUnknownChanged,
  }) {
    return initialized?.call(treeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(int option)? numberOfGenerationsChanged,
    TResult Function(bool isShow)? showUnknownChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(treeId);
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
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TreeSettingsEvent {
  const factory _Initialized(final UniqueId treeId) = _$InitializedImpl;

  UniqueId get treeId;
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
    required TResult Function(UniqueId treeId) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(int option) numberOfGenerationsChanged,
    required TResult Function(bool isShow) showUnknownChanged,
  }) {
    return zoomChanged(zoomScale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(int option)? numberOfGenerationsChanged,
    TResult? Function(bool isShow)? showUnknownChanged,
  }) {
    return zoomChanged?.call(zoomScale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(int option)? numberOfGenerationsChanged,
    TResult Function(bool isShow)? showUnknownChanged,
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
  $Res call({int option});
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
    Object? option = null,
  }) {
    return _then(_$NumberOfGenerationsChangedImpl(
      null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NumberOfGenerationsChangedImpl implements _NumberOfGenerationsChanged {
  const _$NumberOfGenerationsChangedImpl(this.option);

  @override
  final int option;

  @override
  String toString() {
    return 'TreeSettingsEvent.numberOfGenerationsChanged(option: $option)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberOfGenerationsChangedImpl &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberOfGenerationsChangedImplCopyWith<_$NumberOfGenerationsChangedImpl>
      get copyWith => __$$NumberOfGenerationsChangedImplCopyWithImpl<
          _$NumberOfGenerationsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(int option) numberOfGenerationsChanged,
    required TResult Function(bool isShow) showUnknownChanged,
  }) {
    return numberOfGenerationsChanged(option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(int option)? numberOfGenerationsChanged,
    TResult? Function(bool isShow)? showUnknownChanged,
  }) {
    return numberOfGenerationsChanged?.call(option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(int option)? numberOfGenerationsChanged,
    TResult Function(bool isShow)? showUnknownChanged,
    required TResult orElse(),
  }) {
    if (numberOfGenerationsChanged != null) {
      return numberOfGenerationsChanged(option);
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
    required TResult orElse(),
  }) {
    if (numberOfGenerationsChanged != null) {
      return numberOfGenerationsChanged(this);
    }
    return orElse();
  }
}

abstract class _NumberOfGenerationsChanged implements TreeSettingsEvent {
  const factory _NumberOfGenerationsChanged(final int option) =
      _$NumberOfGenerationsChangedImpl;

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
  $Res call({bool isShow});
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
    Object? isShow = null,
  }) {
    return _then(_$ShowUnknownChangedImpl(
      null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowUnknownChangedImpl implements _ShowUnknownChanged {
  const _$ShowUnknownChangedImpl(this.isShow);

  @override
  final bool isShow;

  @override
  String toString() {
    return 'TreeSettingsEvent.showUnknownChanged(isShow: $isShow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowUnknownChangedImpl &&
            (identical(other.isShow, isShow) || other.isShow == isShow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowUnknownChangedImplCopyWith<_$ShowUnknownChangedImpl> get copyWith =>
      __$$ShowUnknownChangedImplCopyWithImpl<_$ShowUnknownChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId) initialized,
    required TResult Function(double zoomScale) zoomChanged,
    required TResult Function(int option) numberOfGenerationsChanged,
    required TResult Function(bool isShow) showUnknownChanged,
  }) {
    return showUnknownChanged(isShow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId)? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
    TResult? Function(int option)? numberOfGenerationsChanged,
    TResult? Function(bool isShow)? showUnknownChanged,
  }) {
    return showUnknownChanged?.call(isShow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId)? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    TResult Function(int option)? numberOfGenerationsChanged,
    TResult Function(bool isShow)? showUnknownChanged,
    required TResult orElse(),
  }) {
    if (showUnknownChanged != null) {
      return showUnknownChanged(isShow);
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
    required TResult orElse(),
  }) {
    if (showUnknownChanged != null) {
      return showUnknownChanged(this);
    }
    return orElse();
  }
}

abstract class _ShowUnknownChanged implements TreeSettingsEvent {
  const factory _ShowUnknownChanged(final bool isShow) =
      _$ShowUnknownChangedImpl;

  bool get isShow;
  @JsonKey(ignore: true)
  _$$ShowUnknownChangedImplCopyWith<_$ShowUnknownChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TreeSettingsState {
  double get zoomScale => throw _privateConstructorUsedError;
  bool get showUnknown => throw _privateConstructorUsedError;
  int get numberOfGenerations => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

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
      bool isLoading});
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
    Object? isLoading = null,
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
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      bool isLoading});
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
    Object? isLoading = null,
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
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TreeSettingsStateImpl implements _TreeSettingsState {
  const _$TreeSettingsStateImpl(
      {required this.zoomScale,
      required this.showUnknown,
      required this.numberOfGenerations,
      this.isLoading = false});

  @override
  final double zoomScale;
  @override
  final bool showUnknown;
  @override
  final int numberOfGenerations;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'TreeSettingsState(zoomScale: $zoomScale, showUnknown: $showUnknown, numberOfGenerations: $numberOfGenerations, isLoading: $isLoading)';
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
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, zoomScale, showUnknown, numberOfGenerations, isLoading);

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
      final bool isLoading}) = _$TreeSettingsStateImpl;

  @override
  double get zoomScale;
  @override
  bool get showUnknown;
  @override
  int get numberOfGenerations;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$TreeSettingsStateImplCopyWith<_$TreeSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
