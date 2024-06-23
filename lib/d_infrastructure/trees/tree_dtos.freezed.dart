// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TreeDto _$TreeDtoFromJson(Map<String, dynamic> json) {
  return _TreeDto.fromJson(json);
}

/// @nodoc
mixin _$TreeDto {
//  document id in firebase used as the identifier of that doc, and isn't stored inside it
  String get treeId => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  String get rootId => throw _privateConstructorUsedError;
  String get treeName => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreeDtoCopyWith<TreeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeDtoCopyWith<$Res> {
  factory $TreeDtoCopyWith(TreeDto value, $Res Function(TreeDto) then) =
      _$TreeDtoCopyWithImpl<$Res, TreeDto>;
  @useResult
  $Res call(
      {String treeId,
      String creatorId,
      String rootId,
      String treeName,
      String fullName});
}

/// @nodoc
class _$TreeDtoCopyWithImpl<$Res, $Val extends TreeDto>
    implements $TreeDtoCopyWith<$Res> {
  _$TreeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? creatorId = null,
    Object? rootId = null,
    Object? treeName = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      rootId: null == rootId
          ? _value.rootId
          : rootId // ignore: cast_nullable_to_non_nullable
              as String,
      treeName: null == treeName
          ? _value.treeName
          : treeName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeDtoImplCopyWith<$Res> implements $TreeDtoCopyWith<$Res> {
  factory _$$TreeDtoImplCopyWith(
          _$TreeDtoImpl value, $Res Function(_$TreeDtoImpl) then) =
      __$$TreeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String treeId,
      String creatorId,
      String rootId,
      String treeName,
      String fullName});
}

/// @nodoc
class __$$TreeDtoImplCopyWithImpl<$Res>
    extends _$TreeDtoCopyWithImpl<$Res, _$TreeDtoImpl>
    implements _$$TreeDtoImplCopyWith<$Res> {
  __$$TreeDtoImplCopyWithImpl(
      _$TreeDtoImpl _value, $Res Function(_$TreeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? creatorId = null,
    Object? rootId = null,
    Object? treeName = null,
    Object? fullName = null,
  }) {
    return _then(_$TreeDtoImpl(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      rootId: null == rootId
          ? _value.rootId
          : rootId // ignore: cast_nullable_to_non_nullable
              as String,
      treeName: null == treeName
          ? _value.treeName
          : treeName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreeDtoImpl extends _TreeDto {
  const _$TreeDtoImpl(
      {required this.treeId,
      required this.creatorId,
      required this.rootId,
      required this.treeName,
      required this.fullName})
      : super._();

  factory _$TreeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TreeDtoImplFromJson(json);

//  document id in firebase used as the identifier of that doc, and isn't stored inside it
  @override
  final String treeId;
  @override
  final String creatorId;
  @override
  final String rootId;
  @override
  final String treeName;
  @override
  final String fullName;

  @override
  String toString() {
    return 'TreeDto(treeId: $treeId, creatorId: $creatorId, rootId: $rootId, treeName: $treeName, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeDtoImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.rootId, rootId) || other.rootId == rootId) &&
            (identical(other.treeName, treeName) ||
                other.treeName == treeName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, treeId, creatorId, rootId, treeName, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeDtoImplCopyWith<_$TreeDtoImpl> get copyWith =>
      __$$TreeDtoImplCopyWithImpl<_$TreeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TreeDtoImplToJson(
      this,
    );
  }
}

abstract class _TreeDto extends TreeDto {
  const factory _TreeDto(
      {required final String treeId,
      required final String creatorId,
      required final String rootId,
      required final String treeName,
      required final String fullName}) = _$TreeDtoImpl;
  const _TreeDto._() : super._();

  factory _TreeDto.fromJson(Map<String, dynamic> json) = _$TreeDtoImpl.fromJson;

  @override //  document id in firebase used as the identifier of that doc, and isn't stored inside it
  String get treeId;
  @override
  String get creatorId;
  @override
  String get rootId;
  @override
  String get treeName;
  @override
  String get fullName;
  @override
  @JsonKey(ignore: true)
  _$$TreeDtoImplCopyWith<_$TreeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
