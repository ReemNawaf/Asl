// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 't_node_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TNodeFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() nodeNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? nodeNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? nodeNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_NodeNotExist value) nodeNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_NodeNotExist value)? nodeNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NodeNotExist value)? nodeNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TNodeFailureCopyWith<$Res> {
  factory $TNodeFailureCopyWith(
          TNodeFailure value, $Res Function(TNodeFailure) then) =
      _$TNodeFailureCopyWithImpl<$Res, TNodeFailure>;
}

/// @nodoc
class _$TNodeFailureCopyWithImpl<$Res, $Val extends TNodeFailure>
    implements $TNodeFailureCopyWith<$Res> {
  _$TNodeFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$TNodeFailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedImpl implements _Unexpected {
  const _$UnexpectedImpl();

  @override
  String toString() {
    return 'TNodeFailure.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() nodeNotExist,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? nodeNotExist,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? nodeNotExist,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_NodeNotExist value) nodeNotExist,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_NodeNotExist value)? nodeNotExist,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NodeNotExist value)? nodeNotExist,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements TNodeFailure {
  const factory _Unexpected() = _$UnexpectedImpl;
}

/// @nodoc
abstract class _$$InsufficientPermissionImplCopyWith<$Res> {
  factory _$$InsufficientPermissionImplCopyWith(
          _$InsufficientPermissionImpl value,
          $Res Function(_$InsufficientPermissionImpl) then) =
      __$$InsufficientPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsufficientPermissionImplCopyWithImpl<$Res>
    extends _$TNodeFailureCopyWithImpl<$Res, _$InsufficientPermissionImpl>
    implements _$$InsufficientPermissionImplCopyWith<$Res> {
  __$$InsufficientPermissionImplCopyWithImpl(
      _$InsufficientPermissionImpl _value,
      $Res Function(_$InsufficientPermissionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InsufficientPermissionImpl implements _InsufficientPermission {
  const _$InsufficientPermissionImpl();

  @override
  String toString() {
    return 'TNodeFailure.insufficientPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsufficientPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() nodeNotExist,
  }) {
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? nodeNotExist,
  }) {
    return insufficientPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? nodeNotExist,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_NodeNotExist value) nodeNotExist,
  }) {
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_NodeNotExist value)? nodeNotExist,
  }) {
    return insufficientPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NodeNotExist value)? nodeNotExist,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission implements TNodeFailure {
  const factory _InsufficientPermission() = _$InsufficientPermissionImpl;
}

/// @nodoc
abstract class _$$UnableToUpdateImplCopyWith<$Res> {
  factory _$$UnableToUpdateImplCopyWith(_$UnableToUpdateImpl value,
          $Res Function(_$UnableToUpdateImpl) then) =
      __$$UnableToUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToUpdateImplCopyWithImpl<$Res>
    extends _$TNodeFailureCopyWithImpl<$Res, _$UnableToUpdateImpl>
    implements _$$UnableToUpdateImplCopyWith<$Res> {
  __$$UnableToUpdateImplCopyWithImpl(
      _$UnableToUpdateImpl _value, $Res Function(_$UnableToUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnableToUpdateImpl implements _UnableToUpdate {
  const _$UnableToUpdateImpl();

  @override
  String toString() {
    return 'TNodeFailure.unableToUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() nodeNotExist,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? nodeNotExist,
  }) {
    return unableToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? nodeNotExist,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_NodeNotExist value) nodeNotExist,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_NodeNotExist value)? nodeNotExist,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NodeNotExist value)? nodeNotExist,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements TNodeFailure {
  const factory _UnableToUpdate() = _$UnableToUpdateImpl;
}

/// @nodoc
abstract class _$$NodeNotExistImplCopyWith<$Res> {
  factory _$$NodeNotExistImplCopyWith(
          _$NodeNotExistImpl value, $Res Function(_$NodeNotExistImpl) then) =
      __$$NodeNotExistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NodeNotExistImplCopyWithImpl<$Res>
    extends _$TNodeFailureCopyWithImpl<$Res, _$NodeNotExistImpl>
    implements _$$NodeNotExistImplCopyWith<$Res> {
  __$$NodeNotExistImplCopyWithImpl(
      _$NodeNotExistImpl _value, $Res Function(_$NodeNotExistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NodeNotExistImpl implements _NodeNotExist {
  const _$NodeNotExistImpl();

  @override
  String toString() {
    return 'TNodeFailure.nodeNotExist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NodeNotExistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() nodeNotExist,
  }) {
    return nodeNotExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? nodeNotExist,
  }) {
    return nodeNotExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? nodeNotExist,
    required TResult orElse(),
  }) {
    if (nodeNotExist != null) {
      return nodeNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_NodeNotExist value) nodeNotExist,
  }) {
    return nodeNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_NodeNotExist value)? nodeNotExist,
  }) {
    return nodeNotExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NodeNotExist value)? nodeNotExist,
    required TResult orElse(),
  }) {
    if (nodeNotExist != null) {
      return nodeNotExist(this);
    }
    return orElse();
  }
}

abstract class _NodeNotExist implements TNodeFailure {
  const factory _NodeNotExist() = _$NodeNotExistImpl;
}
