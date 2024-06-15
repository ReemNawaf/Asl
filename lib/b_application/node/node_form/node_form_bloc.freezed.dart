// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NodeFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TNode> initialNodeOption) initialized,
    required TResult Function(Option<TNode> initialNodeOption) ended,
    required TResult Function(Option<TNode> initialNodeOption) added,
    required TResult Function(Option<TNode> existingNodeOption) edited,
    required TResult Function(String title) firstNameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TNode> initialNodeOption)? initialized,
    TResult? Function(Option<TNode> initialNodeOption)? ended,
    TResult? Function(Option<TNode> initialNodeOption)? added,
    TResult? Function(Option<TNode> existingNodeOption)? edited,
    TResult? Function(String title)? firstNameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TNode> initialNodeOption)? initialized,
    TResult Function(Option<TNode> initialNodeOption)? ended,
    TResult Function(Option<TNode> initialNodeOption)? added,
    TResult Function(Option<TNode> existingNodeOption)? edited,
    TResult Function(String title)? firstNameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Ended value) ended,
    required TResult Function(_Added value) added,
    required TResult Function(_Edited value) edited,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Ended value)? ended,
    TResult? Function(_Added value)? added,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Ended value)? ended,
    TResult Function(_Added value)? added,
    TResult Function(_Edited value)? edited,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeFormEventCopyWith<$Res> {
  factory $NodeFormEventCopyWith(
          NodeFormEvent value, $Res Function(NodeFormEvent) then) =
      _$NodeFormEventCopyWithImpl<$Res, NodeFormEvent>;
}

/// @nodoc
class _$NodeFormEventCopyWithImpl<$Res, $Val extends NodeFormEvent>
    implements $NodeFormEventCopyWith<$Res> {
  _$NodeFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<TNode> initialNodeOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$NodeFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialNodeOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialNodeOption
          ? _value.initialNodeOption
          : initialNodeOption // ignore: cast_nullable_to_non_nullable
              as Option<TNode>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialNodeOption);

  @override
  final Option<TNode> initialNodeOption;

  @override
  String toString() {
    return 'NodeFormEvent.initialized(initialNodeOption: $initialNodeOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialNodeOption, initialNodeOption) ||
                other.initialNodeOption == initialNodeOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialNodeOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TNode> initialNodeOption) initialized,
    required TResult Function(Option<TNode> initialNodeOption) ended,
    required TResult Function(Option<TNode> initialNodeOption) added,
    required TResult Function(Option<TNode> existingNodeOption) edited,
    required TResult Function(String title) firstNameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialNodeOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TNode> initialNodeOption)? initialized,
    TResult? Function(Option<TNode> initialNodeOption)? ended,
    TResult? Function(Option<TNode> initialNodeOption)? added,
    TResult? Function(Option<TNode> existingNodeOption)? edited,
    TResult? Function(String title)? firstNameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialNodeOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TNode> initialNodeOption)? initialized,
    TResult Function(Option<TNode> initialNodeOption)? ended,
    TResult Function(Option<TNode> initialNodeOption)? added,
    TResult Function(Option<TNode> existingNodeOption)? edited,
    TResult Function(String title)? firstNameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialNodeOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Ended value) ended,
    required TResult Function(_Added value) added,
    required TResult Function(_Edited value) edited,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Ended value)? ended,
    TResult? Function(_Added value)? added,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Ended value)? ended,
    TResult Function(_Added value)? added,
    TResult Function(_Edited value)? edited,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements NodeFormEvent {
  const factory _Initialized(final Option<TNode> initialNodeOption) =
      _$InitializedImpl;

  Option<TNode> get initialNodeOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndedImplCopyWith<$Res> {
  factory _$$EndedImplCopyWith(
          _$EndedImpl value, $Res Function(_$EndedImpl) then) =
      __$$EndedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<TNode> initialNodeOption});
}

/// @nodoc
class __$$EndedImplCopyWithImpl<$Res>
    extends _$NodeFormEventCopyWithImpl<$Res, _$EndedImpl>
    implements _$$EndedImplCopyWith<$Res> {
  __$$EndedImplCopyWithImpl(
      _$EndedImpl _value, $Res Function(_$EndedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialNodeOption = null,
  }) {
    return _then(_$EndedImpl(
      null == initialNodeOption
          ? _value.initialNodeOption
          : initialNodeOption // ignore: cast_nullable_to_non_nullable
              as Option<TNode>,
    ));
  }
}

/// @nodoc

class _$EndedImpl implements _Ended {
  const _$EndedImpl(this.initialNodeOption);

  @override
  final Option<TNode> initialNodeOption;

  @override
  String toString() {
    return 'NodeFormEvent.ended(initialNodeOption: $initialNodeOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndedImpl &&
            (identical(other.initialNodeOption, initialNodeOption) ||
                other.initialNodeOption == initialNodeOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialNodeOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndedImplCopyWith<_$EndedImpl> get copyWith =>
      __$$EndedImplCopyWithImpl<_$EndedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TNode> initialNodeOption) initialized,
    required TResult Function(Option<TNode> initialNodeOption) ended,
    required TResult Function(Option<TNode> initialNodeOption) added,
    required TResult Function(Option<TNode> existingNodeOption) edited,
    required TResult Function(String title) firstNameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function() saved,
  }) {
    return ended(initialNodeOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TNode> initialNodeOption)? initialized,
    TResult? Function(Option<TNode> initialNodeOption)? ended,
    TResult? Function(Option<TNode> initialNodeOption)? added,
    TResult? Function(Option<TNode> existingNodeOption)? edited,
    TResult? Function(String title)? firstNameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function()? saved,
  }) {
    return ended?.call(initialNodeOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TNode> initialNodeOption)? initialized,
    TResult Function(Option<TNode> initialNodeOption)? ended,
    TResult Function(Option<TNode> initialNodeOption)? added,
    TResult Function(Option<TNode> existingNodeOption)? edited,
    TResult Function(String title)? firstNameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(initialNodeOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Ended value) ended,
    required TResult Function(_Added value) added,
    required TResult Function(_Edited value) edited,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return ended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Ended value)? ended,
    TResult? Function(_Added value)? added,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return ended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Ended value)? ended,
    TResult Function(_Added value)? added,
    TResult Function(_Edited value)? edited,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(this);
    }
    return orElse();
  }
}

abstract class _Ended implements NodeFormEvent {
  const factory _Ended(final Option<TNode> initialNodeOption) = _$EndedImpl;

  Option<TNode> get initialNodeOption;
  @JsonKey(ignore: true)
  _$$EndedImplCopyWith<_$EndedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res> {
  factory _$$AddedImplCopyWith(
          _$AddedImpl value, $Res Function(_$AddedImpl) then) =
      __$$AddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<TNode> initialNodeOption});
}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res>
    extends _$NodeFormEventCopyWithImpl<$Res, _$AddedImpl>
    implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(
      _$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialNodeOption = null,
  }) {
    return _then(_$AddedImpl(
      null == initialNodeOption
          ? _value.initialNodeOption
          : initialNodeOption // ignore: cast_nullable_to_non_nullable
              as Option<TNode>,
    ));
  }
}

/// @nodoc

class _$AddedImpl implements _Added {
  const _$AddedImpl(this.initialNodeOption);

  @override
  final Option<TNode> initialNodeOption;

  @override
  String toString() {
    return 'NodeFormEvent.added(initialNodeOption: $initialNodeOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedImpl &&
            (identical(other.initialNodeOption, initialNodeOption) ||
                other.initialNodeOption == initialNodeOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialNodeOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      __$$AddedImplCopyWithImpl<_$AddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TNode> initialNodeOption) initialized,
    required TResult Function(Option<TNode> initialNodeOption) ended,
    required TResult Function(Option<TNode> initialNodeOption) added,
    required TResult Function(Option<TNode> existingNodeOption) edited,
    required TResult Function(String title) firstNameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function() saved,
  }) {
    return added(initialNodeOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TNode> initialNodeOption)? initialized,
    TResult? Function(Option<TNode> initialNodeOption)? ended,
    TResult? Function(Option<TNode> initialNodeOption)? added,
    TResult? Function(Option<TNode> existingNodeOption)? edited,
    TResult? Function(String title)? firstNameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function()? saved,
  }) {
    return added?.call(initialNodeOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TNode> initialNodeOption)? initialized,
    TResult Function(Option<TNode> initialNodeOption)? ended,
    TResult Function(Option<TNode> initialNodeOption)? added,
    TResult Function(Option<TNode> existingNodeOption)? edited,
    TResult Function(String title)? firstNameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(initialNodeOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Ended value) ended,
    required TResult Function(_Added value) added,
    required TResult Function(_Edited value) edited,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Ended value)? ended,
    TResult? Function(_Added value)? added,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Ended value)? ended,
    TResult Function(_Added value)? added,
    TResult Function(_Edited value)? edited,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements NodeFormEvent {
  const factory _Added(final Option<TNode> initialNodeOption) = _$AddedImpl;

  Option<TNode> get initialNodeOption;
  @JsonKey(ignore: true)
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditedImplCopyWith<$Res> {
  factory _$$EditedImplCopyWith(
          _$EditedImpl value, $Res Function(_$EditedImpl) then) =
      __$$EditedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<TNode> existingNodeOption});
}

/// @nodoc
class __$$EditedImplCopyWithImpl<$Res>
    extends _$NodeFormEventCopyWithImpl<$Res, _$EditedImpl>
    implements _$$EditedImplCopyWith<$Res> {
  __$$EditedImplCopyWithImpl(
      _$EditedImpl _value, $Res Function(_$EditedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? existingNodeOption = null,
  }) {
    return _then(_$EditedImpl(
      null == existingNodeOption
          ? _value.existingNodeOption
          : existingNodeOption // ignore: cast_nullable_to_non_nullable
              as Option<TNode>,
    ));
  }
}

/// @nodoc

class _$EditedImpl implements _Edited {
  const _$EditedImpl(this.existingNodeOption);

  @override
  final Option<TNode> existingNodeOption;

  @override
  String toString() {
    return 'NodeFormEvent.edited(existingNodeOption: $existingNodeOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditedImpl &&
            (identical(other.existingNodeOption, existingNodeOption) ||
                other.existingNodeOption == existingNodeOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, existingNodeOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      __$$EditedImplCopyWithImpl<_$EditedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TNode> initialNodeOption) initialized,
    required TResult Function(Option<TNode> initialNodeOption) ended,
    required TResult Function(Option<TNode> initialNodeOption) added,
    required TResult Function(Option<TNode> existingNodeOption) edited,
    required TResult Function(String title) firstNameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function() saved,
  }) {
    return edited(existingNodeOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TNode> initialNodeOption)? initialized,
    TResult? Function(Option<TNode> initialNodeOption)? ended,
    TResult? Function(Option<TNode> initialNodeOption)? added,
    TResult? Function(Option<TNode> existingNodeOption)? edited,
    TResult? Function(String title)? firstNameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function()? saved,
  }) {
    return edited?.call(existingNodeOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TNode> initialNodeOption)? initialized,
    TResult Function(Option<TNode> initialNodeOption)? ended,
    TResult Function(Option<TNode> initialNodeOption)? added,
    TResult Function(Option<TNode> existingNodeOption)? edited,
    TResult Function(String title)? firstNameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(existingNodeOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Ended value) ended,
    required TResult Function(_Added value) added,
    required TResult Function(_Edited value) edited,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Ended value)? ended,
    TResult? Function(_Added value)? added,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Ended value)? ended,
    TResult Function(_Added value)? added,
    TResult Function(_Edited value)? edited,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements NodeFormEvent {
  const factory _Edited(final Option<TNode> existingNodeOption) = _$EditedImpl;

  Option<TNode> get existingNodeOption;
  @JsonKey(ignore: true)
  _$$EditedImplCopyWith<_$EditedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(_$FirstNameChangedImpl value,
          $Res Function(_$FirstNameChangedImpl) then) =
      __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$NodeFormEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$FirstNameChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements _FirstNameChanged {
  const _$FirstNameChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'NodeFormEvent.firstNameChanged(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TNode> initialNodeOption) initialized,
    required TResult Function(Option<TNode> initialNodeOption) ended,
    required TResult Function(Option<TNode> initialNodeOption) added,
    required TResult Function(Option<TNode> existingNodeOption) edited,
    required TResult Function(String title) firstNameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function() saved,
  }) {
    return firstNameChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TNode> initialNodeOption)? initialized,
    TResult? Function(Option<TNode> initialNodeOption)? ended,
    TResult? Function(Option<TNode> initialNodeOption)? added,
    TResult? Function(Option<TNode> existingNodeOption)? edited,
    TResult? Function(String title)? firstNameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function()? saved,
  }) {
    return firstNameChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TNode> initialNodeOption)? initialized,
    TResult Function(Option<TNode> initialNodeOption)? ended,
    TResult Function(Option<TNode> initialNodeOption)? added,
    TResult Function(Option<TNode> existingNodeOption)? edited,
    TResult Function(String title)? firstNameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Ended value) ended,
    required TResult Function(_Added value) added,
    required TResult Function(_Edited value) edited,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Ended value)? ended,
    TResult? Function(_Added value)? added,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Ended value)? ended,
    TResult Function(_Added value)? added,
    TResult Function(_Edited value)? edited,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements NodeFormEvent {
  const factory _FirstNameChanged(final String title) = _$FirstNameChangedImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateChangedImplCopyWith<$Res> {
  factory _$$DateChangedImplCopyWith(
          _$DateChangedImpl value, $Res Function(_$DateChangedImpl) then) =
      __$$DateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateChangedImplCopyWithImpl<$Res>
    extends _$NodeFormEventCopyWithImpl<$Res, _$DateChangedImpl>
    implements _$$DateChangedImplCopyWith<$Res> {
  __$$DateChangedImplCopyWithImpl(
      _$DateChangedImpl _value, $Res Function(_$DateChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateChangedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateChangedImpl implements _DateChanged {
  const _$DateChangedImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'NodeFormEvent.dateChanged(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateChangedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      __$$DateChangedImplCopyWithImpl<_$DateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TNode> initialNodeOption) initialized,
    required TResult Function(Option<TNode> initialNodeOption) ended,
    required TResult Function(Option<TNode> initialNodeOption) added,
    required TResult Function(Option<TNode> existingNodeOption) edited,
    required TResult Function(String title) firstNameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function() saved,
  }) {
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TNode> initialNodeOption)? initialized,
    TResult? Function(Option<TNode> initialNodeOption)? ended,
    TResult? Function(Option<TNode> initialNodeOption)? added,
    TResult? Function(Option<TNode> existingNodeOption)? edited,
    TResult? Function(String title)? firstNameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function()? saved,
  }) {
    return dateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TNode> initialNodeOption)? initialized,
    TResult Function(Option<TNode> initialNodeOption)? ended,
    TResult Function(Option<TNode> initialNodeOption)? added,
    TResult Function(Option<TNode> existingNodeOption)? edited,
    TResult Function(String title)? firstNameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Ended value) ended,
    required TResult Function(_Added value) added,
    required TResult Function(_Edited value) edited,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Ended value)? ended,
    TResult? Function(_Added value)? added,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Ended value)? ended,
    TResult Function(_Added value)? added,
    TResult Function(_Edited value)? edited,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements NodeFormEvent {
  const factory _DateChanged(final DateTime date) = _$DateChangedImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
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
    extends _$NodeFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'NodeFormEvent.saved()';
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
    required TResult Function(Option<TNode> initialNodeOption) initialized,
    required TResult Function(Option<TNode> initialNodeOption) ended,
    required TResult Function(Option<TNode> initialNodeOption) added,
    required TResult Function(Option<TNode> existingNodeOption) edited,
    required TResult Function(String title) firstNameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TNode> initialNodeOption)? initialized,
    TResult? Function(Option<TNode> initialNodeOption)? ended,
    TResult? Function(Option<TNode> initialNodeOption)? added,
    TResult? Function(Option<TNode> existingNodeOption)? edited,
    TResult? Function(String title)? firstNameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TNode> initialNodeOption)? initialized,
    TResult Function(Option<TNode> initialNodeOption)? ended,
    TResult Function(Option<TNode> initialNodeOption)? added,
    TResult Function(Option<TNode> existingNodeOption)? edited,
    TResult Function(String title)? firstNameChanged,
    TResult Function(DateTime date)? dateChanged,
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
    required TResult Function(_Ended value) ended,
    required TResult Function(_Added value) added,
    required TResult Function(_Edited value) edited,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Ended value)? ended,
    TResult? Function(_Added value)? added,
    TResult? Function(_Edited value)? edited,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Ended value)? ended,
    TResult Function(_Added value)? added,
    TResult Function(_Edited value)? edited,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements NodeFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$NodeFormState {
  TNode get node => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing =>
      throw _privateConstructorUsedError; // only for update existing ones
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isViewing => throw _privateConstructorUsedError;
  bool get isAdding => throw _privateConstructorUsedError;
  bool get isMoving => throw _privateConstructorUsedError;
  Option<Either<TNodeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NodeFormStateCopyWith<NodeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeFormStateCopyWith<$Res> {
  factory $NodeFormStateCopyWith(
          NodeFormState value, $Res Function(NodeFormState) then) =
      _$NodeFormStateCopyWithImpl<$Res, NodeFormState>;
  @useResult
  $Res call(
      {TNode node,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      bool isViewing,
      bool isAdding,
      bool isMoving,
      Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption});

  $TNodeCopyWith<$Res> get node;
}

/// @nodoc
class _$NodeFormStateCopyWithImpl<$Res, $Val extends NodeFormState>
    implements $NodeFormStateCopyWith<$Res> {
  _$NodeFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? isAdding = null,
    Object? isMoving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      node: null == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
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
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoving: null == isMoving
          ? _value.isMoving
          : isMoving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TNodeFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TNodeCopyWith<$Res> get node {
    return $TNodeCopyWith<$Res>(_value.node, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NodeFormStateImplCopyWith<$Res>
    implements $NodeFormStateCopyWith<$Res> {
  factory _$$NodeFormStateImplCopyWith(
          _$NodeFormStateImpl value, $Res Function(_$NodeFormStateImpl) then) =
      __$$NodeFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TNode node,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      bool isViewing,
      bool isAdding,
      bool isMoving,
      Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TNodeCopyWith<$Res> get node;
}

/// @nodoc
class __$$NodeFormStateImplCopyWithImpl<$Res>
    extends _$NodeFormStateCopyWithImpl<$Res, _$NodeFormStateImpl>
    implements _$$NodeFormStateImplCopyWith<$Res> {
  __$$NodeFormStateImplCopyWithImpl(
      _$NodeFormStateImpl _value, $Res Function(_$NodeFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? isViewing = null,
    Object? isAdding = null,
    Object? isMoving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$NodeFormStateImpl(
      node: null == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
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
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoving: null == isMoving
          ? _value.isMoving
          : isMoving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TNodeFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$NodeFormStateImpl implements _NodeFormState {
  const _$NodeFormStateImpl(
      {required this.node,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.isViewing,
      required this.isAdding,
      required this.isMoving,
      required this.saveFailureOrSuccessOption});

  @override
  final TNode node;
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
  final bool isAdding;
  @override
  final bool isMoving;
  @override
  final Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'NodeFormState(node: $node, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, isViewing: $isViewing, isAdding: $isAdding, isMoving: $isMoving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeFormStateImpl &&
            (identical(other.node, node) || other.node == node) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isViewing, isViewing) ||
                other.isViewing == isViewing) &&
            (identical(other.isAdding, isAdding) ||
                other.isAdding == isAdding) &&
            (identical(other.isMoving, isMoving) ||
                other.isMoving == isMoving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      node,
      showErrorMessages,
      isEditing,
      isSaving,
      isViewing,
      isAdding,
      isMoving,
      saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeFormStateImplCopyWith<_$NodeFormStateImpl> get copyWith =>
      __$$NodeFormStateImplCopyWithImpl<_$NodeFormStateImpl>(this, _$identity);
}

abstract class _NodeFormState implements NodeFormState {
  const factory _NodeFormState(
      {required final TNode node,
      required final AutovalidateMode showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final bool isViewing,
      required final bool isAdding,
      required final bool isMoving,
      required final Option<Either<TNodeFailure, Unit>>
          saveFailureOrSuccessOption}) = _$NodeFormStateImpl;

  @override
  TNode get node;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isEditing;
  @override // only for update existing ones
  bool get isSaving;
  @override
  bool get isViewing;
  @override
  bool get isAdding;
  @override
  bool get isMoving;
  @override
  Option<Either<TNodeFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$NodeFormStateImplCopyWith<_$NodeFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
