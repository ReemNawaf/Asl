// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NodeDto _$NodeDtoFromJson(Map<String, dynamic> json) {
  return _NodeDto.fromJson(json);
}

/// @nodoc
mixin _$NodeDto {
  String? get nodeId => throw _privateConstructorUsedError;
  String get treeId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  String? get deathDate => throw _privateConstructorUsedError;
  bool get isAlive => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String? get upperFamily => throw _privateConstructorUsedError;
  List<String> get relations => throw _privateConstructorUsedError;
  List<String> get fosterChildren => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeDtoCopyWith<NodeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeDtoCopyWith<$Res> {
  factory $NodeDtoCopyWith(NodeDto value, $Res Function(NodeDto) then) =
      _$NodeDtoCopyWithImpl<$Res, NodeDto>;
  @useResult
  $Res call(
      {String? nodeId,
      String treeId,
      String firstName,
      String? birthDate,
      String? deathDate,
      bool isAlive,
      String gender,
      String? upperFamily,
      List<String> relations,
      List<String> fosterChildren});
}

/// @nodoc
class _$NodeDtoCopyWithImpl<$Res, $Val extends NodeDto>
    implements $NodeDtoCopyWith<$Res> {
  _$NodeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeId = freezed,
    Object? treeId = null,
    Object? firstName = null,
    Object? birthDate = freezed,
    Object? deathDate = freezed,
    Object? isAlive = null,
    Object? gender = null,
    Object? upperFamily = freezed,
    Object? relations = null,
    Object? fosterChildren = null,
  }) {
    return _then(_value.copyWith(
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isAlive: null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      upperFamily: freezed == upperFamily
          ? _value.upperFamily
          : upperFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      relations: null == relations
          ? _value.relations
          : relations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fosterChildren: null == fosterChildren
          ? _value.fosterChildren
          : fosterChildren // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NodeDtoImplCopyWith<$Res> implements $NodeDtoCopyWith<$Res> {
  factory _$$NodeDtoImplCopyWith(
          _$NodeDtoImpl value, $Res Function(_$NodeDtoImpl) then) =
      __$$NodeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nodeId,
      String treeId,
      String firstName,
      String? birthDate,
      String? deathDate,
      bool isAlive,
      String gender,
      String? upperFamily,
      List<String> relations,
      List<String> fosterChildren});
}

/// @nodoc
class __$$NodeDtoImplCopyWithImpl<$Res>
    extends _$NodeDtoCopyWithImpl<$Res, _$NodeDtoImpl>
    implements _$$NodeDtoImplCopyWith<$Res> {
  __$$NodeDtoImplCopyWithImpl(
      _$NodeDtoImpl _value, $Res Function(_$NodeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeId = freezed,
    Object? treeId = null,
    Object? firstName = null,
    Object? birthDate = freezed,
    Object? deathDate = freezed,
    Object? isAlive = null,
    Object? gender = null,
    Object? upperFamily = freezed,
    Object? relations = null,
    Object? fosterChildren = null,
  }) {
    return _then(_$NodeDtoImpl(
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isAlive: null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      upperFamily: freezed == upperFamily
          ? _value.upperFamily
          : upperFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      relations: null == relations
          ? _value._relations
          : relations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fosterChildren: null == fosterChildren
          ? _value._fosterChildren
          : fosterChildren // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeDtoImpl extends _NodeDto {
  const _$NodeDtoImpl(
      {this.nodeId,
      required this.treeId,
      required this.firstName,
      this.birthDate,
      this.deathDate,
      required this.isAlive,
      required this.gender,
      this.upperFamily,
      required final List<String> relations,
      required final List<String> fosterChildren})
      : _relations = relations,
        _fosterChildren = fosterChildren,
        super._();

  factory _$NodeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeDtoImplFromJson(json);

  @override
  final String? nodeId;
  @override
  final String treeId;
  @override
  final String firstName;
  @override
  final String? birthDate;
  @override
  final String? deathDate;
  @override
  final bool isAlive;
  @override
  final String gender;
  @override
  final String? upperFamily;
  final List<String> _relations;
  @override
  List<String> get relations {
    if (_relations is EqualUnmodifiableListView) return _relations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relations);
  }

  final List<String> _fosterChildren;
  @override
  List<String> get fosterChildren {
    if (_fosterChildren is EqualUnmodifiableListView) return _fosterChildren;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fosterChildren);
  }

  @override
  String toString() {
    return 'NodeDto(nodeId: $nodeId, treeId: $treeId, firstName: $firstName, birthDate: $birthDate, deathDate: $deathDate, isAlive: $isAlive, gender: $gender, upperFamily: $upperFamily, relations: $relations, fosterChildren: $fosterChildren)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeDtoImpl &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.deathDate, deathDate) ||
                other.deathDate == deathDate) &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.upperFamily, upperFamily) ||
                other.upperFamily == upperFamily) &&
            const DeepCollectionEquality()
                .equals(other._relations, _relations) &&
            const DeepCollectionEquality()
                .equals(other._fosterChildren, _fosterChildren));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nodeId,
      treeId,
      firstName,
      birthDate,
      deathDate,
      isAlive,
      gender,
      upperFamily,
      const DeepCollectionEquality().hash(_relations),
      const DeepCollectionEquality().hash(_fosterChildren));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeDtoImplCopyWith<_$NodeDtoImpl> get copyWith =>
      __$$NodeDtoImplCopyWithImpl<_$NodeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeDtoImplToJson(
      this,
    );
  }
}

abstract class _NodeDto extends NodeDto {
  const factory _NodeDto(
      {final String? nodeId,
      required final String treeId,
      required final String firstName,
      final String? birthDate,
      final String? deathDate,
      required final bool isAlive,
      required final String gender,
      final String? upperFamily,
      required final List<String> relations,
      required final List<String> fosterChildren}) = _$NodeDtoImpl;
  const _NodeDto._() : super._();

  factory _NodeDto.fromJson(Map<String, dynamic> json) = _$NodeDtoImpl.fromJson;

  @override
  String? get nodeId;
  @override
  String get treeId;
  @override
  String get firstName;
  @override
  String? get birthDate;
  @override
  String? get deathDate;
  @override
  bool get isAlive;
  @override
  String get gender;
  @override
  String? get upperFamily;
  @override
  List<String> get relations;
  @override
  List<String> get fosterChildren;
  @override
  @JsonKey(ignore: true)
  _$$NodeDtoImplCopyWith<_$NodeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
