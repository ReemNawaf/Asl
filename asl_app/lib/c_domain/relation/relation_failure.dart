import 'package:freezed_annotation/freezed_annotation.dart';

part 'relation_failure.freezed.dart';

@freezed
abstract class RelationFailure with _$RelationFailure {
  const factory RelationFailure.unexpected() = _Unexpected;
  const factory RelationFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory RelationFailure.unableToUpdate() = _UnableToUpdate;
}
