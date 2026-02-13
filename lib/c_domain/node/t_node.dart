import 'package:asl/c_domain/tree/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/core/failures.dart';
import 'package:dartz/dartz.dart';

part 't_node.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class TNode implements _$TNode {
  const TNode._();

  const factory TNode({
    required UniqueId treeId,
    required UniqueId nodeId,
    bool? isTreeRoot,
    required FullName firstName,
    DateTime? birthDate,
    DateTime? deathDate,
    required bool isUnknown,
    required bool isAlive,
    required Gender gender,
    UniqueId? upperFamily,
    required List<UniqueId> relations,
    required List<UniqueId> fosterChildren,
    NodeNotes? notes,
    @unfreezed required List<Relation> relationsObject,
  }) = _TNode;

  factory TNode.empty() => TNode(
        treeId: UniqueId(),
        nodeId: UniqueId(),
        isTreeRoot: false,
        firstName: FullName(''),
        isAlive: true,
        gender: Gender.female,
        relations: [],
        fosterChildren: [],
        relationsObject: [],
        notes: NodeNotes(''),
        isUnknown: false,
      );

  //  dynamic; the failure already handled, we just want to know if there is a failure
  //  when validating the whole entity
  Option<ValueFailure<dynamic>> get failureOption {
    return firstName.failureOrUnit
        .andThen(nodeId.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }

  factory TNode.setRelationObjects(TNode n, List<Relation> relation) {
    return TNode(
      treeId: n.treeId,
      nodeId: n.nodeId,
      isTreeRoot: n.isTreeRoot,
      firstName: n.firstName,
      isUnknown: n.isUnknown,
      isAlive: n.isAlive,
      gender: n.gender,
      upperFamily: n.upperFamily,
      relations: n.relations,
      fosterChildren: n.fosterChildren,
      birthDate: n.birthDate,
      deathDate: n.deathDate,
      relationsObject: relation,
    );
  }
}
