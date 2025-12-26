// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreeFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeName) changeTreeName,
    required TResult Function(String rootName) changeRootName,
    required TResult Function(DateTime? birthdate) changeRootBirthDate,
    required TResult Function(DateTime? deathdate) changeRootDeathDate,
    required TResult Function(bool isAlive) changeRootIsAvlive,
    required TResult Function(Gender gender) changeRootGender,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeName)? changeTreeName,
    TResult? Function(String rootName)? changeRootName,
    TResult? Function(DateTime? birthdate)? changeRootBirthDate,
    TResult? Function(DateTime? deathdate)? changeRootDeathDate,
    TResult? Function(bool isAlive)? changeRootIsAvlive,
    TResult? Function(Gender gender)? changeRootGender,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeName)? changeTreeName,
    TResult Function(String rootName)? changeRootName,
    TResult Function(DateTime? birthdate)? changeRootBirthDate,
    TResult Function(DateTime? deathdate)? changeRootDeathDate,
    TResult Function(bool isAlive)? changeRootIsAvlive,
    TResult Function(Gender gender)? changeRootGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedTreeName value) changeTreeName,
    required TResult Function(_ChangedRootName value) changeRootName,
    required TResult Function(_ChangedRootBirthDate value) changeRootBirthDate,
    required TResult Function(_ChangedRootDeathDate value) changeRootDeathDate,
    required TResult Function(_ChangedRootIsAvlive value) changeRootIsAvlive,
    required TResult Function(_ChangedRootGender value) changeRootGender,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedTreeName value)? changeTreeName,
    TResult? Function(_ChangedRootName value)? changeRootName,
    TResult? Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult? Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult? Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult? Function(_ChangedRootGender value)? changeRootGender,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedTreeName value)? changeTreeName,
    TResult Function(_ChangedRootName value)? changeRootName,
    TResult Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult Function(_ChangedRootGender value)? changeRootGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeFormEventCopyWith<$Res> {
  factory $TreeFormEventCopyWith(
          TreeFormEvent value, $Res Function(TreeFormEvent) then) =
      _$TreeFormEventCopyWithImpl<$Res, TreeFormEvent>;
}

/// @nodoc
class _$TreeFormEventCopyWithImpl<$Res, $Val extends TreeFormEvent>
    implements $TreeFormEventCopyWith<$Res> {
  _$TreeFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangedTreeNameImplCopyWith<$Res> {
  factory _$$ChangedTreeNameImplCopyWith(_$ChangedTreeNameImpl value,
          $Res Function(_$ChangedTreeNameImpl) then) =
      __$$ChangedTreeNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String treeName});
}

/// @nodoc
class __$$ChangedTreeNameImplCopyWithImpl<$Res>
    extends _$TreeFormEventCopyWithImpl<$Res, _$ChangedTreeNameImpl>
    implements _$$ChangedTreeNameImplCopyWith<$Res> {
  __$$ChangedTreeNameImplCopyWithImpl(
      _$ChangedTreeNameImpl _value, $Res Function(_$ChangedTreeNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeName = null,
  }) {
    return _then(_$ChangedTreeNameImpl(
      null == treeName
          ? _value.treeName
          : treeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangedTreeNameImpl implements _ChangedTreeName {
  const _$ChangedTreeNameImpl(this.treeName);

  @override
  final String treeName;

  @override
  String toString() {
    return 'TreeFormEvent.changeTreeName(treeName: $treeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedTreeNameImpl &&
            (identical(other.treeName, treeName) ||
                other.treeName == treeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedTreeNameImplCopyWith<_$ChangedTreeNameImpl> get copyWith =>
      __$$ChangedTreeNameImplCopyWithImpl<_$ChangedTreeNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeName) changeTreeName,
    required TResult Function(String rootName) changeRootName,
    required TResult Function(DateTime? birthdate) changeRootBirthDate,
    required TResult Function(DateTime? deathdate) changeRootDeathDate,
    required TResult Function(bool isAlive) changeRootIsAvlive,
    required TResult Function(Gender gender) changeRootGender,
    required TResult Function() saved,
  }) {
    return changeTreeName(treeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeName)? changeTreeName,
    TResult? Function(String rootName)? changeRootName,
    TResult? Function(DateTime? birthdate)? changeRootBirthDate,
    TResult? Function(DateTime? deathdate)? changeRootDeathDate,
    TResult? Function(bool isAlive)? changeRootIsAvlive,
    TResult? Function(Gender gender)? changeRootGender,
    TResult? Function()? saved,
  }) {
    return changeTreeName?.call(treeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeName)? changeTreeName,
    TResult Function(String rootName)? changeRootName,
    TResult Function(DateTime? birthdate)? changeRootBirthDate,
    TResult Function(DateTime? deathdate)? changeRootDeathDate,
    TResult Function(bool isAlive)? changeRootIsAvlive,
    TResult Function(Gender gender)? changeRootGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeTreeName != null) {
      return changeTreeName(treeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedTreeName value) changeTreeName,
    required TResult Function(_ChangedRootName value) changeRootName,
    required TResult Function(_ChangedRootBirthDate value) changeRootBirthDate,
    required TResult Function(_ChangedRootDeathDate value) changeRootDeathDate,
    required TResult Function(_ChangedRootIsAvlive value) changeRootIsAvlive,
    required TResult Function(_ChangedRootGender value) changeRootGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeTreeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedTreeName value)? changeTreeName,
    TResult? Function(_ChangedRootName value)? changeRootName,
    TResult? Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult? Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult? Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult? Function(_ChangedRootGender value)? changeRootGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeTreeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedTreeName value)? changeTreeName,
    TResult Function(_ChangedRootName value)? changeRootName,
    TResult Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult Function(_ChangedRootGender value)? changeRootGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeTreeName != null) {
      return changeTreeName(this);
    }
    return orElse();
  }
}

abstract class _ChangedTreeName implements TreeFormEvent {
  const factory _ChangedTreeName(final String treeName) = _$ChangedTreeNameImpl;

  String get treeName;
  @JsonKey(ignore: true)
  _$$ChangedTreeNameImplCopyWith<_$ChangedTreeNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedRootNameImplCopyWith<$Res> {
  factory _$$ChangedRootNameImplCopyWith(_$ChangedRootNameImpl value,
          $Res Function(_$ChangedRootNameImpl) then) =
      __$$ChangedRootNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rootName});
}

/// @nodoc
class __$$ChangedRootNameImplCopyWithImpl<$Res>
    extends _$TreeFormEventCopyWithImpl<$Res, _$ChangedRootNameImpl>
    implements _$$ChangedRootNameImplCopyWith<$Res> {
  __$$ChangedRootNameImplCopyWithImpl(
      _$ChangedRootNameImpl _value, $Res Function(_$ChangedRootNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootName = null,
  }) {
    return _then(_$ChangedRootNameImpl(
      null == rootName
          ? _value.rootName
          : rootName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangedRootNameImpl implements _ChangedRootName {
  const _$ChangedRootNameImpl(this.rootName);

  @override
  final String rootName;

  @override
  String toString() {
    return 'TreeFormEvent.changeRootName(rootName: $rootName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedRootNameImpl &&
            (identical(other.rootName, rootName) ||
                other.rootName == rootName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rootName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedRootNameImplCopyWith<_$ChangedRootNameImpl> get copyWith =>
      __$$ChangedRootNameImplCopyWithImpl<_$ChangedRootNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeName) changeTreeName,
    required TResult Function(String rootName) changeRootName,
    required TResult Function(DateTime? birthdate) changeRootBirthDate,
    required TResult Function(DateTime? deathdate) changeRootDeathDate,
    required TResult Function(bool isAlive) changeRootIsAvlive,
    required TResult Function(Gender gender) changeRootGender,
    required TResult Function() saved,
  }) {
    return changeRootName(rootName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeName)? changeTreeName,
    TResult? Function(String rootName)? changeRootName,
    TResult? Function(DateTime? birthdate)? changeRootBirthDate,
    TResult? Function(DateTime? deathdate)? changeRootDeathDate,
    TResult? Function(bool isAlive)? changeRootIsAvlive,
    TResult? Function(Gender gender)? changeRootGender,
    TResult? Function()? saved,
  }) {
    return changeRootName?.call(rootName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeName)? changeTreeName,
    TResult Function(String rootName)? changeRootName,
    TResult Function(DateTime? birthdate)? changeRootBirthDate,
    TResult Function(DateTime? deathdate)? changeRootDeathDate,
    TResult Function(bool isAlive)? changeRootIsAvlive,
    TResult Function(Gender gender)? changeRootGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeRootName != null) {
      return changeRootName(rootName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedTreeName value) changeTreeName,
    required TResult Function(_ChangedRootName value) changeRootName,
    required TResult Function(_ChangedRootBirthDate value) changeRootBirthDate,
    required TResult Function(_ChangedRootDeathDate value) changeRootDeathDate,
    required TResult Function(_ChangedRootIsAvlive value) changeRootIsAvlive,
    required TResult Function(_ChangedRootGender value) changeRootGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeRootName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedTreeName value)? changeTreeName,
    TResult? Function(_ChangedRootName value)? changeRootName,
    TResult? Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult? Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult? Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult? Function(_ChangedRootGender value)? changeRootGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeRootName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedTreeName value)? changeTreeName,
    TResult Function(_ChangedRootName value)? changeRootName,
    TResult Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult Function(_ChangedRootGender value)? changeRootGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeRootName != null) {
      return changeRootName(this);
    }
    return orElse();
  }
}

abstract class _ChangedRootName implements TreeFormEvent {
  const factory _ChangedRootName(final String rootName) = _$ChangedRootNameImpl;

  String get rootName;
  @JsonKey(ignore: true)
  _$$ChangedRootNameImplCopyWith<_$ChangedRootNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedRootBirthDateImplCopyWith<$Res> {
  factory _$$ChangedRootBirthDateImplCopyWith(_$ChangedRootBirthDateImpl value,
          $Res Function(_$ChangedRootBirthDateImpl) then) =
      __$$ChangedRootBirthDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? birthdate});
}

/// @nodoc
class __$$ChangedRootBirthDateImplCopyWithImpl<$Res>
    extends _$TreeFormEventCopyWithImpl<$Res, _$ChangedRootBirthDateImpl>
    implements _$$ChangedRootBirthDateImplCopyWith<$Res> {
  __$$ChangedRootBirthDateImplCopyWithImpl(_$ChangedRootBirthDateImpl _value,
      $Res Function(_$ChangedRootBirthDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthdate = freezed,
  }) {
    return _then(_$ChangedRootBirthDateImpl(
      freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ChangedRootBirthDateImpl implements _ChangedRootBirthDate {
  const _$ChangedRootBirthDateImpl(this.birthdate);

  @override
  final DateTime? birthdate;

  @override
  String toString() {
    return 'TreeFormEvent.changeRootBirthDate(birthdate: $birthdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedRootBirthDateImpl &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birthdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedRootBirthDateImplCopyWith<_$ChangedRootBirthDateImpl>
      get copyWith =>
          __$$ChangedRootBirthDateImplCopyWithImpl<_$ChangedRootBirthDateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeName) changeTreeName,
    required TResult Function(String rootName) changeRootName,
    required TResult Function(DateTime? birthdate) changeRootBirthDate,
    required TResult Function(DateTime? deathdate) changeRootDeathDate,
    required TResult Function(bool isAlive) changeRootIsAvlive,
    required TResult Function(Gender gender) changeRootGender,
    required TResult Function() saved,
  }) {
    return changeRootBirthDate(birthdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeName)? changeTreeName,
    TResult? Function(String rootName)? changeRootName,
    TResult? Function(DateTime? birthdate)? changeRootBirthDate,
    TResult? Function(DateTime? deathdate)? changeRootDeathDate,
    TResult? Function(bool isAlive)? changeRootIsAvlive,
    TResult? Function(Gender gender)? changeRootGender,
    TResult? Function()? saved,
  }) {
    return changeRootBirthDate?.call(birthdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeName)? changeTreeName,
    TResult Function(String rootName)? changeRootName,
    TResult Function(DateTime? birthdate)? changeRootBirthDate,
    TResult Function(DateTime? deathdate)? changeRootDeathDate,
    TResult Function(bool isAlive)? changeRootIsAvlive,
    TResult Function(Gender gender)? changeRootGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeRootBirthDate != null) {
      return changeRootBirthDate(birthdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedTreeName value) changeTreeName,
    required TResult Function(_ChangedRootName value) changeRootName,
    required TResult Function(_ChangedRootBirthDate value) changeRootBirthDate,
    required TResult Function(_ChangedRootDeathDate value) changeRootDeathDate,
    required TResult Function(_ChangedRootIsAvlive value) changeRootIsAvlive,
    required TResult Function(_ChangedRootGender value) changeRootGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeRootBirthDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedTreeName value)? changeTreeName,
    TResult? Function(_ChangedRootName value)? changeRootName,
    TResult? Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult? Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult? Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult? Function(_ChangedRootGender value)? changeRootGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeRootBirthDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedTreeName value)? changeTreeName,
    TResult Function(_ChangedRootName value)? changeRootName,
    TResult Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult Function(_ChangedRootGender value)? changeRootGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeRootBirthDate != null) {
      return changeRootBirthDate(this);
    }
    return orElse();
  }
}

abstract class _ChangedRootBirthDate implements TreeFormEvent {
  const factory _ChangedRootBirthDate(final DateTime? birthdate) =
      _$ChangedRootBirthDateImpl;

  DateTime? get birthdate;
  @JsonKey(ignore: true)
  _$$ChangedRootBirthDateImplCopyWith<_$ChangedRootBirthDateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedRootDeathDateImplCopyWith<$Res> {
  factory _$$ChangedRootDeathDateImplCopyWith(_$ChangedRootDeathDateImpl value,
          $Res Function(_$ChangedRootDeathDateImpl) then) =
      __$$ChangedRootDeathDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? deathdate});
}

/// @nodoc
class __$$ChangedRootDeathDateImplCopyWithImpl<$Res>
    extends _$TreeFormEventCopyWithImpl<$Res, _$ChangedRootDeathDateImpl>
    implements _$$ChangedRootDeathDateImplCopyWith<$Res> {
  __$$ChangedRootDeathDateImplCopyWithImpl(_$ChangedRootDeathDateImpl _value,
      $Res Function(_$ChangedRootDeathDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deathdate = freezed,
  }) {
    return _then(_$ChangedRootDeathDateImpl(
      freezed == deathdate
          ? _value.deathdate
          : deathdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ChangedRootDeathDateImpl implements _ChangedRootDeathDate {
  const _$ChangedRootDeathDateImpl(this.deathdate);

  @override
  final DateTime? deathdate;

  @override
  String toString() {
    return 'TreeFormEvent.changeRootDeathDate(deathdate: $deathdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedRootDeathDateImpl &&
            (identical(other.deathdate, deathdate) ||
                other.deathdate == deathdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deathdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedRootDeathDateImplCopyWith<_$ChangedRootDeathDateImpl>
      get copyWith =>
          __$$ChangedRootDeathDateImplCopyWithImpl<_$ChangedRootDeathDateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeName) changeTreeName,
    required TResult Function(String rootName) changeRootName,
    required TResult Function(DateTime? birthdate) changeRootBirthDate,
    required TResult Function(DateTime? deathdate) changeRootDeathDate,
    required TResult Function(bool isAlive) changeRootIsAvlive,
    required TResult Function(Gender gender) changeRootGender,
    required TResult Function() saved,
  }) {
    return changeRootDeathDate(deathdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeName)? changeTreeName,
    TResult? Function(String rootName)? changeRootName,
    TResult? Function(DateTime? birthdate)? changeRootBirthDate,
    TResult? Function(DateTime? deathdate)? changeRootDeathDate,
    TResult? Function(bool isAlive)? changeRootIsAvlive,
    TResult? Function(Gender gender)? changeRootGender,
    TResult? Function()? saved,
  }) {
    return changeRootDeathDate?.call(deathdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeName)? changeTreeName,
    TResult Function(String rootName)? changeRootName,
    TResult Function(DateTime? birthdate)? changeRootBirthDate,
    TResult Function(DateTime? deathdate)? changeRootDeathDate,
    TResult Function(bool isAlive)? changeRootIsAvlive,
    TResult Function(Gender gender)? changeRootGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeRootDeathDate != null) {
      return changeRootDeathDate(deathdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedTreeName value) changeTreeName,
    required TResult Function(_ChangedRootName value) changeRootName,
    required TResult Function(_ChangedRootBirthDate value) changeRootBirthDate,
    required TResult Function(_ChangedRootDeathDate value) changeRootDeathDate,
    required TResult Function(_ChangedRootIsAvlive value) changeRootIsAvlive,
    required TResult Function(_ChangedRootGender value) changeRootGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeRootDeathDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedTreeName value)? changeTreeName,
    TResult? Function(_ChangedRootName value)? changeRootName,
    TResult? Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult? Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult? Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult? Function(_ChangedRootGender value)? changeRootGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeRootDeathDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedTreeName value)? changeTreeName,
    TResult Function(_ChangedRootName value)? changeRootName,
    TResult Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult Function(_ChangedRootGender value)? changeRootGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeRootDeathDate != null) {
      return changeRootDeathDate(this);
    }
    return orElse();
  }
}

abstract class _ChangedRootDeathDate implements TreeFormEvent {
  const factory _ChangedRootDeathDate(final DateTime? deathdate) =
      _$ChangedRootDeathDateImpl;

  DateTime? get deathdate;
  @JsonKey(ignore: true)
  _$$ChangedRootDeathDateImplCopyWith<_$ChangedRootDeathDateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedRootIsAvliveImplCopyWith<$Res> {
  factory _$$ChangedRootIsAvliveImplCopyWith(_$ChangedRootIsAvliveImpl value,
          $Res Function(_$ChangedRootIsAvliveImpl) then) =
      __$$ChangedRootIsAvliveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAlive});
}

/// @nodoc
class __$$ChangedRootIsAvliveImplCopyWithImpl<$Res>
    extends _$TreeFormEventCopyWithImpl<$Res, _$ChangedRootIsAvliveImpl>
    implements _$$ChangedRootIsAvliveImplCopyWith<$Res> {
  __$$ChangedRootIsAvliveImplCopyWithImpl(_$ChangedRootIsAvliveImpl _value,
      $Res Function(_$ChangedRootIsAvliveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlive = null,
  }) {
    return _then(_$ChangedRootIsAvliveImpl(
      null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangedRootIsAvliveImpl implements _ChangedRootIsAvlive {
  const _$ChangedRootIsAvliveImpl(this.isAlive);

  @override
  final bool isAlive;

  @override
  String toString() {
    return 'TreeFormEvent.changeRootIsAvlive(isAlive: $isAlive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedRootIsAvliveImpl &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAlive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedRootIsAvliveImplCopyWith<_$ChangedRootIsAvliveImpl> get copyWith =>
      __$$ChangedRootIsAvliveImplCopyWithImpl<_$ChangedRootIsAvliveImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeName) changeTreeName,
    required TResult Function(String rootName) changeRootName,
    required TResult Function(DateTime? birthdate) changeRootBirthDate,
    required TResult Function(DateTime? deathdate) changeRootDeathDate,
    required TResult Function(bool isAlive) changeRootIsAvlive,
    required TResult Function(Gender gender) changeRootGender,
    required TResult Function() saved,
  }) {
    return changeRootIsAvlive(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeName)? changeTreeName,
    TResult? Function(String rootName)? changeRootName,
    TResult? Function(DateTime? birthdate)? changeRootBirthDate,
    TResult? Function(DateTime? deathdate)? changeRootDeathDate,
    TResult? Function(bool isAlive)? changeRootIsAvlive,
    TResult? Function(Gender gender)? changeRootGender,
    TResult? Function()? saved,
  }) {
    return changeRootIsAvlive?.call(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeName)? changeTreeName,
    TResult Function(String rootName)? changeRootName,
    TResult Function(DateTime? birthdate)? changeRootBirthDate,
    TResult Function(DateTime? deathdate)? changeRootDeathDate,
    TResult Function(bool isAlive)? changeRootIsAvlive,
    TResult Function(Gender gender)? changeRootGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeRootIsAvlive != null) {
      return changeRootIsAvlive(isAlive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedTreeName value) changeTreeName,
    required TResult Function(_ChangedRootName value) changeRootName,
    required TResult Function(_ChangedRootBirthDate value) changeRootBirthDate,
    required TResult Function(_ChangedRootDeathDate value) changeRootDeathDate,
    required TResult Function(_ChangedRootIsAvlive value) changeRootIsAvlive,
    required TResult Function(_ChangedRootGender value) changeRootGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeRootIsAvlive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedTreeName value)? changeTreeName,
    TResult? Function(_ChangedRootName value)? changeRootName,
    TResult? Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult? Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult? Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult? Function(_ChangedRootGender value)? changeRootGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeRootIsAvlive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedTreeName value)? changeTreeName,
    TResult Function(_ChangedRootName value)? changeRootName,
    TResult Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult Function(_ChangedRootGender value)? changeRootGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeRootIsAvlive != null) {
      return changeRootIsAvlive(this);
    }
    return orElse();
  }
}

abstract class _ChangedRootIsAvlive implements TreeFormEvent {
  const factory _ChangedRootIsAvlive(final bool isAlive) =
      _$ChangedRootIsAvliveImpl;

  bool get isAlive;
  @JsonKey(ignore: true)
  _$$ChangedRootIsAvliveImplCopyWith<_$ChangedRootIsAvliveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedRootGenderImplCopyWith<$Res> {
  factory _$$ChangedRootGenderImplCopyWith(_$ChangedRootGenderImpl value,
          $Res Function(_$ChangedRootGenderImpl) then) =
      __$$ChangedRootGenderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Gender gender});
}

/// @nodoc
class __$$ChangedRootGenderImplCopyWithImpl<$Res>
    extends _$TreeFormEventCopyWithImpl<$Res, _$ChangedRootGenderImpl>
    implements _$$ChangedRootGenderImplCopyWith<$Res> {
  __$$ChangedRootGenderImplCopyWithImpl(_$ChangedRootGenderImpl _value,
      $Res Function(_$ChangedRootGenderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$ChangedRootGenderImpl(
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
    ));
  }
}

/// @nodoc

class _$ChangedRootGenderImpl implements _ChangedRootGender {
  const _$ChangedRootGenderImpl(this.gender);

  @override
  final Gender gender;

  @override
  String toString() {
    return 'TreeFormEvent.changeRootGender(gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedRootGenderImpl &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedRootGenderImplCopyWith<_$ChangedRootGenderImpl> get copyWith =>
      __$$ChangedRootGenderImplCopyWithImpl<_$ChangedRootGenderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeName) changeTreeName,
    required TResult Function(String rootName) changeRootName,
    required TResult Function(DateTime? birthdate) changeRootBirthDate,
    required TResult Function(DateTime? deathdate) changeRootDeathDate,
    required TResult Function(bool isAlive) changeRootIsAvlive,
    required TResult Function(Gender gender) changeRootGender,
    required TResult Function() saved,
  }) {
    return changeRootGender(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeName)? changeTreeName,
    TResult? Function(String rootName)? changeRootName,
    TResult? Function(DateTime? birthdate)? changeRootBirthDate,
    TResult? Function(DateTime? deathdate)? changeRootDeathDate,
    TResult? Function(bool isAlive)? changeRootIsAvlive,
    TResult? Function(Gender gender)? changeRootGender,
    TResult? Function()? saved,
  }) {
    return changeRootGender?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeName)? changeTreeName,
    TResult Function(String rootName)? changeRootName,
    TResult Function(DateTime? birthdate)? changeRootBirthDate,
    TResult Function(DateTime? deathdate)? changeRootDeathDate,
    TResult Function(bool isAlive)? changeRootIsAvlive,
    TResult Function(Gender gender)? changeRootGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeRootGender != null) {
      return changeRootGender(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedTreeName value) changeTreeName,
    required TResult Function(_ChangedRootName value) changeRootName,
    required TResult Function(_ChangedRootBirthDate value) changeRootBirthDate,
    required TResult Function(_ChangedRootDeathDate value) changeRootDeathDate,
    required TResult Function(_ChangedRootIsAvlive value) changeRootIsAvlive,
    required TResult Function(_ChangedRootGender value) changeRootGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeRootGender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedTreeName value)? changeTreeName,
    TResult? Function(_ChangedRootName value)? changeRootName,
    TResult? Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult? Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult? Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult? Function(_ChangedRootGender value)? changeRootGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeRootGender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedTreeName value)? changeTreeName,
    TResult Function(_ChangedRootName value)? changeRootName,
    TResult Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult Function(_ChangedRootGender value)? changeRootGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeRootGender != null) {
      return changeRootGender(this);
    }
    return orElse();
  }
}

abstract class _ChangedRootGender implements TreeFormEvent {
  const factory _ChangedRootGender(final Gender gender) =
      _$ChangedRootGenderImpl;

  Gender get gender;
  @JsonKey(ignore: true)
  _$$ChangedRootGenderImplCopyWith<_$ChangedRootGenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$TreeFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'TreeFormEvent.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeName) changeTreeName,
    required TResult Function(String rootName) changeRootName,
    required TResult Function(DateTime? birthdate) changeRootBirthDate,
    required TResult Function(DateTime? deathdate) changeRootDeathDate,
    required TResult Function(bool isAlive) changeRootIsAvlive,
    required TResult Function(Gender gender) changeRootGender,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeName)? changeTreeName,
    TResult? Function(String rootName)? changeRootName,
    TResult? Function(DateTime? birthdate)? changeRootBirthDate,
    TResult? Function(DateTime? deathdate)? changeRootDeathDate,
    TResult? Function(bool isAlive)? changeRootIsAvlive,
    TResult? Function(Gender gender)? changeRootGender,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeName)? changeTreeName,
    TResult Function(String rootName)? changeRootName,
    TResult Function(DateTime? birthdate)? changeRootBirthDate,
    TResult Function(DateTime? deathdate)? changeRootDeathDate,
    TResult Function(bool isAlive)? changeRootIsAvlive,
    TResult Function(Gender gender)? changeRootGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedTreeName value) changeTreeName,
    required TResult Function(_ChangedRootName value) changeRootName,
    required TResult Function(_ChangedRootBirthDate value) changeRootBirthDate,
    required TResult Function(_ChangedRootDeathDate value) changeRootDeathDate,
    required TResult Function(_ChangedRootIsAvlive value) changeRootIsAvlive,
    required TResult Function(_ChangedRootGender value) changeRootGender,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedTreeName value)? changeTreeName,
    TResult? Function(_ChangedRootName value)? changeRootName,
    TResult? Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult? Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult? Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult? Function(_ChangedRootGender value)? changeRootGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedTreeName value)? changeTreeName,
    TResult Function(_ChangedRootName value)? changeRootName,
    TResult Function(_ChangedRootBirthDate value)? changeRootBirthDate,
    TResult Function(_ChangedRootDeathDate value)? changeRootDeathDate,
    TResult Function(_ChangedRootIsAvlive value)? changeRootIsAvlive,
    TResult Function(_ChangedRootGender value)? changeRootGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements TreeFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$TreeFormState {
  Tree get tree => throw _privateConstructorUsedError;
  TNode get root => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing =>
      throw _privateConstructorUsedError; // only for update existing ones
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isViewing => throw _privateConstructorUsedError;
  bool get isCreated => throw _privateConstructorUsedError;
  UniqueId get userId => throw _privateConstructorUsedError;
  Option<Either<TreeFailure, TNode>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeFormStateCopyWith<TreeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeFormStateCopyWith<$Res> {
  factory $TreeFormStateCopyWith(
          TreeFormState value, $Res Function(TreeFormState) then) =
      _$TreeFormStateCopyWithImpl<$Res, TreeFormState>;
  @useResult
  $Res call(
      {Tree tree,
      TNode root,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      bool isViewing,
      bool isCreated,
      UniqueId userId,
      Option<Either<TreeFailure, TNode>> saveFailureOrSuccessOption});

  $TreeCopyWith<$Res> get tree;
  $TNodeCopyWith<$Res> get root;
}

/// @nodoc
class _$TreeFormStateCopyWithImpl<$Res, $Val extends TreeFormState>
    implements $TreeFormStateCopyWith<$Res> {
  _$TreeFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
    Object? root = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? isCreated = null,
    Object? userId = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as TNode,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewing: null == isViewing
          ? _value.isViewing
          : isViewing // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TreeFailure, TNode>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeCopyWith<$Res> get tree {
    return $TreeCopyWith<$Res>(_value.tree, (value) {
      return _then(_value.copyWith(tree: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get root {
    return $TNodeCopyWith<$Res>(_value.root, (value) {
      return _then(_value.copyWith(root: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TreeFormStateImplCopyWith<$Res>
    implements $TreeFormStateCopyWith<$Res> {
  factory _$$TreeFormStateImplCopyWith(
          _$TreeFormStateImpl value, $Res Function(_$TreeFormStateImpl) then) =
      __$$TreeFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Tree tree,
      TNode root,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      bool isViewing,
      bool isCreated,
      UniqueId userId,
      Option<Either<TreeFailure, TNode>> saveFailureOrSuccessOption});

  @override
  $TreeCopyWith<$Res> get tree;
  @override
  $TNodeCopyWith<$Res> get root;
}

/// @nodoc
class __$$TreeFormStateImplCopyWithImpl<$Res>
    extends _$TreeFormStateCopyWithImpl<$Res, _$TreeFormStateImpl>
    implements _$$TreeFormStateImplCopyWith<$Res> {
  __$$TreeFormStateImplCopyWithImpl(
      _$TreeFormStateImpl _value, $Res Function(_$TreeFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
    Object? root = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? isCreated = null,
    Object? userId = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$TreeFormStateImpl(
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as TNode,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewing: null == isViewing
          ? _value.isViewing
          : isViewing // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TreeFailure, TNode>>,
    ));
  }
}

/// @nodoc

class _$TreeFormStateImpl implements _TreeFormState {
  const _$TreeFormStateImpl(
      {required this.tree,
      required this.root,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.isViewing,
      required this.isCreated,
      required this.userId,
      required this.saveFailureOrSuccessOption});

  @override
  final Tree tree;
  @override
  final TNode root;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isEditing;
// only for update existing ones
  @override
  final bool isSaving;
  @override
  final bool isViewing;
  @override
  final bool isCreated;
  @override
  final UniqueId userId;
  @override
  final Option<Either<TreeFailure, TNode>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TreeFormState(tree: $tree, root: $root, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, isViewing: $isViewing, isCreated: $isCreated, userId: $userId, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeFormStateImpl &&
            (identical(other.tree, tree) || other.tree == tree) &&
            (identical(other.root, root) || other.root == root) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isViewing, isViewing) ||
                other.isViewing == isViewing) &&
            (identical(other.isCreated, isCreated) ||
                other.isCreated == isCreated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      tree,
      root,
      showErrorMessages,
      isEditing,
      isSaving,
      isViewing,
      isCreated,
      userId,
      saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeFormStateImplCopyWith<_$TreeFormStateImpl> get copyWith =>
      __$$TreeFormStateImplCopyWithImpl<_$TreeFormStateImpl>(this, _$identity);
}

abstract class _TreeFormState implements TreeFormState {
  const factory _TreeFormState(
      {required final Tree tree,
      required final TNode root,
      required final AutovalidateMode showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final bool isViewing,
      required final bool isCreated,
      required final UniqueId userId,
      required final Option<Either<TreeFailure, TNode>>
          saveFailureOrSuccessOption}) = _$TreeFormStateImpl;

  @override
  Tree get tree;
  @override
  TNode get root;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isEditing;
  @override // only for update existing ones
  bool get isSaving;
  @override
  bool get isViewing;
  @override
  bool get isCreated;
  @override
  UniqueId get userId;
  @override
  Option<Either<TreeFailure, TNode>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$TreeFormStateImplCopyWith<_$TreeFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
