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
abstract class NodeDto implements _$NodeDto {
  const NodeDto._();

  //  Create Data Transfer Object
  const factory NodeDto({
    String? nodeId,
    required String treeId,
    required String firstName,
    String? birthDate,
    String? deathDate,
    required bool isAlive,
    required String gender,
    required String upperFamily,
    required List<String> relations,
    required List<String> fosterChildren,
  }) = _NodeDto;

  //  converting Entity => DTO
  factory NodeDto.fromDomain(TNode node) {
    return NodeDto(
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
      upperFamily:
          node.upperFamily == null ? '' : node.upperFamily!.getOrCrash(),
      relations: node.relations.map((r) => r.getOrCrash()).toList(),
      fosterChildren: node.fosterChildren.map((e) => e.getOrCrash()).toList(),
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
      upperFamily: UniqueId.fromUniqueString(upperFamily),
      relations: relations.map((r) => UniqueId.fromUniqueString(r)).toList(),
      fosterChildren:
          fosterChildren.map((e) => UniqueId.fromUniqueString(e)).toList(),
      relationsObject: [],
    );
  }

  //  converting JSON => DTO
  factory NodeDto.fromJson(Map<String, dynamic> json) =>
      _$NodeDtoFromJson(json);

  //  converting Firestore => DTO, similar to JSON => DTO, with considering the id in the identifier
  factory NodeDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return NodeDto.fromJson(doc.data()!).copyWith(nodeId: doc.id);
  }
}
