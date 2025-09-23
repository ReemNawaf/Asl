import 'package:freezed_annotation/freezed_annotation.dart';

part 't_node_failure.freezed.dart';

@freezed
abstract class TNodeFailure with _$TNodeFailure {
  const factory TNodeFailure.unexpected() = _Unexpected;
  const factory TNodeFailure.insufficientPermission() = _InsufficientPermission;
  const factory TNodeFailure.unableToUpdate() = _UnableToUpdate;
  const factory TNodeFailure.nodeNotExist() = _NodeNotExist;
}
