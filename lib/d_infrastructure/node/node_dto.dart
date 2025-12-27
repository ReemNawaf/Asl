import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/tree/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'node_dto.freezed.dart';
part 'node_dto.g.dart';

@freezed
abstract class TNodeDto implements _$TNodeDto {
  const TNodeDto._();

  //  Create Data Transfer Object
  const factory TNodeDto({
    String? nodeId,
    required String treeId,
    required String firstName,
    String? birthDate,
    String? deathDate,
    required bool isAlive,
    required String gender,
    String? upperFamily,
    required List<String> relations,
    required List<String> fosterChildren,
    required String? notes,
  }) = _TNodeDto;

  //  converting Entity => DTO
  factory TNodeDto.fromDomain(TNode node) {
    return TNodeDto(
      nodeId: node.nodeId.getOrCrash(),
      treeId: node.treeId.getOrCrash(),
      firstName: node.firstName.getOrCrash(),
      birthDate: node.birthDate == null
          ? null
          : DateFormat("yyyy-MM-dd").format(node.birthDate!),
      deathDate: node.deathDate == null
          ? null
          : DateFormat("yyyy-MM-dd").format(node.deathDate!),
      isAlive: node.isAlive,
      gender: node.gender.name,
      upperFamily: node.upperFamily?.getOrCrash(),
      relations: node.relations.map((r) => r.getOrCrash()).toList(),
      fosterChildren: node.fosterChildren.map((e) => e.getOrCrash()).toList(),
      notes: node.notes != null ? node.notes!.getOrCrash() : '',
    );
  }

  //  converting DTO => Entity
  TNode toDomain() {
    return TNode(
        nodeId: UniqueId.fromUniqueString(nodeId!),
        treeId: UniqueId.fromUniqueString(treeId),
        firstName: FullName(firstName),
        birthDate: birthDate == null ? null : DateTime.parse(birthDate!),
        deathDate: deathDate == null ? null : DateTime.parse(deathDate!),
        isAlive: isAlive,
        gender: Gender.values.byName(gender),
        upperFamily: upperFamily != null
            ? UniqueId.fromUniqueString(upperFamily!)
            : null,
        relations: relations.map((r) => UniqueId.fromUniqueString(r)).toList(),
        fosterChildren:
            fosterChildren.map((e) => UniqueId.fromUniqueString(e)).toList(),
        relationsObject: [],
        notes: NodeNotes(notes ?? ''));
  }

  //  converting JSON => DTO
  factory TNodeDto.fromJson(Map<String, dynamic> json) =>
      _$TNodeDtoFromJson(json);

  //  converting Firestore => DTO, similar to JSON => DTO, with considering the id in the identifier
  factory TNodeDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return TNodeDto.fromJson(doc.data()!).copyWith(nodeId: doc.id);
  }
}
