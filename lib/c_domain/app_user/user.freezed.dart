// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppUser {
  UserName get name => throw _privateConstructorUsedError;
  UserAvater get avater => throw _privateConstructorUsedError;
  List<UniqueId> get trees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call({UserName name, UserAvater avater, List<UniqueId> trees});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avater = null,
    Object? trees = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as UserName,
      avater: null == avater
          ? _value.avater
          : avater // ignore: cast_nullable_to_non_nullable
              as UserAvater,
      trees: null == trees
          ? _value.trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<UniqueId>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUserImplCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUserImplCopyWith(
          _$AppUserImpl value, $Res Function(_$AppUserImpl) then) =
      __$$AppUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserName name, UserAvater avater, List<UniqueId> trees});
}

/// @nodoc
class __$$AppUserImplCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUserImpl>
    implements _$$AppUserImplCopyWith<$Res> {
  __$$AppUserImplCopyWithImpl(
      _$AppUserImpl _value, $Res Function(_$AppUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avater = null,
    Object? trees = null,
  }) {
    return _then(_$AppUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as UserName,
      avater: null == avater
          ? _value.avater
          : avater // ignore: cast_nullable_to_non_nullable
              as UserAvater,
      trees: null == trees
          ? _value._trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<UniqueId>,
    ));
  }
}

/// @nodoc

class _$AppUserImpl extends _AppUser {
  const _$AppUserImpl(
      {required this.name,
      required this.avater,
      required final List<UniqueId> trees})
      : _trees = trees,
        super._();

  @override
  final UserName name;
  @override
  final UserAvater avater;
  final List<UniqueId> _trees;
  @override
  List<UniqueId> get trees {
    if (_trees is EqualUnmodifiableListView) return _trees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trees);
  }

  @override
  String toString() {
    return 'AppUser(name: $name, avater: $avater, trees: $trees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avater, avater) || other.avater == avater) &&
            const DeepCollectionEquality().equals(other._trees, _trees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, avater, const DeepCollectionEquality().hash(_trees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      __$$AppUserImplCopyWithImpl<_$AppUserImpl>(this, _$identity);
}

abstract class _AppUser extends AppUser {
  const factory _AppUser(
      {required final UserName name,
      required final UserAvater avater,
      required final List<UniqueId> trees}) = _$AppUserImpl;
  const _AppUser._() : super._();

  @override
  UserName get name;
  @override
  UserAvater get avater;
  @override
  List<UniqueId> get trees;
  @override
  @JsonKey(ignore: true)
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
