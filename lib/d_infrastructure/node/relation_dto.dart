import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/relation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'relation_dto.freezed.dart';
part 'relation_dto.g.dart';

@freezed
abstract class RelationDto implements _$RelationDto {
  const RelationDto._();

  //  Create Data Transfer Object
  const factory RelationDto({
    String? relationId,
    required String treeId,
    String? startDate,
    String? endDate,
    required bool isActive,
    required String mother,
    required String father,
    required List<String> children,
  }) = _RelationDto;

  //  converting Entity => DTO
  factory RelationDto.fromDomain(Relation relation) {
    return RelationDto(
      relationId: relation.relationId.getOrCrash(),
      treeId: relation.treeId.getOrCrash(),
      startDate: relation.startDate == null
          ? null
          : DateFormat("yyyy-MM-dd").format(relation.startDate!),
      endDate: relation.endDate == null
          ? null
          : DateFormat("yyyy-MM-dd").format(relation.endDate!),
      isActive: relation.isActive,
      mother: relation.mother.getOrCrash(),
      father: relation.father.getOrCrash(),
      children: relation.children.map((e) => e.getOrCrash()).toList(),
    );
  }

  //  converting DTO => Entity
  Relation toDomain() {
    return Relation(
      relationId: UniqueId.fromUniqueString(relationId!),
      treeId: UniqueId.fromUniqueString(treeId),
      startDate: startDate == null ? null : DateTime.parse(startDate!),
      endDate: endDate == null ? null : DateTime.parse(endDate!),
      isActive: isActive,
      mother: UniqueId.fromUniqueString(mother),
      father: UniqueId.fromUniqueString(father),
      children: children.map((e) => UniqueId.fromUniqueString(e)).toList(),
    );
  }

  //  converting JSON => DTO
  factory RelationDto.fromJson(Map<String, dynamic> json) =>
      _$RelationDtoFromJson(json);

  //  converting Firestore => DTO, similar to JSON => DTO, with considering the id in the identifier
  factory RelationDto.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> doc) {
    return RelationDto.fromJson(doc.data()!).copyWith(relationId: doc.id);
  }
}
