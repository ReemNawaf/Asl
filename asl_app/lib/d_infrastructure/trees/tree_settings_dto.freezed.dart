// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TreeSettingsDto _$TreeSettingsDtoFromJson(Map<String, dynamic> json) {
  return _TreeSettingsDto.fromJson(json);
}

/// @nodoc
mixin _$TreeSettingsDto {
  int get numberOfGenerationOpt => throw _privateConstructorUsedError;
  int get langOpt => throw _privateConstructorUsedError;
  int get shareOpt => throw _privateConstructorUsedError;
  bool get isShowUnknown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreeSettingsDtoCopyWith<TreeSettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeSettingsDtoCopyWith<$Res> {
  factory $TreeSettingsDtoCopyWith(
          TreeSettingsDto value, $Res Function(TreeSettingsDto) then) =
      _$TreeSettingsDtoCopyWithImpl<$Res, TreeSettingsDto>;
  @useResult
  $Res call(
      {int numberOfGenerationOpt,
      int langOpt,
      int shareOpt,
      bool isShowUnknown});
}

/// @nodoc
class _$TreeSettingsDtoCopyWithImpl<$Res, $Val extends TreeSettingsDto>
    implements $TreeSettingsDtoCopyWith<$Res> {
  _$TreeSettingsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfGenerationOpt = null,
    Object? langOpt = null,
    Object? shareOpt = null,
    Object? isShowUnknown = null,
  }) {
    return _then(_value.copyWith(
      numberOfGenerationOpt: null == numberOfGenerationOpt
          ? _value.numberOfGenerationOpt
          : numberOfGenerationOpt // ignore: cast_nullable_to_non_nullable
              as int,
      langOpt: null == langOpt
          ? _value.langOpt
          : langOpt // ignore: cast_nullable_to_non_nullable
              as int,
      shareOpt: null == shareOpt
          ? _value.shareOpt
          : shareOpt // ignore: cast_nullable_to_non_nullable
              as int,
      isShowUnknown: null == isShowUnknown
          ? _value.isShowUnknown
          : isShowUnknown // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeSettingsDtoImplCopyWith<$Res>
    implements $TreeSettingsDtoCopyWith<$Res> {
  factory _$$TreeSettingsDtoImplCopyWith(_$TreeSettingsDtoImpl value,
          $Res Function(_$TreeSettingsDtoImpl) then) =
      __$$TreeSettingsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numberOfGenerationOpt,
      int langOpt,
      int shareOpt,
      bool isShowUnknown});
}

/// @nodoc
class __$$TreeSettingsDtoImplCopyWithImpl<$Res>
    extends _$TreeSettingsDtoCopyWithImpl<$Res, _$TreeSettingsDtoImpl>
    implements _$$TreeSettingsDtoImplCopyWith<$Res> {
  __$$TreeSettingsDtoImplCopyWithImpl(
      _$TreeSettingsDtoImpl _value, $Res Function(_$TreeSettingsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfGenerationOpt = null,
    Object? langOpt = null,
    Object? shareOpt = null,
    Object? isShowUnknown = null,
  }) {
    return _then(_$TreeSettingsDtoImpl(
      numberOfGenerationOpt: null == numberOfGenerationOpt
          ? _value.numberOfGenerationOpt
          : numberOfGenerationOpt // ignore: cast_nullable_to_non_nullable
              as int,
      langOpt: null == langOpt
          ? _value.langOpt
          : langOpt // ignore: cast_nullable_to_non_nullable
              as int,
      shareOpt: null == shareOpt
          ? _value.shareOpt
          : shareOpt // ignore: cast_nullable_to_non_nullable
              as int,
      isShowUnknown: null == isShowUnknown
          ? _value.isShowUnknown
          : isShowUnknown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreeSettingsDtoImpl extends _TreeSettingsDto {
  const _$TreeSettingsDtoImpl(
      {required this.numberOfGenerationOpt,
      required this.langOpt,
      required this.shareOpt,
      required this.isShowUnknown})
      : super._();

  factory _$TreeSettingsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TreeSettingsDtoImplFromJson(json);

  @override
  final int numberOfGenerationOpt;
  @override
  final int langOpt;
  @override
  final int shareOpt;
  @override
  final bool isShowUnknown;

  @override
  String toString() {
    return 'TreeSettingsDto(numberOfGenerationOpt: $numberOfGenerationOpt, langOpt: $langOpt, shareOpt: $shareOpt, isShowUnknown: $isShowUnknown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeSettingsDtoImpl &&
            (identical(other.numberOfGenerationOpt, numberOfGenerationOpt) ||
                other.numberOfGenerationOpt == numberOfGenerationOpt) &&
            (identical(other.langOpt, langOpt) || other.langOpt == langOpt) &&
            (identical(other.shareOpt, shareOpt) ||
                other.shareOpt == shareOpt) &&
            (identical(other.isShowUnknown, isShowUnknown) ||
                other.isShowUnknown == isShowUnknown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, numberOfGenerationOpt, langOpt, shareOpt, isShowUnknown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeSettingsDtoImplCopyWith<_$TreeSettingsDtoImpl> get copyWith =>
      __$$TreeSettingsDtoImplCopyWithImpl<_$TreeSettingsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TreeSettingsDtoImplToJson(
      this,
    );
  }
}

abstract class _TreeSettingsDto extends TreeSettingsDto {
  const factory _TreeSettingsDto(
      {required final int numberOfGenerationOpt,
      required final int langOpt,
      required final int shareOpt,
      required final bool isShowUnknown}) = _$TreeSettingsDtoImpl;
  const _TreeSettingsDto._() : super._();

  factory _TreeSettingsDto.fromJson(Map<String, dynamic> json) =
      _$TreeSettingsDtoImpl.fromJson;

  @override
  int get numberOfGenerationOpt;
  @override
  int get langOpt;
  @override
  int get shareOpt;
  @override
  bool get isShowUnknown;
  @override
  @JsonKey(ignore: true)
  _$$TreeSettingsDtoImplCopyWith<_$TreeSettingsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
