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
  UniqueId get partnerTreeId => throw _privateConstructorUsedError;
  UniqueId get relationId => throw _privateConstructorUsedError;
  DateTime? get marriageDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  MarriageStatus get marriageStatus => throw _privateConstructorUsedError;
  UniqueId get father => throw _privateConstructorUsedError;
  UniqueId get mother => throw _privateConstructorUsedError;
  List<UniqueId> get children => throw _privateConstructorUsedError;
  TNode? get mainNode => throw _privateConstructorUsedError;
  TNode? get partnerNode => throw _privateConstructorUsedError;
  @unfreezed
  List<TNode> get childrenNodes => throw _privateConstructorUsedError;

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
      UniqueId partnerTreeId,
      UniqueId relationId,
      DateTime? marriageDate,
      DateTime? endDate,
      MarriageStatus marriageStatus,
      UniqueId father,
      UniqueId mother,
      List<UniqueId> children,
      TNode? mainNode,
      TNode? partnerNode,
      @unfreezed List<TNode> childrenNodes});

  $TNodeCopyWith<$Res>? get mainNode;
  $TNodeCopyWith<$Res>? get partnerNode;
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
    Object? partnerTreeId = null,
    Object? relationId = null,
    Object? marriageDate = freezed,
    Object? endDate = freezed,
    Object? marriageStatus = null,
    Object? father = null,
    Object? mother = null,
    Object? children = null,
    Object? mainNode = freezed,
    Object? partnerNode = freezed,
    Object? childrenNodes = null,
  }) {
    return _then(_value.copyWith(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      partnerTreeId: null == partnerTreeId
          ? _value.partnerTreeId
          : partnerTreeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      relationId: null == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      marriageDate: freezed == marriageDate
          ? _value.marriageDate
          : marriageDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      marriageStatus: null == marriageStatus
          ? _value.marriageStatus
          : marriageStatus // ignore: cast_nullable_to_non_nullable
              as MarriageStatus,
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
      mainNode: freezed == mainNode
          ? _value.mainNode
          : mainNode // ignore: cast_nullable_to_non_nullable
              as TNode?,
      partnerNode: freezed == partnerNode
          ? _value.partnerNode
          : partnerNode // ignore: cast_nullable_to_non_nullable
              as TNode?,
      childrenNodes: null == childrenNodes
          ? _value.childrenNodes
          : childrenNodes // ignore: cast_nullable_to_non_nullable
              as List<TNode>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res>? get mainNode {
    if (_value.mainNode == null) {
      return null;
    }

    return $TNodeCopyWith<$Res>(_value.mainNode!, (value) {
      return _then(_value.copyWith(mainNode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res>? get partnerNode {
    if (_value.partnerNode == null) {
      return null;
    }

    return $TNodeCopyWith<$Res>(_value.partnerNode!, (value) {
      return _then(_value.copyWith(partnerNode: value) as $Val);
    });
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
      UniqueId partnerTreeId,
      UniqueId relationId,
      DateTime? marriageDate,
      DateTime? endDate,
      MarriageStatus marriageStatus,
      UniqueId father,
      UniqueId mother,
      List<UniqueId> children,
      TNode? mainNode,
      TNode? partnerNode,
      @unfreezed List<TNode> childrenNodes});

  @override
  $TNodeCopyWith<$Res>? get mainNode;
  @override
  $TNodeCopyWith<$Res>? get partnerNode;
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
    Object? partnerTreeId = null,
    Object? relationId = null,
    Object? marriageDate = freezed,
    Object? endDate = freezed,
    Object? marriageStatus = null,
    Object? father = null,
    Object? mother = null,
    Object? children = null,
    Object? mainNode = freezed,
    Object? partnerNode = freezed,
    Object? childrenNodes = null,
  }) {
    return _then(_$RelationImpl(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      partnerTreeId: null == partnerTreeId
          ? _value.partnerTreeId
          : partnerTreeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      relationId: null == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      marriageDate: freezed == marriageDate
          ? _value.marriageDate
          : marriageDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      marriageStatus: null == marriageStatus
          ? _value.marriageStatus
          : marriageStatus // ignore: cast_nullable_to_non_nullable
              as MarriageStatus,
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
      mainNode: freezed == mainNode
          ? _value.mainNode
          : mainNode // ignore: cast_nullable_to_non_nullable
              as TNode?,
      partnerNode: freezed == partnerNode
          ? _value.partnerNode
          : partnerNode // ignore: cast_nullable_to_non_nullable
              as TNode?,
      childrenNodes: null == childrenNodes
          ? _value.childrenNodes
          : childrenNodes // ignore: cast_nullable_to_non_nullable
              as List<TNode>,
    ));
  }
}

/// @nodoc

class _$RelationImpl extends _Relation {
  _$RelationImpl(
      {required this.treeId,
      required this.partnerTreeId,
      required this.relationId,
      this.marriageDate,
      this.endDate,
      required this.marriageStatus,
      required this.father,
      required this.mother,
      required this.children,
      this.mainNode,
      this.partnerNode,
      @unfreezed required this.childrenNodes})
      : super._();

  @override
  final UniqueId treeId;
  @override
  final UniqueId partnerTreeId;
  @override
  final UniqueId relationId;
  @override
  final DateTime? marriageDate;
  @override
  final DateTime? endDate;
  @override
  final MarriageStatus marriageStatus;
  @override
  final UniqueId father;
  @override
  final UniqueId mother;
  @override
  final List<UniqueId> children;
  @override
  final TNode? mainNode;
  @override
  final TNode? partnerNode;
  @override
  @unfreezed
  final List<TNode> childrenNodes;

  @override
  String toString() {
    return 'Relation(treeId: $treeId, partnerTreeId: $partnerTreeId, relationId: $relationId, marriageDate: $marriageDate, endDate: $endDate, marriageStatus: $marriageStatus, father: $father, mother: $mother, children: $children, mainNode: $mainNode, partnerNode: $partnerNode, childrenNodes: $childrenNodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.partnerTreeId, partnerTreeId) ||
                other.partnerTreeId == partnerTreeId) &&
            (identical(other.relationId, relationId) ||
                other.relationId == relationId) &&
            (identical(other.marriageDate, marriageDate) ||
                other.marriageDate == marriageDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.marriageStatus, marriageStatus) ||
                other.marriageStatus == marriageStatus) &&
            (identical(other.father, father) || other.father == father) &&
            (identical(other.mother, mother) || other.mother == mother) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            (identical(other.mainNode, mainNode) ||
                other.mainNode == mainNode) &&
            (identical(other.partnerNode, partnerNode) ||
                other.partnerNode == partnerNode) &&
            const DeepCollectionEquality()
                .equals(other.childrenNodes, childrenNodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      treeId,
      partnerTreeId,
      relationId,
      marriageDate,
      endDate,
      marriageStatus,
      father,
      mother,
      const DeepCollectionEquality().hash(children),
      mainNode,
      partnerNode,
      const DeepCollectionEquality().hash(childrenNodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationImplCopyWith<_$RelationImpl> get copyWith =>
      __$$RelationImplCopyWithImpl<_$RelationImpl>(this, _$identity);
}

abstract class _Relation extends Relation {
  factory _Relation(
      {required final UniqueId treeId,
      required final UniqueId partnerTreeId,
      required final UniqueId relationId,
      final DateTime? marriageDate,
      final DateTime? endDate,
      required final MarriageStatus marriageStatus,
      required final UniqueId father,
      required final UniqueId mother,
      required final List<UniqueId> children,
      final TNode? mainNode,
      final TNode? partnerNode,
      @unfreezed required final List<TNode> childrenNodes}) = _$RelationImpl;
  _Relation._() : super._();

  @override
  UniqueId get treeId;
  @override
  UniqueId get partnerTreeId;
  @override
  UniqueId get relationId;
  @override
  DateTime? get marriageDate;
  @override
  DateTime? get endDate;
  @override
  MarriageStatus get marriageStatus;
  @override
  UniqueId get father;
  @override
  UniqueId get mother;
  @override
  List<UniqueId> get children;
  @override
  TNode? get mainNode;
  @override
  TNode? get partnerNode;
  @override
  @unfreezed
  List<TNode> get childrenNodes;
  @override
  @JsonKey(ignore: true)
  _$$RelationImplCopyWith<_$RelationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
