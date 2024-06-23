import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/failures.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 't_node.freezed.dart';

@freezed
abstract class TNode implements _$TNode {
  const TNode._();

  const factory TNode({
    required UniqueId treeId,
    required UniqueId nodeId,
    required FirstName firstName,
    DateTime? birthDate,
    DateTime? deathDate,
    required bool isAlive,
    required Gender gender,
    required UniqueId father,
    required UniqueId mother,
    required List<UniqueId> partners,
    required List<UniqueId> children,
    required List<UniqueId> fosterChildren,
  }) = _TNode;

  factory TNode.empty() => TNode(
        treeId: UniqueId(),
        nodeId: UniqueId(),
        firstName: FirstName(''),
        isAlive: true,
        gender: Gender.female,
        father: UniqueId(),
        mother: UniqueId(),
        partners: [],
        children: [],
        fosterChildren: [],
      );

  //  dynamic; the failure already handled, we just want to know if there is a failure
  //  when validating the whole entity
  Option<ValueFailure<dynamic>> get failureOption {
    return firstName.failureOrUnit
        .andThen(nodeId.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
