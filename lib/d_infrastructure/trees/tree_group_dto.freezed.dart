// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TreeGroupDto _$TreeGroupDtoFromJson(Map<String, dynamic> json) {
  return _TreeGroupDto.fromJson(json);
}

/// @nodoc
mixin _$TreeGroupDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get colorKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreeGroupDtoCopyWith<TreeGroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeGroupDtoCopyWith<$Res> {
  factory $TreeGroupDtoCopyWith(
          TreeGroupDto value, $Res Function(TreeGroupDto) then) =
      _$TreeGroupDtoCopyWithImpl<$Res, TreeGroupDto>;
  @useResult
  $Res call({String id, String name, String colorKey});
}

/// @nodoc
class _$TreeGroupDtoCopyWithImpl<$Res, $Val extends TreeGroupDto>
    implements $TreeGroupDtoCopyWith<$Res> {
  _$TreeGroupDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? colorKey = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      colorKey: null == colorKey
          ? _value.colorKey
          : colorKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeGroupDtoImplCopyWith<$Res>
    implements $TreeGroupDtoCopyWith<$Res> {
  factory _$$TreeGroupDtoImplCopyWith(
          _$TreeGroupDtoImpl value, $Res Function(_$TreeGroupDtoImpl) then) =
      __$$TreeGroupDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String colorKey});
}

/// @nodoc
class __$$TreeGroupDtoImplCopyWithImpl<$Res>
    extends _$TreeGroupDtoCopyWithImpl<$Res, _$TreeGroupDtoImpl>
    implements _$$TreeGroupDtoImplCopyWith<$Res> {
  __$$TreeGroupDtoImplCopyWithImpl(
      _$TreeGroupDtoImpl _value, $Res Function(_$TreeGroupDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? colorKey = null,
  }) {
    return _then(_$TreeGroupDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      colorKey: null == colorKey
          ? _value.colorKey
          : colorKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreeGroupDtoImpl extends _TreeGroupDto {
  const _$TreeGroupDtoImpl(
      {required this.id, required this.name, required this.colorKey})
      : super._();

  factory _$TreeGroupDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TreeGroupDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String colorKey;

  @override
  String toString() {
    return 'TreeGroupDto(id: $id, name: $name, colorKey: $colorKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeGroupDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.colorKey, colorKey) ||
                other.colorKey == colorKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, colorKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeGroupDtoImplCopyWith<_$TreeGroupDtoImpl> get copyWith =>
      __$$TreeGroupDtoImplCopyWithImpl<_$TreeGroupDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TreeGroupDtoImplToJson(
      this,
    );
  }
}

abstract class _TreeGroupDto extends TreeGroupDto {
  const factory _TreeGroupDto(
      {required final String id,
      required final String name,
      required final String colorKey}) = _$TreeGroupDtoImpl;
  const _TreeGroupDto._() : super._();

  factory _TreeGroupDto.fromJson(Map<String, dynamic> json) =
      _$TreeGroupDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get colorKey;
  @override
  @JsonKey(ignore: true)
  _$$TreeGroupDtoImplCopyWith<_$TreeGroupDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
