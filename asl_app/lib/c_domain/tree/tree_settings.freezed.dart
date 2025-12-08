// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreeSettings {
  UniqueId? get treeId => throw _privateConstructorUsedError;
  int? get numberOfGeneration => throw _privateConstructorUsedError;
  bool get isShowUnknown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeSettingsCopyWith<TreeSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeSettingsCopyWith<$Res> {
  factory $TreeSettingsCopyWith(
          TreeSettings value, $Res Function(TreeSettings) then) =
      _$TreeSettingsCopyWithImpl<$Res, TreeSettings>;
  @useResult
  $Res call({UniqueId? treeId, int? numberOfGeneration, bool isShowUnknown});
}

/// @nodoc
class _$TreeSettingsCopyWithImpl<$Res, $Val extends TreeSettings>
    implements $TreeSettingsCopyWith<$Res> {
  _$TreeSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = freezed,
    Object? numberOfGeneration = freezed,
    Object? isShowUnknown = null,
  }) {
    return _then(_value.copyWith(
      treeId: freezed == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      numberOfGeneration: freezed == numberOfGeneration
          ? _value.numberOfGeneration
          : numberOfGeneration // ignore: cast_nullable_to_non_nullable
              as int?,
      isShowUnknown: null == isShowUnknown
          ? _value.isShowUnknown
          : isShowUnknown // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeSettingsImplCopyWith<$Res>
    implements $TreeSettingsCopyWith<$Res> {
  factory _$$TreeSettingsImplCopyWith(
          _$TreeSettingsImpl value, $Res Function(_$TreeSettingsImpl) then) =
      __$$TreeSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId? treeId, int? numberOfGeneration, bool isShowUnknown});
}

/// @nodoc
class __$$TreeSettingsImplCopyWithImpl<$Res>
    extends _$TreeSettingsCopyWithImpl<$Res, _$TreeSettingsImpl>
    implements _$$TreeSettingsImplCopyWith<$Res> {
  __$$TreeSettingsImplCopyWithImpl(
      _$TreeSettingsImpl _value, $Res Function(_$TreeSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = freezed,
    Object? numberOfGeneration = freezed,
    Object? isShowUnknown = null,
  }) {
    return _then(_$TreeSettingsImpl(
      treeId: freezed == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      numberOfGeneration: freezed == numberOfGeneration
          ? _value.numberOfGeneration
          : numberOfGeneration // ignore: cast_nullable_to_non_nullable
              as int?,
      isShowUnknown: null == isShowUnknown
          ? _value.isShowUnknown
          : isShowUnknown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TreeSettingsImpl extends _TreeSettings {
  const _$TreeSettingsImpl(
      {this.treeId, this.numberOfGeneration, required this.isShowUnknown})
      : super._();

  @override
  final UniqueId? treeId;
  @override
  final int? numberOfGeneration;
  @override
  final bool isShowUnknown;

  @override
  String toString() {
    return 'TreeSettings(treeId: $treeId, numberOfGeneration: $numberOfGeneration, isShowUnknown: $isShowUnknown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeSettingsImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.numberOfGeneration, numberOfGeneration) ||
                other.numberOfGeneration == numberOfGeneration) &&
            (identical(other.isShowUnknown, isShowUnknown) ||
                other.isShowUnknown == isShowUnknown));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, treeId, numberOfGeneration, isShowUnknown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeSettingsImplCopyWith<_$TreeSettingsImpl> get copyWith =>
      __$$TreeSettingsImplCopyWithImpl<_$TreeSettingsImpl>(this, _$identity);
}

abstract class _TreeSettings extends TreeSettings {
  const factory _TreeSettings(
      {final UniqueId? treeId,
      final int? numberOfGeneration,
      required final bool isShowUnknown}) = _$TreeSettingsImpl;
  const _TreeSettings._() : super._();

  @override
  UniqueId? get treeId;
  @override
  int? get numberOfGeneration;
  @override
  bool get isShowUnknown;
  @override
  @JsonKey(ignore: true)
  _$$TreeSettingsImplCopyWith<_$TreeSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
