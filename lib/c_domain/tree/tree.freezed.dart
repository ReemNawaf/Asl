// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Tree {
  UniqueId get id => throw _privateConstructorUsedError;
  TreeName get treeName => throw _privateConstructorUsedError;
  FullName get fullName => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  DateTime? get deathDate => throw _privateConstructorUsedError;
  bool get isAlive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeCopyWith<Tree> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeCopyWith<$Res> {
  factory $TreeCopyWith(Tree value, $Res Function(Tree) then) =
      _$TreeCopyWithImpl<$Res, Tree>;
  @useResult
  $Res call(
      {UniqueId id,
      TreeName treeName,
      FullName fullName,
      DateTime? birthDate,
      DateTime? deathDate,
      bool isAlive});
}

/// @nodoc
class _$TreeCopyWithImpl<$Res, $Val extends Tree>
    implements $TreeCopyWith<$Res> {
  _$TreeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? treeName = null,
    Object? fullName = null,
    Object? birthDate = freezed,
    Object? deathDate = freezed,
    Object? isAlive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      treeName: null == treeName
          ? _value.treeName
          : treeName // ignore: cast_nullable_to_non_nullable
              as TreeName,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAlive: null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeImplCopyWith<$Res> implements $TreeCopyWith<$Res> {
  factory _$$TreeImplCopyWith(
          _$TreeImpl value, $Res Function(_$TreeImpl) then) =
      __$$TreeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      TreeName treeName,
      FullName fullName,
      DateTime? birthDate,
      DateTime? deathDate,
      bool isAlive});
}

/// @nodoc
class __$$TreeImplCopyWithImpl<$Res>
    extends _$TreeCopyWithImpl<$Res, _$TreeImpl>
    implements _$$TreeImplCopyWith<$Res> {
  __$$TreeImplCopyWithImpl(_$TreeImpl _value, $Res Function(_$TreeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? treeName = null,
    Object? fullName = null,
    Object? birthDate = freezed,
    Object? deathDate = freezed,
    Object? isAlive = null,
  }) {
    return _then(_$TreeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      treeName: null == treeName
          ? _value.treeName
          : treeName // ignore: cast_nullable_to_non_nullable
              as TreeName,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAlive: null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TreeImpl extends _Tree {
  const _$TreeImpl(
      {required this.id,
      required this.treeName,
      required this.fullName,
      this.birthDate,
      this.deathDate,
      required this.isAlive})
      : super._();

  @override
  final UniqueId id;
  @override
  final TreeName treeName;
  @override
  final FullName fullName;
  @override
  final DateTime? birthDate;
  @override
  final DateTime? deathDate;
  @override
  final bool isAlive;

  @override
  String toString() {
    return 'Tree(id: $id, treeName: $treeName, fullName: $fullName, birthDate: $birthDate, deathDate: $deathDate, isAlive: $isAlive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.treeName, treeName) ||
                other.treeName == treeName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.deathDate, deathDate) ||
                other.deathDate == deathDate) &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, treeName, fullName, birthDate, deathDate, isAlive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeImplCopyWith<_$TreeImpl> get copyWith =>
      __$$TreeImplCopyWithImpl<_$TreeImpl>(this, _$identity);
}

abstract class _Tree extends Tree {
  const factory _Tree(
      {required final UniqueId id,
      required final TreeName treeName,
      required final FullName fullName,
      final DateTime? birthDate,
      final DateTime? deathDate,
      required final bool isAlive}) = _$TreeImpl;
  const _Tree._() : super._();

  @override
  UniqueId get id;
  @override
  TreeName get treeName;
  @override
  FullName get fullName;
  @override
  DateTime? get birthDate;
  @override
  DateTime? get deathDate;
  @override
  bool get isAlive;
  @override
  @JsonKey(ignore: true)
  _$$TreeImplCopyWith<_$TreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
