import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/failures.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'relation.freezed.dart';

@freezed
abstract class Relation implements _$Relation {
  const Relation._();

  const factory Relation({
    required UniqueId treeId,
    required UniqueId partnerTreeId,
    required UniqueId relationId,
    DateTime? marriageDate,
    DateTime? endDate,
    required MarriageStatus marriageStatus,
    required UniqueId father,
    required UniqueId mother,
    required List<UniqueId> children,
    TNode? mainNode,
    TNode? partnerNode,
    List<TNode>? childrenNodes,
  }) = _Relation;

  //  dynamic; the failure already handled, we just want to know if there is a failure
  //  when validating the whole entity
  Option<ValueFailure<dynamic>> get failureOption {
    return treeId.failureOrUnit
        .andThen(relationId.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
