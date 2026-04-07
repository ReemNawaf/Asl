// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreeGroup {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get colorKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeGroupCopyWith<TreeGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeGroupCopyWith<$Res> {
  factory $TreeGroupCopyWith(TreeGroup value, $Res Function(TreeGroup) then) =
      _$TreeGroupCopyWithImpl<$Res, TreeGroup>;
  @useResult
  $Res call({UniqueId id, String name, String colorKey});
}

/// @nodoc
class _$TreeGroupCopyWithImpl<$Res, $Val extends TreeGroup>
    implements $TreeGroupCopyWith<$Res> {
  _$TreeGroupCopyWithImpl(this._value, this._then);

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
              as UniqueId,
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
abstract class _$$TreeGroupImplCopyWith<$Res>
    implements $TreeGroupCopyWith<$Res> {
  factory _$$TreeGroupImplCopyWith(
          _$TreeGroupImpl value, $Res Function(_$TreeGroupImpl) then) =
      __$$TreeGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, String name, String colorKey});
}

/// @nodoc
class __$$TreeGroupImplCopyWithImpl<$Res>
    extends _$TreeGroupCopyWithImpl<$Res, _$TreeGroupImpl>
    implements _$$TreeGroupImplCopyWith<$Res> {
  __$$TreeGroupImplCopyWithImpl(
      _$TreeGroupImpl _value, $Res Function(_$TreeGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? colorKey = null,
  }) {
    return _then(_$TreeGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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

class _$TreeGroupImpl implements _TreeGroup {
  const _$TreeGroupImpl(
      {required this.id, required this.name, required this.colorKey});

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String colorKey;

  @override
  String toString() {
    return 'TreeGroup(id: $id, name: $name, colorKey: $colorKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.colorKey, colorKey) ||
                other.colorKey == colorKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, colorKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeGroupImplCopyWith<_$TreeGroupImpl> get copyWith =>
      __$$TreeGroupImplCopyWithImpl<_$TreeGroupImpl>(this, _$identity);
}

abstract class _TreeGroup implements TreeGroup {
  const factory _TreeGroup(
      {required final UniqueId id,
      required final String name,
      required final String colorKey}) = _$TreeGroupImpl;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get colorKey;
  @override
  @JsonKey(ignore: true)
  _$$TreeGroupImplCopyWith<_$TreeGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
