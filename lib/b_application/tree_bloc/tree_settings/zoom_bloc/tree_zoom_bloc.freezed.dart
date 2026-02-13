// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_zoom_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreeZoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(double zoomScale) zoomChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeZoomEventCopyWith<$Res> {
  factory $TreeZoomEventCopyWith(
          TreeZoomEvent value, $Res Function(TreeZoomEvent) then) =
      _$TreeZoomEventCopyWithImpl<$Res, TreeZoomEvent>;
}

/// @nodoc
class _$TreeZoomEventCopyWithImpl<$Res, $Val extends TreeZoomEvent>
    implements $TreeZoomEventCopyWith<$Res> {
  _$TreeZoomEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$TreeZoomEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'TreeZoomEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(double zoomScale) zoomChanged,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoomScale)? zoomChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ZoomChanged value) zoomChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TreeZoomEvent {
  const factory _Initialized() = _$InitializedImpl;
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
    extends _$TreeZoomEventCopyWithImpl<$Res, _$ZoomChangedImpl>
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
    return 'TreeZoomEvent.zoomChanged(zoomScale: $zoomScale)';
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
    required TResult Function() initialized,
    required TResult Function(double zoomScale) zoomChanged,
  }) {
    return zoomChanged(zoomScale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(double zoomScale)? zoomChanged,
  }) {
    return zoomChanged?.call(zoomScale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double zoomScale)? zoomChanged,
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
  }) {
    return zoomChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ZoomChanged value)? zoomChanged,
  }) {
    return zoomChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ZoomChanged value)? zoomChanged,
    required TResult orElse(),
  }) {
    if (zoomChanged != null) {
      return zoomChanged(this);
    }
    return orElse();
  }
}

abstract class _ZoomChanged implements TreeZoomEvent {
  const factory _ZoomChanged(final double zoomScale) = _$ZoomChangedImpl;

  double get zoomScale;
  @JsonKey(ignore: true)
  _$$ZoomChangedImplCopyWith<_$ZoomChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TreeZoomState {
  double get zoomScale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeZoomStateCopyWith<TreeZoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeZoomStateCopyWith<$Res> {
  factory $TreeZoomStateCopyWith(
          TreeZoomState value, $Res Function(TreeZoomState) then) =
      _$TreeZoomStateCopyWithImpl<$Res, TreeZoomState>;
  @useResult
  $Res call({double zoomScale});
}

/// @nodoc
class _$TreeZoomStateCopyWithImpl<$Res, $Val extends TreeZoomState>
    implements $TreeZoomStateCopyWith<$Res> {
  _$TreeZoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoomScale = null,
  }) {
    return _then(_value.copyWith(
      zoomScale: null == zoomScale
          ? _value.zoomScale
          : zoomScale // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeZoomStateImplCopyWith<$Res>
    implements $TreeZoomStateCopyWith<$Res> {
  factory _$$TreeZoomStateImplCopyWith(
          _$TreeZoomStateImpl value, $Res Function(_$TreeZoomStateImpl) then) =
      __$$TreeZoomStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double zoomScale});
}

/// @nodoc
class __$$TreeZoomStateImplCopyWithImpl<$Res>
    extends _$TreeZoomStateCopyWithImpl<$Res, _$TreeZoomStateImpl>
    implements _$$TreeZoomStateImplCopyWith<$Res> {
  __$$TreeZoomStateImplCopyWithImpl(
      _$TreeZoomStateImpl _value, $Res Function(_$TreeZoomStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoomScale = null,
  }) {
    return _then(_$TreeZoomStateImpl(
      zoomScale: null == zoomScale
          ? _value.zoomScale
          : zoomScale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TreeZoomStateImpl implements _TreeZoomState {
  const _$TreeZoomStateImpl({required this.zoomScale});

  @override
  final double zoomScale;

  @override
  String toString() {
    return 'TreeZoomState(zoomScale: $zoomScale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeZoomStateImpl &&
            (identical(other.zoomScale, zoomScale) ||
                other.zoomScale == zoomScale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, zoomScale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeZoomStateImplCopyWith<_$TreeZoomStateImpl> get copyWith =>
      __$$TreeZoomStateImplCopyWithImpl<_$TreeZoomStateImpl>(this, _$identity);
}

abstract class _TreeZoomState implements TreeZoomState {
  const factory _TreeZoomState({required final double zoomScale}) =
      _$TreeZoomStateImpl;

  @override
  double get zoomScale;
  @override
  @JsonKey(ignore: true)
  _$$TreeZoomStateImplCopyWith<_$TreeZoomStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
