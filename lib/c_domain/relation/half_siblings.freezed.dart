// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'half_siblings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HalfSiblings {
  UniqueId get treeId => throw _privateConstructorUsedError;
  UniqueId get person => throw _privateConstructorUsedError;
  TNode get partner => throw _privateConstructorUsedError;
  List<TNode> get halfSiblings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HalfSiblingsCopyWith<HalfSiblings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HalfSiblingsCopyWith<$Res> {
  factory $HalfSiblingsCopyWith(
          HalfSiblings value, $Res Function(HalfSiblings) then) =
      _$HalfSiblingsCopyWithImpl<$Res, HalfSiblings>;
  @useResult
  $Res call(
      {UniqueId treeId,
      UniqueId person,
      TNode partner,
      List<TNode> halfSiblings});

  $TNodeCopyWith<$Res> get partner;
}

/// @nodoc
class _$HalfSiblingsCopyWithImpl<$Res, $Val extends HalfSiblings>
    implements $HalfSiblingsCopyWith<$Res> {
  _$HalfSiblingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? person = null,
    Object? partner = null,
    Object? halfSiblings = null,
  }) {
    return _then(_value.copyWith(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as TNode,
      halfSiblings: null == halfSiblings
          ? _value.halfSiblings
          : halfSiblings // ignore: cast_nullable_to_non_nullable
              as List<TNode>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get partner {
    return $TNodeCopyWith<$Res>(_value.partner, (value) {
      return _then(_value.copyWith(partner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HalfSiblingsImplCopyWith<$Res>
    implements $HalfSiblingsCopyWith<$Res> {
  factory _$$HalfSiblingsImplCopyWith(
          _$HalfSiblingsImpl value, $Res Function(_$HalfSiblingsImpl) then) =
      __$$HalfSiblingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId treeId,
      UniqueId person,
      TNode partner,
      List<TNode> halfSiblings});

  @override
  $TNodeCopyWith<$Res> get partner;
}

/// @nodoc
class __$$HalfSiblingsImplCopyWithImpl<$Res>
    extends _$HalfSiblingsCopyWithImpl<$Res, _$HalfSiblingsImpl>
    implements _$$HalfSiblingsImplCopyWith<$Res> {
  __$$HalfSiblingsImplCopyWithImpl(
      _$HalfSiblingsImpl _value, $Res Function(_$HalfSiblingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? person = null,
    Object? partner = null,
    Object? halfSiblings = null,
  }) {
    return _then(_$HalfSiblingsImpl(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as TNode,
      halfSiblings: null == halfSiblings
          ? _value.halfSiblings
          : halfSiblings // ignore: cast_nullable_to_non_nullable
              as List<TNode>,
    ));
  }
}

/// @nodoc

class _$HalfSiblingsImpl extends _HalfSiblings {
  _$HalfSiblingsImpl(
      {required this.treeId,
      required this.person,
      required this.partner,
      required this.halfSiblings})
      : super._();

  @override
  final UniqueId treeId;
  @override
  final UniqueId person;
  @override
  final TNode partner;
  @override
  final List<TNode> halfSiblings;

  @override
  String toString() {
    return 'HalfSiblings(treeId: $treeId, person: $person, partner: $partner, halfSiblings: $halfSiblings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HalfSiblingsImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            const DeepCollectionEquality()
                .equals(other.halfSiblings, halfSiblings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId, person, partner,
      const DeepCollectionEquality().hash(halfSiblings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HalfSiblingsImplCopyWith<_$HalfSiblingsImpl> get copyWith =>
      __$$HalfSiblingsImplCopyWithImpl<_$HalfSiblingsImpl>(this, _$identity);
}

abstract class _HalfSiblings extends HalfSiblings {
  factory _HalfSiblings(
      {required final UniqueId treeId,
      required final UniqueId person,
      required final TNode partner,
      required final List<TNode> halfSiblings}) = _$HalfSiblingsImpl;
  _HalfSiblings._() : super._();

  @override
  UniqueId get treeId;
  @override
  UniqueId get person;
  @override
  TNode get partner;
  @override
  List<TNode> get halfSiblings;
  @override
  @JsonKey(ignore: true)
  _$$HalfSiblingsImplCopyWith<_$HalfSiblingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
