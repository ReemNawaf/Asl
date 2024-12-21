import 'package:asl/c_domain/core/failures.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'relation.freezed.dart';

@freezed
abstract class Relation implements _$Relation {
  const Relation._();

  const factory Relation({
    required UniqueId treeId,
    required UniqueId relationId,
    DateTime? startDate,
    DateTime? endDate,
    required bool isActive,
    required UniqueId father,
    required UniqueId mother,
    required List<UniqueId> children,
  }) = _Relation;

  factory Relation.empty() => Relation(
        treeId: UniqueId(),
        relationId: UniqueId(),
        isActive: true,
        father: UniqueId(),
        mother: UniqueId(),
        children: [],
      );

  //  dynamic; the failure already handled, we just want to know if there is a failure
  //  when validating the whole entity
  Option<ValueFailure<dynamic>> get failureOption {
    return treeId.failureOrUnit
        .andThen(relationId.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
