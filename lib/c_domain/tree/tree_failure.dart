import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_failure.freezed.dart';

@freezed
abstract class TreeFailure with _$TreeFailure {
  const factory TreeFailure.unexpected() = _Unexpected;
  const factory TreeFailure.insufficientPermission() = _InsufficientPermission;
  const factory TreeFailure.unableToUpdate() = _UnableToUpdate;
}
