// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RelationDto _$RelationDtoFromJson(Map<String, dynamic> json) {
  return _RelationDto.fromJson(json);
}

/// @nodoc
mixin _$RelationDto {
  String? get relationId => throw _privateConstructorUsedError;
  String get treeId => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get mother => throw _privateConstructorUsedError;
  String get father => throw _privateConstructorUsedError;
  List<String> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelationDtoCopyWith<RelationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationDtoCopyWith<$Res> {
  factory $RelationDtoCopyWith(
          RelationDto value, $Res Function(RelationDto) then) =
      _$RelationDtoCopyWithImpl<$Res, RelationDto>;
  @useResult
  $Res call(
      {String? relationId,
      String treeId,
      String? startDate,
      String? endDate,
      bool isActive,
      String mother,
      String father,
      List<String> children});
}

/// @nodoc
class _$RelationDtoCopyWithImpl<$Res, $Val extends RelationDto>
    implements $RelationDtoCopyWith<$Res> {
  _$RelationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relationId = freezed,
    Object? treeId = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isActive = null,
    Object? mother = null,
    Object? father = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      relationId: freezed == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as String?,
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      mother: null == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as String,
      father: null == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelationDtoImplCopyWith<$Res>
    implements $RelationDtoCopyWith<$Res> {
  factory _$$RelationDtoImplCopyWith(
          _$RelationDtoImpl value, $Res Function(_$RelationDtoImpl) then) =
      __$$RelationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? relationId,
      String treeId,
      String? startDate,
      String? endDate,
      bool isActive,
      String mother,
      String father,
      List<String> children});
}

/// @nodoc
class __$$RelationDtoImplCopyWithImpl<$Res>
    extends _$RelationDtoCopyWithImpl<$Res, _$RelationDtoImpl>
    implements _$$RelationDtoImplCopyWith<$Res> {
  __$$RelationDtoImplCopyWithImpl(
      _$RelationDtoImpl _value, $Res Function(_$RelationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relationId = freezed,
    Object? treeId = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isActive = null,
    Object? mother = null,
    Object? father = null,
    Object? children = null,
  }) {
    return _then(_$RelationDtoImpl(
      relationId: freezed == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as String?,
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      mother: null == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as String,
      father: null == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelationDtoImpl extends _RelationDto {
  const _$RelationDtoImpl(
      {this.relationId,
      required this.treeId,
      this.startDate,
      this.endDate,
      required this.isActive,
      required this.mother,
      required this.father,
      required final List<String> children})
      : _children = children,
        super._();

  factory _$RelationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelationDtoImplFromJson(json);

  @override
  final String? relationId;
  @override
  final String treeId;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final bool isActive;
  @override
  final String mother;
  @override
  final String father;
  final List<String> _children;
  @override
  List<String> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'RelationDto(relationId: $relationId, treeId: $treeId, startDate: $startDate, endDate: $endDate, isActive: $isActive, mother: $mother, father: $father, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationDtoImpl &&
            (identical(other.relationId, relationId) ||
                other.relationId == relationId) &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.mother, mother) || other.mother == mother) &&
            (identical(other.father, father) || other.father == father) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      relationId,
      treeId,
      startDate,
      endDate,
      isActive,
      mother,
      father,
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationDtoImplCopyWith<_$RelationDtoImpl> get copyWith =>
      __$$RelationDtoImplCopyWithImpl<_$RelationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelationDtoImplToJson(
      this,
    );
  }
}

abstract class _RelationDto extends RelationDto {
  const factory _RelationDto(
      {final String? relationId,
      required final String treeId,
      final String? startDate,
      final String? endDate,
      required final bool isActive,
      required final String mother,
      required final String father,
      required final List<String> children}) = _$RelationDtoImpl;
  const _RelationDto._() : super._();

  factory _RelationDto.fromJson(Map<String, dynamic> json) =
      _$RelationDtoImpl.fromJson;

  @override
  String? get relationId;
  @override
  String get treeId;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  bool get isActive;
  @override
  String get mother;
  @override
  String get father;
  @override
  List<String> get children;
  @override
  @JsonKey(ignore: true)
  _$$RelationDtoImplCopyWith<_$RelationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
