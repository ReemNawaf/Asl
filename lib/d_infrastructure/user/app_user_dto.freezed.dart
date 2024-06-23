// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) {
  return _AppUserDto.fromJson(json);
}

/// @nodoc
mixin _$AppUserDto {
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  List<String> get trees => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserDtoCopyWith<AppUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserDtoCopyWith<$Res> {
  factory $AppUserDtoCopyWith(
          AppUserDto value, $Res Function(AppUserDto) then) =
      _$AppUserDtoCopyWithImpl<$Res, AppUserDto>;
  @useResult
  $Res call({String name, String avatar, List<String> trees});
}

/// @nodoc
class _$AppUserDtoCopyWithImpl<$Res, $Val extends AppUserDto>
    implements $AppUserDtoCopyWith<$Res> {
  _$AppUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatar = null,
    Object? trees = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      trees: null == trees
          ? _value.trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUserDtoImplCopyWith<$Res>
    implements $AppUserDtoCopyWith<$Res> {
  factory _$$AppUserDtoImplCopyWith(
          _$AppUserDtoImpl value, $Res Function(_$AppUserDtoImpl) then) =
      __$$AppUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String avatar, List<String> trees});
}

/// @nodoc
class __$$AppUserDtoImplCopyWithImpl<$Res>
    extends _$AppUserDtoCopyWithImpl<$Res, _$AppUserDtoImpl>
    implements _$$AppUserDtoImplCopyWith<$Res> {
  __$$AppUserDtoImplCopyWithImpl(
      _$AppUserDtoImpl _value, $Res Function(_$AppUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatar = null,
    Object? trees = null,
  }) {
    return _then(_$AppUserDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      trees: null == trees
          ? _value._trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUserDtoImpl extends _AppUserDto {
  const _$AppUserDtoImpl(
      {required this.name,
      required this.avatar,
      required final List<String> trees})
      : _trees = trees,
        super._();

  factory _$AppUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUserDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String avatar;
  final List<String> _trees;
  @override
  List<String> get trees {
    if (_trees is EqualUnmodifiableListView) return _trees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trees);
  }

  @override
  String toString() {
    return 'AppUserDto(name: $name, avatar: $avatar, trees: $trees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality().equals(other._trees, _trees));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, avatar, const DeepCollectionEquality().hash(_trees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserDtoImplCopyWith<_$AppUserDtoImpl> get copyWith =>
      __$$AppUserDtoImplCopyWithImpl<_$AppUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUserDtoImplToJson(
      this,
    );
  }
}

abstract class _AppUserDto extends AppUserDto {
  const factory _AppUserDto(
      {required final String name,
      required final String avatar,
      required final List<String> trees}) = _$AppUserDtoImpl;
  const _AppUserDto._() : super._();

  factory _AppUserDto.fromJson(Map<String, dynamic> json) =
      _$AppUserDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get avatar;
  @override
  List<String> get trees;
  @override
  @JsonKey(ignore: true)
  _$$AppUserDtoImplCopyWith<_$AppUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
