// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Relation {
  UniqueId get treeId => throw _privateConstructorUsedError;
  UniqueId get relationId => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  UniqueId get father => throw _privateConstructorUsedError;
  UniqueId get mother => throw _privateConstructorUsedError;
  List<UniqueId> get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RelationCopyWith<Relation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationCopyWith<$Res> {
  factory $RelationCopyWith(Relation value, $Res Function(Relation) then) =
      _$RelationCopyWithImpl<$Res, Relation>;
  @useResult
  $Res call(
      {UniqueId treeId,
      UniqueId relationId,
      DateTime? startDate,
      DateTime? endDate,
      bool isActive,
      UniqueId father,
      UniqueId mother,
      List<UniqueId> children});
}

/// @nodoc
class _$RelationCopyWithImpl<$Res, $Val extends Relation>
    implements $RelationCopyWith<$Res> {
  _$RelationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? relationId = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isActive = null,
    Object? father = null,
    Object? mother = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      relationId: null == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      father: null == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      mother: null == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<UniqueId>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelationImplCopyWith<$Res>
    implements $RelationCopyWith<$Res> {
  factory _$$RelationImplCopyWith(
          _$RelationImpl value, $Res Function(_$RelationImpl) then) =
      __$$RelationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId treeId,
      UniqueId relationId,
      DateTime? startDate,
      DateTime? endDate,
      bool isActive,
      UniqueId father,
      UniqueId mother,
      List<UniqueId> children});
}

/// @nodoc
class __$$RelationImplCopyWithImpl<$Res>
    extends _$RelationCopyWithImpl<$Res, _$RelationImpl>
    implements _$$RelationImplCopyWith<$Res> {
  __$$RelationImplCopyWithImpl(
      _$RelationImpl _value, $Res Function(_$RelationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? relationId = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isActive = null,
    Object? father = null,
    Object? mother = null,
    Object? children = null,
  }) {
    return _then(_$RelationImpl(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      relationId: null == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      father: null == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      mother: null == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<UniqueId>,
    ));
  }
}

/// @nodoc

class _$RelationImpl extends _Relation {
  const _$RelationImpl(
      {required this.treeId,
      required this.relationId,
      this.startDate,
      this.endDate,
      required this.isActive,
      required this.father,
      required this.mother,
      required final List<UniqueId> children})
      : _children = children,
        super._();

  @override
  final UniqueId treeId;
  @override
  final UniqueId relationId;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final bool isActive;
  @override
  final UniqueId father;
  @override
  final UniqueId mother;
  final List<UniqueId> _children;
  @override
  List<UniqueId> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'Relation(treeId: $treeId, relationId: $relationId, startDate: $startDate, endDate: $endDate, isActive: $isActive, father: $father, mother: $mother, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.relationId, relationId) ||
                other.relationId == relationId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.father, father) || other.father == father) &&
            (identical(other.mother, mother) || other.mother == mother) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      treeId,
      relationId,
      startDate,
      endDate,
      isActive,
      father,
      mother,
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationImplCopyWith<_$RelationImpl> get copyWith =>
      __$$RelationImplCopyWithImpl<_$RelationImpl>(this, _$identity);
}

abstract class _Relation extends Relation {
  const factory _Relation(
      {required final UniqueId treeId,
      required final UniqueId relationId,
      final DateTime? startDate,
      final DateTime? endDate,
      required final bool isActive,
      required final UniqueId father,
      required final UniqueId mother,
      required final List<UniqueId> children}) = _$RelationImpl;
  const _Relation._() : super._();

  @override
  UniqueId get treeId;
  @override
  UniqueId get relationId;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  bool get isActive;
  @override
  UniqueId get father;
  @override
  UniqueId get mother;
  @override
  List<UniqueId> get children;
  @override
  @JsonKey(ignore: true)
  _$$RelationImplCopyWith<_$RelationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
