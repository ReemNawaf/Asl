// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartnerFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TNode node) initialized,
    required TResult Function(TNode partner) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeMarriageDate,
    required TResult Function(DateTime? date) changeRelationEndDate,
    required TResult Function(MarriageStatus status) changeMarriageStatus,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(TNode partner)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeMarriageDate,
    TResult? Function(DateTime? date)? changeRelationEndDate,
    TResult? Function(MarriageStatus status)? changeMarriageStatus,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(TNode partner)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeMarriageDate,
    TResult Function(DateTime? date)? changeRelationEndDate,
    TResult Function(MarriageStatus status)? changeMarriageStatus,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeMarriageDate value) changeMarriageDate,
    required TResult Function(_ChangeRelationEndDate value)
        changeRelationEndDate,
    required TResult Function(_ChangeMarriageStatus value) changeMarriageStatus,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult? Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult? Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerFormEventCopyWith<$Res> {
  factory $PartnerFormEventCopyWith(
          PartnerFormEvent value, $Res Function(PartnerFormEvent) then) =
      _$PartnerFormEventCopyWithImpl<$Res, PartnerFormEvent>;
}

/// @nodoc
class _$PartnerFormEventCopyWithImpl<$Res, $Val extends PartnerFormEvent>
    implements $PartnerFormEventCopyWith<$Res> {
  _$PartnerFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({TNode node});

  $TNodeCopyWith<$Res> get node;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$PartnerFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = null,
  }) {
    return _then(_$InitializedImpl(
      null == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as TNode,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get node {
    return $TNodeCopyWith<$Res>(_value.node, (value) {
      return _then(_value.copyWith(node: value));
    });
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.node);

  @override
  final TNode node;

  @override
  String toString() {
    return 'PartnerFormEvent.initialized(node: $node)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.node, node) || other.node == node));
  }

  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TNode node) initialized,
    required TResult Function(TNode partner) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeMarriageDate,
    required TResult Function(DateTime? date) changeRelationEndDate,
    required TResult Function(MarriageStatus status) changeMarriageStatus,
    required TResult Function() saved,
  }) {
    return initialized(node);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(TNode partner)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeMarriageDate,
    TResult? Function(DateTime? date)? changeRelationEndDate,
    TResult? Function(MarriageStatus status)? changeMarriageStatus,
    TResult? Function()? saved,
  }) {
    return initialized?.call(node);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(TNode partner)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeMarriageDate,
    TResult Function(DateTime? date)? changeRelationEndDate,
    TResult Function(MarriageStatus status)? changeMarriageStatus,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(node);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeMarriageDate value) changeMarriageDate,
    required TResult Function(_ChangeRelationEndDate value)
        changeRelationEndDate,
    required TResult Function(_ChangeMarriageStatus value) changeMarriageStatus,
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
    TResult? Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult? Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult? Function(_ChangeMarriageStatus value)? changeMarriageStatus,
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
    TResult Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PartnerFormEvent {
  const factory _Initialized(final TNode node) = _$InitializedImpl;

  TNode get node;
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
  $Res call({TNode partner});

  $TNodeCopyWith<$Res> get partner;
}

/// @nodoc
class __$$EditedImplCopyWithImpl<$Res>
    extends _$PartnerFormEventCopyWithImpl<$Res, _$EditedImpl>
    implements _$$EditedImplCopyWith<$Res> {
  __$$EditedImplCopyWithImpl(
      _$EditedImpl _value, $Res Function(_$EditedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partner = null,
  }) {
    return _then(_$EditedImpl(
      null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as TNode,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get partner {
    return $TNodeCopyWith<$Res>(_value.partner, (value) {
      return _then(_value.copyWith(partner: value));
    });
  }
}

/// @nodoc

class _$EditedImpl implements _Edited {
  const _$EditedImpl(this.partner);

  @override
  final TNode partner;

  @override
  String toString() {
    return 'PartnerFormEvent.edited(partner: $partner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditedImpl &&
            (identical(other.partner, partner) || other.partner == partner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      __$$EditedImplCopyWithImpl<_$EditedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TNode node) initialized,
    required TResult Function(TNode partner) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeMarriageDate,
    required TResult Function(DateTime? date) changeRelationEndDate,
    required TResult Function(MarriageStatus status) changeMarriageStatus,
    required TResult Function() saved,
  }) {
    return edited(partner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(TNode partner)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeMarriageDate,
    TResult? Function(DateTime? date)? changeRelationEndDate,
    TResult? Function(MarriageStatus status)? changeMarriageStatus,
    TResult? Function()? saved,
  }) {
    return edited?.call(partner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(TNode partner)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeMarriageDate,
    TResult Function(DateTime? date)? changeRelationEndDate,
    TResult Function(MarriageStatus status)? changeMarriageStatus,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(partner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeMarriageDate value) changeMarriageDate,
    required TResult Function(_ChangeRelationEndDate value)
        changeRelationEndDate,
    required TResult Function(_ChangeMarriageStatus value) changeMarriageStatus,
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
    TResult? Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult? Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult? Function(_ChangeMarriageStatus value)? changeMarriageStatus,
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
    TResult Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements PartnerFormEvent {
  const factory _Edited(final TNode partner) = _$EditedImpl;

  TNode get partner;
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
    extends _$PartnerFormEventCopyWithImpl<$Res, _$ChangedNameImpl>
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
    return 'PartnerFormEvent.changeName(name: $name)';
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
    required TResult Function(TNode node) initialized,
    required TResult Function(TNode partner) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeMarriageDate,
    required TResult Function(DateTime? date) changeRelationEndDate,
    required TResult Function(MarriageStatus status) changeMarriageStatus,
    required TResult Function() saved,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(TNode partner)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeMarriageDate,
    TResult? Function(DateTime? date)? changeRelationEndDate,
    TResult? Function(MarriageStatus status)? changeMarriageStatus,
    TResult? Function()? saved,
  }) {
    return changeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(TNode partner)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeMarriageDate,
    TResult Function(DateTime? date)? changeRelationEndDate,
    TResult Function(MarriageStatus status)? changeMarriageStatus,
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
    required TResult Function(_ChangeMarriageDate value) changeMarriageDate,
    required TResult Function(_ChangeRelationEndDate value)
        changeRelationEndDate,
    required TResult Function(_ChangeMarriageStatus value) changeMarriageStatus,
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
    TResult? Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult? Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult? Function(_ChangeMarriageStatus value)? changeMarriageStatus,
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
    TResult Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangedName implements PartnerFormEvent {
  const factory _ChangedName(final String name) = _$ChangedNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$ChangedNameImplCopyWith<_$ChangedNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeMarriageDateImplCopyWith<$Res> {
  factory _$$ChangeMarriageDateImplCopyWith(_$ChangeMarriageDateImpl value,
          $Res Function(_$ChangeMarriageDateImpl) then) =
      __$$ChangeMarriageDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$ChangeMarriageDateImplCopyWithImpl<$Res>
    extends _$PartnerFormEventCopyWithImpl<$Res, _$ChangeMarriageDateImpl>
    implements _$$ChangeMarriageDateImplCopyWith<$Res> {
  __$$ChangeMarriageDateImplCopyWithImpl(_$ChangeMarriageDateImpl _value,
      $Res Function(_$ChangeMarriageDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$ChangeMarriageDateImpl(
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ChangeMarriageDateImpl implements _ChangeMarriageDate {
  const _$ChangeMarriageDateImpl(this.date);

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'PartnerFormEvent.changeMarriageDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMarriageDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeMarriageDateImplCopyWith<_$ChangeMarriageDateImpl> get copyWith =>
      __$$ChangeMarriageDateImplCopyWithImpl<_$ChangeMarriageDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TNode node) initialized,
    required TResult Function(TNode partner) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeMarriageDate,
    required TResult Function(DateTime? date) changeRelationEndDate,
    required TResult Function(MarriageStatus status) changeMarriageStatus,
    required TResult Function() saved,
  }) {
    return changeMarriageDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(TNode partner)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeMarriageDate,
    TResult? Function(DateTime? date)? changeRelationEndDate,
    TResult? Function(MarriageStatus status)? changeMarriageStatus,
    TResult? Function()? saved,
  }) {
    return changeMarriageDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(TNode partner)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeMarriageDate,
    TResult Function(DateTime? date)? changeRelationEndDate,
    TResult Function(MarriageStatus status)? changeMarriageStatus,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeMarriageDate != null) {
      return changeMarriageDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeMarriageDate value) changeMarriageDate,
    required TResult Function(_ChangeRelationEndDate value)
        changeRelationEndDate,
    required TResult Function(_ChangeMarriageStatus value) changeMarriageStatus,
    required TResult Function(_Saved value) saved,
  }) {
    return changeMarriageDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult? Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult? Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeMarriageDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeMarriageDate != null) {
      return changeMarriageDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeMarriageDate implements PartnerFormEvent {
  const factory _ChangeMarriageDate(final DateTime? date) =
      _$ChangeMarriageDateImpl;

  DateTime? get date;
  @JsonKey(ignore: true)
  _$$ChangeMarriageDateImplCopyWith<_$ChangeMarriageDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeRelationEndDateImplCopyWith<$Res> {
  factory _$$ChangeRelationEndDateImplCopyWith(
          _$ChangeRelationEndDateImpl value,
          $Res Function(_$ChangeRelationEndDateImpl) then) =
      __$$ChangeRelationEndDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$ChangeRelationEndDateImplCopyWithImpl<$Res>
    extends _$PartnerFormEventCopyWithImpl<$Res, _$ChangeRelationEndDateImpl>
    implements _$$ChangeRelationEndDateImplCopyWith<$Res> {
  __$$ChangeRelationEndDateImplCopyWithImpl(_$ChangeRelationEndDateImpl _value,
      $Res Function(_$ChangeRelationEndDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$ChangeRelationEndDateImpl(
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ChangeRelationEndDateImpl implements _ChangeRelationEndDate {
  const _$ChangeRelationEndDateImpl(this.date);

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'PartnerFormEvent.changeRelationEndDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRelationEndDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRelationEndDateImplCopyWith<_$ChangeRelationEndDateImpl>
      get copyWith => __$$ChangeRelationEndDateImplCopyWithImpl<
          _$ChangeRelationEndDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TNode node) initialized,
    required TResult Function(TNode partner) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeMarriageDate,
    required TResult Function(DateTime? date) changeRelationEndDate,
    required TResult Function(MarriageStatus status) changeMarriageStatus,
    required TResult Function() saved,
  }) {
    return changeRelationEndDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(TNode partner)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeMarriageDate,
    TResult? Function(DateTime? date)? changeRelationEndDate,
    TResult? Function(MarriageStatus status)? changeMarriageStatus,
    TResult? Function()? saved,
  }) {
    return changeRelationEndDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(TNode partner)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeMarriageDate,
    TResult Function(DateTime? date)? changeRelationEndDate,
    TResult Function(MarriageStatus status)? changeMarriageStatus,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeRelationEndDate != null) {
      return changeRelationEndDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeMarriageDate value) changeMarriageDate,
    required TResult Function(_ChangeRelationEndDate value)
        changeRelationEndDate,
    required TResult Function(_ChangeMarriageStatus value) changeMarriageStatus,
    required TResult Function(_Saved value) saved,
  }) {
    return changeRelationEndDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult? Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult? Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeRelationEndDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeRelationEndDate != null) {
      return changeRelationEndDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeRelationEndDate implements PartnerFormEvent {
  const factory _ChangeRelationEndDate(final DateTime? date) =
      _$ChangeRelationEndDateImpl;

  DateTime? get date;
  @JsonKey(ignore: true)
  _$$ChangeRelationEndDateImplCopyWith<_$ChangeRelationEndDateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeMarriageStatusImplCopyWith<$Res> {
  factory _$$ChangeMarriageStatusImplCopyWith(_$ChangeMarriageStatusImpl value,
          $Res Function(_$ChangeMarriageStatusImpl) then) =
      __$$ChangeMarriageStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MarriageStatus status});
}

/// @nodoc
class __$$ChangeMarriageStatusImplCopyWithImpl<$Res>
    extends _$PartnerFormEventCopyWithImpl<$Res, _$ChangeMarriageStatusImpl>
    implements _$$ChangeMarriageStatusImplCopyWith<$Res> {
  __$$ChangeMarriageStatusImplCopyWithImpl(_$ChangeMarriageStatusImpl _value,
      $Res Function(_$ChangeMarriageStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ChangeMarriageStatusImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MarriageStatus,
    ));
  }
}

/// @nodoc

class _$ChangeMarriageStatusImpl implements _ChangeMarriageStatus {
  const _$ChangeMarriageStatusImpl(this.status);

  @override
  final MarriageStatus status;

  @override
  String toString() {
    return 'PartnerFormEvent.changeMarriageStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMarriageStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeMarriageStatusImplCopyWith<_$ChangeMarriageStatusImpl>
      get copyWith =>
          __$$ChangeMarriageStatusImplCopyWithImpl<_$ChangeMarriageStatusImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TNode node) initialized,
    required TResult Function(TNode partner) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeMarriageDate,
    required TResult Function(DateTime? date) changeRelationEndDate,
    required TResult Function(MarriageStatus status) changeMarriageStatus,
    required TResult Function() saved,
  }) {
    return changeMarriageStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(TNode partner)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeMarriageDate,
    TResult? Function(DateTime? date)? changeRelationEndDate,
    TResult? Function(MarriageStatus status)? changeMarriageStatus,
    TResult? Function()? saved,
  }) {
    return changeMarriageStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(TNode partner)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeMarriageDate,
    TResult Function(DateTime? date)? changeRelationEndDate,
    TResult Function(MarriageStatus status)? changeMarriageStatus,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeMarriageStatus != null) {
      return changeMarriageStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Edited value) edited,
    required TResult Function(_ChangedName value) changeName,
    required TResult Function(_ChangeMarriageDate value) changeMarriageDate,
    required TResult Function(_ChangeRelationEndDate value)
        changeRelationEndDate,
    required TResult Function(_ChangeMarriageStatus value) changeMarriageStatus,
    required TResult Function(_Saved value) saved,
  }) {
    return changeMarriageStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_ChangedName value)? changeName,
    TResult? Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult? Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult? Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeMarriageStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Edited value)? edited,
    TResult Function(_ChangedName value)? changeName,
    TResult Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeMarriageStatus != null) {
      return changeMarriageStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeMarriageStatus implements PartnerFormEvent {
  const factory _ChangeMarriageStatus(final MarriageStatus status) =
      _$ChangeMarriageStatusImpl;

  MarriageStatus get status;
  @JsonKey(ignore: true)
  _$$ChangeMarriageStatusImplCopyWith<_$ChangeMarriageStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$PartnerFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'PartnerFormEvent.saved()';
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
    required TResult Function(TNode node) initialized,
    required TResult Function(TNode partner) edited,
    required TResult Function(String name) changeName,
    required TResult Function(DateTime? date) changeMarriageDate,
    required TResult Function(DateTime? date) changeRelationEndDate,
    required TResult Function(MarriageStatus status) changeMarriageStatus,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TNode node)? initialized,
    TResult? Function(TNode partner)? edited,
    TResult? Function(String name)? changeName,
    TResult? Function(DateTime? date)? changeMarriageDate,
    TResult? Function(DateTime? date)? changeRelationEndDate,
    TResult? Function(MarriageStatus status)? changeMarriageStatus,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TNode node)? initialized,
    TResult Function(TNode partner)? edited,
    TResult Function(String name)? changeName,
    TResult Function(DateTime? date)? changeMarriageDate,
    TResult Function(DateTime? date)? changeRelationEndDate,
    TResult Function(MarriageStatus status)? changeMarriageStatus,
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
    required TResult Function(_ChangeMarriageDate value) changeMarriageDate,
    required TResult Function(_ChangeRelationEndDate value)
        changeRelationEndDate,
    required TResult Function(_ChangeMarriageStatus value) changeMarriageStatus,
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
    TResult? Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult? Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult? Function(_ChangeMarriageStatus value)? changeMarriageStatus,
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
    TResult Function(_ChangeMarriageDate value)? changeMarriageDate,
    TResult Function(_ChangeRelationEndDate value)? changeRelationEndDate,
    TResult Function(_ChangeMarriageStatus value)? changeMarriageStatus,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PartnerFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$PartnerFormState {
  TNode? get node => throw _privateConstructorUsedError;
  TNode? get partner => throw _privateConstructorUsedError;
  Relation? get relation => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isAdding => throw _privateConstructorUsedError;
  bool get isEditing =>
      throw _privateConstructorUsedError; // only for update existing ones
  bool get isViewing => throw _privateConstructorUsedError;
  bool get isCreated => throw _privateConstructorUsedError;
  Option<Either<RelationFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartnerFormStateCopyWith<PartnerFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerFormStateCopyWith<$Res> {
  factory $PartnerFormStateCopyWith(
          PartnerFormState value, $Res Function(PartnerFormState) then) =
      _$PartnerFormStateCopyWithImpl<$Res, PartnerFormState>;
  @useResult
  $Res call(
      {TNode? node,
      TNode? partner,
      Relation? relation,
      AutovalidateMode showErrorMessages,
      bool isSaving,
      bool isAdding,
      bool isEditing,
      bool isViewing,
      bool isCreated,
      Option<Either<RelationFailure, Unit>> saveFailureOrSuccessOption});

  $TNodeCopyWith<$Res>? get node;
  $TNodeCopyWith<$Res>? get partner;
  $RelationCopyWith<$Res>? get relation;
}

/// @nodoc
class _$PartnerFormStateCopyWithImpl<$Res, $Val extends PartnerFormState>
    implements $PartnerFormStateCopyWith<$Res> {
  _$PartnerFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
    Object? partner = freezed,
    Object? relation = freezed,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isAdding = null,
    Object? isEditing = null,
    Object? isViewing = null,
    Object? isCreated = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      node: freezed == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as TNode?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as TNode?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as Relation?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewing: null == isViewing
          ? _value.isViewing
          : isViewing // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RelationFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $TNodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res>? get partner {
    if (_value.partner == null) {
      return null;
    }

    return $TNodeCopyWith<$Res>(_value.partner!, (value) {
      return _then(_value.copyWith(partner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RelationCopyWith<$Res>? get relation {
    if (_value.relation == null) {
      return null;
    }

    return $RelationCopyWith<$Res>(_value.relation!, (value) {
      return _then(_value.copyWith(relation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PartnerFormStateImplCopyWith<$Res>
    implements $PartnerFormStateCopyWith<$Res> {
  factory _$$PartnerFormStateImplCopyWith(_$PartnerFormStateImpl value,
          $Res Function(_$PartnerFormStateImpl) then) =
      __$$PartnerFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TNode? node,
      TNode? partner,
      Relation? relation,
      AutovalidateMode showErrorMessages,
      bool isSaving,
      bool isAdding,
      bool isEditing,
      bool isViewing,
      bool isCreated,
      Option<Either<RelationFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TNodeCopyWith<$Res>? get node;
  @override
  $TNodeCopyWith<$Res>? get partner;
  @override
  $RelationCopyWith<$Res>? get relation;
}

/// @nodoc
class __$$PartnerFormStateImplCopyWithImpl<$Res>
    extends _$PartnerFormStateCopyWithImpl<$Res, _$PartnerFormStateImpl>
    implements _$$PartnerFormStateImplCopyWith<$Res> {
  __$$PartnerFormStateImplCopyWithImpl(_$PartnerFormStateImpl _value,
      $Res Function(_$PartnerFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
    Object? partner = freezed,
    Object? relation = freezed,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isAdding = null,
    Object? isEditing = null,
    Object? isViewing = null,
    Object? isCreated = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$PartnerFormStateImpl(
      node: freezed == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as TNode?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as TNode?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as Relation?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewing: null == isViewing
          ? _value.isViewing
          : isViewing // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RelationFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$PartnerFormStateImpl implements _PartnerFormState {
  const _$PartnerFormStateImpl(
      {this.node,
      this.partner,
      this.relation,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isAdding,
      required this.isEditing,
      required this.isViewing,
      required this.isCreated,
      required this.saveFailureOrSuccessOption});

  @override
  final TNode? node;
  @override
  final TNode? partner;
  @override
  final Relation? relation;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isAdding;
  @override
  final bool isEditing;
// only for update existing ones
  @override
  final bool isViewing;
  @override
  final bool isCreated;
  @override
  final Option<Either<RelationFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'PartnerFormState(node: $node, partner: $partner, relation: $relation, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isAdding: $isAdding, isEditing: $isEditing, isViewing: $isViewing, isCreated: $isCreated, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerFormStateImpl &&
            (identical(other.node, node) || other.node == node) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isAdding, isAdding) ||
                other.isAdding == isAdding) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isViewing, isViewing) ||
                other.isViewing == isViewing) &&
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
      node,
      partner,
      relation,
      showErrorMessages,
      isSaving,
      isAdding,
      isEditing,
      isViewing,
      isCreated,
      saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerFormStateImplCopyWith<_$PartnerFormStateImpl> get copyWith =>
      __$$PartnerFormStateImplCopyWithImpl<_$PartnerFormStateImpl>(
          this, _$identity);
}

abstract class _PartnerFormState implements PartnerFormState {
  const factory _PartnerFormState(
      {final TNode? node,
      final TNode? partner,
      final Relation? relation,
      required final AutovalidateMode showErrorMessages,
      required final bool isSaving,
      required final bool isAdding,
      required final bool isEditing,
      required final bool isViewing,
      required final bool isCreated,
      required final Option<Either<RelationFailure, Unit>>
          saveFailureOrSuccessOption}) = _$PartnerFormStateImpl;

  @override
  TNode? get node;
  @override
  TNode? get partner;
  @override
  Relation? get relation;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isSaving;
  @override
  bool get isAdding;
  @override
  bool get isEditing;
  @override // only for update existing ones
  bool get isViewing;
  @override
  bool get isCreated;
  @override
  Option<Either<RelationFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$PartnerFormStateImplCopyWith<_$PartnerFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
