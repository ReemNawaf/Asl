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
  UniqueId get treeId => throw _privateConstructorUsedError;
  UniqueId get creatorId => throw _privateConstructorUsedError;
  UniqueId get rootId => throw _privateConstructorUsedError;
  TreeName get treeName => throw _privateConstructorUsedError;
  FullName get fullName => throw _privateConstructorUsedError;
  bool get isShowUnknown => throw _privateConstructorUsedError;
  int get numberOfGenerationOption => throw _privateConstructorUsedError;
  int? get shareOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeCopyWith<Tree> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeCopyWith<$Res> {
  factory $TreeCopyWith(Tree value, $Res Function(Tree) then) =
      _$TreeCopyWithImpl<$Res, Tree>;
  @useResult
  $Res call(
      {UniqueId treeId,
      UniqueId creatorId,
      UniqueId rootId,
      TreeName treeName,
      FullName fullName,
      bool isShowUnknown,
      int numberOfGenerationOption,
      int? shareOption});
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
    Object? treeId = null,
    Object? creatorId = null,
    Object? rootId = null,
    Object? treeName = null,
    Object? fullName = null,
    Object? isShowUnknown = null,
    Object? numberOfGenerationOption = null,
    Object? shareOption = freezed,
  }) {
    return _then(_value.copyWith(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      rootId: null == rootId
          ? _value.rootId
          : rootId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      treeName: null == treeName
          ? _value.treeName
          : treeName // ignore: cast_nullable_to_non_nullable
              as TreeName,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      isShowUnknown: null == isShowUnknown
          ? _value.isShowUnknown
          : isShowUnknown // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfGenerationOption: null == numberOfGenerationOption
          ? _value.numberOfGenerationOption
          : numberOfGenerationOption // ignore: cast_nullable_to_non_nullable
              as int,
      shareOption: freezed == shareOption
          ? _value.shareOption
          : shareOption // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {UniqueId treeId,
      UniqueId creatorId,
      UniqueId rootId,
      TreeName treeName,
      FullName fullName,
      bool isShowUnknown,
      int numberOfGenerationOption,
      int? shareOption});
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
    Object? treeId = null,
    Object? creatorId = null,
    Object? rootId = null,
    Object? treeName = null,
    Object? fullName = null,
    Object? isShowUnknown = null,
    Object? numberOfGenerationOption = null,
    Object? shareOption = freezed,
  }) {
    return _then(_$TreeImpl(
      treeId: null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      rootId: null == rootId
          ? _value.rootId
          : rootId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      treeName: null == treeName
          ? _value.treeName
          : treeName // ignore: cast_nullable_to_non_nullable
              as TreeName,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      isShowUnknown: null == isShowUnknown
          ? _value.isShowUnknown
          : isShowUnknown // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfGenerationOption: null == numberOfGenerationOption
          ? _value.numberOfGenerationOption
          : numberOfGenerationOption // ignore: cast_nullable_to_non_nullable
              as int,
      shareOption: freezed == shareOption
          ? _value.shareOption
          : shareOption // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TreeImpl extends _Tree {
  const _$TreeImpl(
      {required this.treeId,
      required this.creatorId,
      required this.rootId,
      required this.treeName,
      required this.fullName,
      required this.isShowUnknown,
      required this.numberOfGenerationOption,
      this.shareOption})
      : super._();

  @override
  final UniqueId treeId;
  @override
  final UniqueId creatorId;
  @override
  final UniqueId rootId;
  @override
  final TreeName treeName;
  @override
  final FullName fullName;
  @override
  final bool isShowUnknown;
  @override
  final int numberOfGenerationOption;
  @override
  final int? shareOption;

  @override
  String toString() {
    return 'Tree(treeId: $treeId, creatorId: $creatorId, rootId: $rootId, treeName: $treeName, fullName: $fullName, isShowUnknown: $isShowUnknown, numberOfGenerationOption: $numberOfGenerationOption, shareOption: $shareOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.rootId, rootId) || other.rootId == rootId) &&
            (identical(other.treeName, treeName) ||
                other.treeName == treeName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.isShowUnknown, isShowUnknown) ||
                other.isShowUnknown == isShowUnknown) &&
            (identical(
                    other.numberOfGenerationOption, numberOfGenerationOption) ||
                other.numberOfGenerationOption == numberOfGenerationOption) &&
            (identical(other.shareOption, shareOption) ||
                other.shareOption == shareOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId, creatorId, rootId,
      treeName, fullName, isShowUnknown, numberOfGenerationOption, shareOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeImplCopyWith<_$TreeImpl> get copyWith =>
      __$$TreeImplCopyWithImpl<_$TreeImpl>(this, _$identity);
}

abstract class _Tree extends Tree {
  const factory _Tree(
      {required final UniqueId treeId,
      required final UniqueId creatorId,
      required final UniqueId rootId,
      required final TreeName treeName,
      required final FullName fullName,
      required final bool isShowUnknown,
      required final int numberOfGenerationOption,
      final int? shareOption}) = _$TreeImpl;
  const _Tree._() : super._();

  @override
  UniqueId get treeId;
  @override
  UniqueId get creatorId;
  @override
  UniqueId get rootId;
  @override
  TreeName get treeName;
  @override
  FullName get fullName;
  @override
  bool get isShowUnknown;
  @override
  int get numberOfGenerationOption;
  @override
  int? get shareOption;
  @override
  @JsonKey(ignore: true)
  _$$TreeImplCopyWith<_$TreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
