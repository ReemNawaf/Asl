// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChildFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId upperFamily)
        initialized,
    required TResult Function(TNode child) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeBirthDate,
    required TResult Function(DateTime? date) changeDeathDate,
    required TResult Function(bool isAlive) changeIsAlive,
    required TResult Function(Gender gender) changeGender,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult? Function(TNode child)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeBirthDate,
    TResult? Function(DateTime? date)? changeDeathDate,
    TResult? Function(bool isAlive)? changeIsAlive,
    TResult? Function(Gender gender)? changeGender,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult Function(TNode child)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeBirthDate,
    TResult Function(DateTime? date)? changeDeathDate,
    TResult Function(bool isAlive)? changeIsAlive,
    TResult Function(Gender gender)? changeGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeBirthgeDate value) changeBirthDate,
    required TResult Function(_ChangeDeathDate value) changeDeathDate,
    required TResult Function(_ChangeIsAlive value) changeIsAlive,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult? Function(_ChangeDeathDate value)? changeDeathDate,
    TResult? Function(_ChangeIsAlive value)? changeIsAlive,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult Function(_ChangeDeathDate value)? changeDeathDate,
    TResult Function(_ChangeIsAlive value)? changeIsAlive,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildFormEventCopyWith<$Res> {
  factory $ChildFormEventCopyWith(
          ChildFormEvent value, $Res Function(ChildFormEvent) then) =
      _$ChildFormEventCopyWithImpl<$Res, ChildFormEvent>;
}

/// @nodoc
class _$ChildFormEventCopyWithImpl<$Res, $Val extends ChildFormEvent>
    implements $ChildFormEventCopyWith<$Res> {
  _$ChildFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId treeId, UniqueId upperFamily});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ChildFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
    Object? upperFamily = null,
  }) {
    return _then(_$InitializedImpl(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      upperFamily: null == upperFamily
          ? _value.upperFamily
          : upperFamily // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl({required this.treeId, required this.upperFamily});

  @override
  final UniqueId treeId;
  @override
  final UniqueId upperFamily;

  @override
  String toString() {
    return 'ChildFormEvent.initialized(treeId: $treeId, upperFamily: $upperFamily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.upperFamily, upperFamily) ||
                other.upperFamily == upperFamily));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId, upperFamily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId upperFamily)
        initialized,
    required TResult Function(TNode child) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeBirthDate,
    required TResult Function(DateTime? date) changeDeathDate,
    required TResult Function(bool isAlive) changeIsAlive,
    required TResult Function(Gender gender) changeGender,
    required TResult Function() saved,
  }) {
    return initialized(treeId, upperFamily);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult? Function(TNode child)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeBirthDate,
    TResult? Function(DateTime? date)? changeDeathDate,
    TResult? Function(bool isAlive)? changeIsAlive,
    TResult? Function(Gender gender)? changeGender,
    TResult? Function()? saved,
  }) {
    return initialized?.call(treeId, upperFamily);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult Function(TNode child)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeBirthDate,
    TResult Function(DateTime? date)? changeDeathDate,
    TResult Function(bool isAlive)? changeIsAlive,
    TResult Function(Gender gender)? changeGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(treeId, upperFamily);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeBirthgeDate value) changeBirthDate,
    required TResult Function(_ChangeDeathDate value) changeDeathDate,
    required TResult Function(_ChangeIsAlive value) changeIsAlive,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult? Function(_ChangeDeathDate value)? changeDeathDate,
    TResult? Function(_ChangeIsAlive value)? changeIsAlive,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult Function(_ChangeDeathDate value)? changeDeathDate,
    TResult Function(_ChangeIsAlive value)? changeIsAlive,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ChildFormEvent {
  const factory _Initialized(
      {required final UniqueId treeId,
      required final UniqueId upperFamily}) = _$InitializedImpl;

  UniqueId get treeId;
  UniqueId get upperFamily;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditedImplCopyWith<$Res> {
  factory _$$EditedImplCopyWith(
          _$EditedImpl value, $Res Function(_$EditedImpl) then) =
      __$$EditedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TNode child});

  $TNodeCopyWith<$Res> get child;
}

/// @nodoc
class __$$EditedImplCopyWithImpl<$Res>
    extends _$ChildFormEventCopyWithImpl<$Res, _$EditedImpl>
    implements _$$EditedImplCopyWith<$Res> {
  __$$EditedImplCopyWithImpl(
      _$EditedImpl _value, $Res Function(_$EditedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
  }) {
    return _then(_$EditedImpl(
      null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as TNode,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get child {
    return $TNodeCopyWith<$Res>(_value.child, (value) {
      return _then(_value.copyWith(child: value));
    });
  }
}

/// @nodoc

class _$EditedImpl implements _Edited {
  const _$EditedImpl(this.child);

  @override
  final TNode child;

  @override
  String toString() {
    return 'ChildFormEvent.edited(child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditedImpl &&
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode => Object.hash(runtimeType, child);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      __$$EditedImplCopyWithImpl<_$EditedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId upperFamily)
        initialized,
    required TResult Function(TNode child) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeBirthDate,
    required TResult Function(DateTime? date) changeDeathDate,
    required TResult Function(bool isAlive) changeIsAlive,
    required TResult Function(Gender gender) changeGender,
    required TResult Function() saved,
  }) {
    return edited(child);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult? Function(TNode child)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeBirthDate,
    TResult? Function(DateTime? date)? changeDeathDate,
    TResult? Function(bool isAlive)? changeIsAlive,
    TResult? Function(Gender gender)? changeGender,
    TResult? Function()? saved,
  }) {
    return edited?.call(child);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult Function(TNode child)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeBirthDate,
    TResult Function(DateTime? date)? changeDeathDate,
    TResult Function(bool isAlive)? changeIsAlive,
    TResult Function(Gender gender)? changeGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(child);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeBirthgeDate value) changeBirthDate,
    required TResult Function(_ChangeDeathDate value) changeDeathDate,
    required TResult Function(_ChangeIsAlive value) changeIsAlive,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_Saved value) saved,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult? Function(_ChangeDeathDate value)? changeDeathDate,
    TResult? Function(_ChangeIsAlive value)? changeIsAlive,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult Function(_ChangeDeathDate value)? changeDeathDate,
    TResult Function(_ChangeIsAlive value)? changeIsAlive,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements ChildFormEvent {
  const factory _Edited(final TNode child) = _$EditedImpl;

  TNode get child;
  @JsonKey(ignore: true)
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedNameImplCopyWith<$Res> {
  factory _$$ChangedNameImplCopyWith(
          _$ChangedNameImpl value, $Res Function(_$ChangedNameImpl) then) =
      __$$ChangedNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ChangedNameImplCopyWithImpl<$Res>
    extends _$ChildFormEventCopyWithImpl<$Res, _$ChangedNameImpl>
    implements _$$ChangedNameImplCopyWith<$Res> {
  __$$ChangedNameImplCopyWithImpl(
      _$ChangedNameImpl _value, $Res Function(_$ChangedNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ChangedNameImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangedNameImpl implements _ChangedName {
  const _$ChangedNameImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ChildFormEvent.changeName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedNameImplCopyWith<_$ChangedNameImpl> get copyWith =>
      __$$ChangedNameImplCopyWithImpl<_$ChangedNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId upperFamily)
        initialized,
    required TResult Function(TNode child) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeBirthDate,
    required TResult Function(DateTime? date) changeDeathDate,
    required TResult Function(bool isAlive) changeIsAlive,
    required TResult Function(Gender gender) changeGender,
    required TResult Function() saved,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult? Function(TNode child)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeBirthDate,
    TResult? Function(DateTime? date)? changeDeathDate,
    TResult? Function(bool isAlive)? changeIsAlive,
    TResult? Function(Gender gender)? changeGender,
    TResult? Function()? saved,
  }) {
    return changeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult Function(TNode child)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeBirthDate,
    TResult Function(DateTime? date)? changeDeathDate,
    TResult Function(bool isAlive)? changeIsAlive,
    TResult Function(Gender gender)? changeGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeBirthgeDate value) changeBirthDate,
    required TResult Function(_ChangeDeathDate value) changeDeathDate,
    required TResult Function(_ChangeIsAlive value) changeIsAlive,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult? Function(_ChangeDeathDate value)? changeDeathDate,
    TResult? Function(_ChangeIsAlive value)? changeIsAlive,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult Function(_ChangeDeathDate value)? changeDeathDate,
    TResult Function(_ChangeIsAlive value)? changeIsAlive,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangedName implements ChildFormEvent {
  const factory _ChangedName(final String name) = _$ChangedNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$ChangedNameImplCopyWith<_$ChangedNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeBirthgeDateImplCopyWith<$Res> {
  factory _$$ChangeBirthgeDateImplCopyWith(_$ChangeBirthgeDateImpl value,
          $Res Function(_$ChangeBirthgeDateImpl) then) =
      __$$ChangeBirthgeDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$ChangeBirthgeDateImplCopyWithImpl<$Res>
    extends _$ChildFormEventCopyWithImpl<$Res, _$ChangeBirthgeDateImpl>
    implements _$$ChangeBirthgeDateImplCopyWith<$Res> {
  __$$ChangeBirthgeDateImplCopyWithImpl(_$ChangeBirthgeDateImpl _value,
      $Res Function(_$ChangeBirthgeDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$ChangeBirthgeDateImpl(
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ChangeBirthgeDateImpl implements _ChangeBirthgeDate {
  const _$ChangeBirthgeDateImpl(this.date);

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ChildFormEvent.changeBirthDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBirthgeDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeBirthgeDateImplCopyWith<_$ChangeBirthgeDateImpl> get copyWith =>
      __$$ChangeBirthgeDateImplCopyWithImpl<_$ChangeBirthgeDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId upperFamily)
        initialized,
    required TResult Function(TNode child) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeBirthDate,
    required TResult Function(DateTime? date) changeDeathDate,
    required TResult Function(bool isAlive) changeIsAlive,
    required TResult Function(Gender gender) changeGender,
    required TResult Function() saved,
  }) {
    return changeBirthDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult? Function(TNode child)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeBirthDate,
    TResult? Function(DateTime? date)? changeDeathDate,
    TResult? Function(bool isAlive)? changeIsAlive,
    TResult? Function(Gender gender)? changeGender,
    TResult? Function()? saved,
  }) {
    return changeBirthDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult Function(TNode child)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeBirthDate,
    TResult Function(DateTime? date)? changeDeathDate,
    TResult Function(bool isAlive)? changeIsAlive,
    TResult Function(Gender gender)? changeGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeBirthDate != null) {
      return changeBirthDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeBirthgeDate value) changeBirthDate,
    required TResult Function(_ChangeDeathDate value) changeDeathDate,
    required TResult Function(_ChangeIsAlive value) changeIsAlive,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeBirthDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult? Function(_ChangeDeathDate value)? changeDeathDate,
    TResult? Function(_ChangeIsAlive value)? changeIsAlive,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeBirthDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult Function(_ChangeDeathDate value)? changeDeathDate,
    TResult Function(_ChangeIsAlive value)? changeIsAlive,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeBirthDate != null) {
      return changeBirthDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeBirthgeDate implements ChildFormEvent {
  const factory _ChangeBirthgeDate(final DateTime? date) =
      _$ChangeBirthgeDateImpl;

  DateTime? get date;
  @JsonKey(ignore: true)
  _$$ChangeBirthgeDateImplCopyWith<_$ChangeBirthgeDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDeathDateImplCopyWith<$Res> {
  factory _$$ChangeDeathDateImplCopyWith(_$ChangeDeathDateImpl value,
          $Res Function(_$ChangeDeathDateImpl) then) =
      __$$ChangeDeathDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$ChangeDeathDateImplCopyWithImpl<$Res>
    extends _$ChildFormEventCopyWithImpl<$Res, _$ChangeDeathDateImpl>
    implements _$$ChangeDeathDateImplCopyWith<$Res> {
  __$$ChangeDeathDateImplCopyWithImpl(
      _$ChangeDeathDateImpl _value, $Res Function(_$ChangeDeathDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$ChangeDeathDateImpl(
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ChangeDeathDateImpl implements _ChangeDeathDate {
  const _$ChangeDeathDateImpl(this.date);

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ChildFormEvent.changeDeathDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDeathDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDeathDateImplCopyWith<_$ChangeDeathDateImpl> get copyWith =>
      __$$ChangeDeathDateImplCopyWithImpl<_$ChangeDeathDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId upperFamily)
        initialized,
    required TResult Function(TNode child) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeBirthDate,
    required TResult Function(DateTime? date) changeDeathDate,
    required TResult Function(bool isAlive) changeIsAlive,
    required TResult Function(Gender gender) changeGender,
    required TResult Function() saved,
  }) {
    return changeDeathDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult? Function(TNode child)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeBirthDate,
    TResult? Function(DateTime? date)? changeDeathDate,
    TResult? Function(bool isAlive)? changeIsAlive,
    TResult? Function(Gender gender)? changeGender,
    TResult? Function()? saved,
  }) {
    return changeDeathDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult Function(TNode child)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeBirthDate,
    TResult Function(DateTime? date)? changeDeathDate,
    TResult Function(bool isAlive)? changeIsAlive,
    TResult Function(Gender gender)? changeGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeDeathDate != null) {
      return changeDeathDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeBirthgeDate value) changeBirthDate,
    required TResult Function(_ChangeDeathDate value) changeDeathDate,
    required TResult Function(_ChangeIsAlive value) changeIsAlive,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeDeathDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult? Function(_ChangeDeathDate value)? changeDeathDate,
    TResult? Function(_ChangeIsAlive value)? changeIsAlive,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeDeathDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult Function(_ChangeDeathDate value)? changeDeathDate,
    TResult Function(_ChangeIsAlive value)? changeIsAlive,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeDeathDate != null) {
      return changeDeathDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeDeathDate implements ChildFormEvent {
  const factory _ChangeDeathDate(final DateTime? date) = _$ChangeDeathDateImpl;

  DateTime? get date;
  @JsonKey(ignore: true)
  _$$ChangeDeathDateImplCopyWith<_$ChangeDeathDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeIsAliveImplCopyWith<$Res> {
  factory _$$ChangeIsAliveImplCopyWith(
          _$ChangeIsAliveImpl value, $Res Function(_$ChangeIsAliveImpl) then) =
      __$$ChangeIsAliveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAlive});
}

/// @nodoc
class __$$ChangeIsAliveImplCopyWithImpl<$Res>
    extends _$ChildFormEventCopyWithImpl<$Res, _$ChangeIsAliveImpl>
    implements _$$ChangeIsAliveImplCopyWith<$Res> {
  __$$ChangeIsAliveImplCopyWithImpl(
      _$ChangeIsAliveImpl _value, $Res Function(_$ChangeIsAliveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAlive = null,
  }) {
    return _then(_$ChangeIsAliveImpl(
      null == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeIsAliveImpl implements _ChangeIsAlive {
  const _$ChangeIsAliveImpl(this.isAlive);

  @override
  final bool isAlive;

  @override
  String toString() {
    return 'ChildFormEvent.changeIsAlive(isAlive: $isAlive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIsAliveImpl &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAlive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIsAliveImplCopyWith<_$ChangeIsAliveImpl> get copyWith =>
      __$$ChangeIsAliveImplCopyWithImpl<_$ChangeIsAliveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId upperFamily)
        initialized,
    required TResult Function(TNode child) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeBirthDate,
    required TResult Function(DateTime? date) changeDeathDate,
    required TResult Function(bool isAlive) changeIsAlive,
    required TResult Function(Gender gender) changeGender,
    required TResult Function() saved,
  }) {
    return changeIsAlive(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult? Function(TNode child)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeBirthDate,
    TResult? Function(DateTime? date)? changeDeathDate,
    TResult? Function(bool isAlive)? changeIsAlive,
    TResult? Function(Gender gender)? changeGender,
    TResult? Function()? saved,
  }) {
    return changeIsAlive?.call(isAlive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult Function(TNode child)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeBirthDate,
    TResult Function(DateTime? date)? changeDeathDate,
    TResult Function(bool isAlive)? changeIsAlive,
    TResult Function(Gender gender)? changeGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeIsAlive != null) {
      return changeIsAlive(isAlive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeBirthgeDate value) changeBirthDate,
    required TResult Function(_ChangeDeathDate value) changeDeathDate,
    required TResult Function(_ChangeIsAlive value) changeIsAlive,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeIsAlive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult? Function(_ChangeDeathDate value)? changeDeathDate,
    TResult? Function(_ChangeIsAlive value)? changeIsAlive,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeIsAlive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult Function(_ChangeDeathDate value)? changeDeathDate,
    TResult Function(_ChangeIsAlive value)? changeIsAlive,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeIsAlive != null) {
      return changeIsAlive(this);
    }
    return orElse();
  }
}

abstract class _ChangeIsAlive implements ChildFormEvent {
  const factory _ChangeIsAlive(final bool isAlive) = _$ChangeIsAliveImpl;

  bool get isAlive;
  @JsonKey(ignore: true)
  _$$ChangeIsAliveImplCopyWith<_$ChangeIsAliveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeGenderImplCopyWith<$Res> {
  factory _$$ChangeGenderImplCopyWith(
          _$ChangeGenderImpl value, $Res Function(_$ChangeGenderImpl) then) =
      __$$ChangeGenderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Gender gender});
}

/// @nodoc
class __$$ChangeGenderImplCopyWithImpl<$Res>
    extends _$ChildFormEventCopyWithImpl<$Res, _$ChangeGenderImpl>
    implements _$$ChangeGenderImplCopyWith<$Res> {
  __$$ChangeGenderImplCopyWithImpl(
      _$ChangeGenderImpl _value, $Res Function(_$ChangeGenderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$ChangeGenderImpl(
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
    ));
  }
}

/// @nodoc

class _$ChangeGenderImpl implements _ChangeGender {
  const _$ChangeGenderImpl(this.gender);

  @override
  final Gender gender;

  @override
  String toString() {
    return 'ChildFormEvent.changeGender(gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeGenderImpl &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeGenderImplCopyWith<_$ChangeGenderImpl> get copyWith =>
      __$$ChangeGenderImplCopyWithImpl<_$ChangeGenderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId treeId, UniqueId upperFamily)
        initialized,
    required TResult Function(TNode child) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeBirthDate,
    required TResult Function(DateTime? date) changeDeathDate,
    required TResult Function(bool isAlive) changeIsAlive,
    required TResult Function(Gender gender) changeGender,
    required TResult Function() saved,
  }) {
    return changeGender(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult? Function(TNode child)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeBirthDate,
    TResult? Function(DateTime? date)? changeDeathDate,
    TResult? Function(bool isAlive)? changeIsAlive,
    TResult? Function(Gender gender)? changeGender,
    TResult? Function()? saved,
  }) {
    return changeGender?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult Function(TNode child)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeBirthDate,
    TResult Function(DateTime? date)? changeDeathDate,
    TResult Function(bool isAlive)? changeIsAlive,
    TResult Function(Gender gender)? changeGender,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeGender != null) {
      return changeGender(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeBirthgeDate value) changeBirthDate,
    required TResult Function(_ChangeDeathDate value) changeDeathDate,
    required TResult Function(_ChangeIsAlive value) changeIsAlive,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_Saved value) saved,
  }) {
    return changeGender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult? Function(_ChangeDeathDate value)? changeDeathDate,
    TResult? Function(_ChangeIsAlive value)? changeIsAlive,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeGender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult Function(_ChangeDeathDate value)? changeDeathDate,
    TResult Function(_ChangeIsAlive value)? changeIsAlive,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeGender != null) {
      return changeGender(this);
    }
    return orElse();
  }
}

abstract class _ChangeGender implements ChildFormEvent {
  const factory _ChangeGender(final Gender gender) = _$ChangeGenderImpl;

  Gender get gender;
  @JsonKey(ignore: true)
  _$$ChangeGenderImplCopyWith<_$ChangeGenderImpl> get copyWith =>
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
    extends _$ChildFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'ChildFormEvent.saved()';
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
    required TResult Function(UniqueId treeId, UniqueId upperFamily)
        initialized,
    required TResult Function(TNode child) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeBirthDate,
    required TResult Function(DateTime? date) changeDeathDate,
    required TResult Function(bool isAlive) changeIsAlive,
    required TResult Function(Gender gender) changeGender,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult? Function(TNode child)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeBirthDate,
    TResult? Function(DateTime? date)? changeDeathDate,
    TResult? Function(bool isAlive)? changeIsAlive,
    TResult? Function(Gender gender)? changeGender,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId treeId, UniqueId upperFamily)? initialized,
    TResult Function(TNode child)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeBirthDate,
    TResult Function(DateTime? date)? changeDeathDate,
    TResult Function(bool isAlive)? changeIsAlive,
    TResult Function(Gender gender)? changeGender,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeBirthgeDate value) changeBirthDate,
    required TResult Function(_ChangeDeathDate value) changeDeathDate,
    required TResult Function(_ChangeIsAlive value) changeIsAlive,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult? Function(_ChangeDeathDate value)? changeDeathDate,
    TResult? Function(_ChangeIsAlive value)? changeIsAlive,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeBirthgeDate value)? changeBirthDate,
    TResult Function(_ChangeDeathDate value)? changeDeathDate,
    TResult Function(_ChangeIsAlive value)? changeIsAlive,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ChildFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$ChildFormState {
  TNode get child => throw _privateConstructorUsedError;
  UniqueId get relationId => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isViewing => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isAdding => throw _privateConstructorUsedError;
  bool get isCreated => throw _privateConstructorUsedError;
  Option<Either<TNodeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildFormStateCopyWith<ChildFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildFormStateCopyWith<$Res> {
  factory $ChildFormStateCopyWith(
          ChildFormState value, $Res Function(ChildFormState) then) =
      _$ChildFormStateCopyWithImpl<$Res, ChildFormState>;
  @useResult
  $Res call(
      {TNode child,
      UniqueId relationId,
      AutovalidateMode showErrorMessages,
      bool isSaving,
      bool isViewing,
      bool isEditing,
      bool isAdding,
      bool isCreated,
      Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption});

  $TNodeCopyWith<$Res> get child;
}

/// @nodoc
class _$ChildFormStateCopyWithImpl<$Res, $Val extends ChildFormState>
    implements $ChildFormStateCopyWith<$Res> {
  _$ChildFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? relationId = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? isEditing = null,
    Object? isAdding = null,
    Object? isCreated = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as TNode,
      relationId: null == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewing: null == isViewing
          ? _value.isViewing
          : isViewing // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TNodeFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get child {
    return $TNodeCopyWith<$Res>(_value.child, (value) {
      return _then(_value.copyWith(child: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChildFormStateImplCopyWith<$Res>
    implements $ChildFormStateCopyWith<$Res> {
  factory _$$ChildFormStateImplCopyWith(_$ChildFormStateImpl value,
          $Res Function(_$ChildFormStateImpl) then) =
      __$$ChildFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TNode child,
      UniqueId relationId,
      AutovalidateMode showErrorMessages,
      bool isSaving,
      bool isViewing,
      bool isEditing,
      bool isAdding,
      bool isCreated,
      Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TNodeCopyWith<$Res> get child;
}

/// @nodoc
class __$$ChildFormStateImplCopyWithImpl<$Res>
    extends _$ChildFormStateCopyWithImpl<$Res, _$ChildFormStateImpl>
    implements _$$ChildFormStateImplCopyWith<$Res> {
  __$$ChildFormStateImplCopyWithImpl(
      _$ChildFormStateImpl _value, $Res Function(_$ChildFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? relationId = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? isEditing = null,
    Object? isAdding = null,
    Object? isCreated = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$ChildFormStateImpl(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as TNode,
      relationId: null == relationId
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewing: null == isViewing
          ? _value.isViewing
          : isViewing // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TNodeFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ChildFormStateImpl implements _ChildFormState {
  const _$ChildFormStateImpl(
      {required this.child,
      required this.relationId,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isViewing,
      required this.isEditing,
      required this.isAdding,
      required this.isCreated,
      required this.saveFailureOrSuccessOption});

  @override
  final TNode child;
  @override
  final UniqueId relationId;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isViewing;
  @override
  final bool isEditing;
  @override
  final bool isAdding;
  @override
  final bool isCreated;
  @override
  final Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChildFormState(child: $child, relationId: $relationId, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isViewing: $isViewing, isEditing: $isEditing, isAdding: $isAdding, isCreated: $isCreated, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildFormStateImpl &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.relationId, relationId) ||
                other.relationId == relationId) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isViewing, isViewing) ||
                other.isViewing == isViewing) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isAdding, isAdding) ||
                other.isAdding == isAdding) &&
            (identical(other.isCreated, isCreated) ||
                other.isCreated == isCreated) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      child,
      relationId,
      showErrorMessages,
      isSaving,
      isViewing,
      isEditing,
      isAdding,
      isCreated,
      saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildFormStateImplCopyWith<_$ChildFormStateImpl> get copyWith =>
      __$$ChildFormStateImplCopyWithImpl<_$ChildFormStateImpl>(
          this, _$identity);
}

abstract class _ChildFormState implements ChildFormState {
  const factory _ChildFormState(
      {required final TNode child,
      required final UniqueId relationId,
      required final AutovalidateMode showErrorMessages,
      required final bool isSaving,
      required final bool isViewing,
      required final bool isEditing,
      required final bool isAdding,
      required final bool isCreated,
      required final Option<Either<TNodeFailure, Unit>>
          saveFailureOrSuccessOption}) = _$ChildFormStateImpl;

  @override
  TNode get child;
  @override
  UniqueId get relationId;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isSaving;
  @override
  bool get isViewing;
  @override
  bool get isEditing;
  @override
  bool get isAdding;
  @override
  bool get isCreated;
  @override
  Option<Either<TNodeFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$ChildFormStateImplCopyWith<_$ChildFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
