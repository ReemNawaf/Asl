import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/relation/relation.dart';
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
    required String partnerTreeId,
    String? startDate,
    String? endDate,
    required String marriageStatus,
    required String mother,
    required String father,
    required List<String> children,
  }) = _RelationDto;

  //  converting Entity => DTO
  factory RelationDto.fromDomain(Relation relation) {
    return RelationDto(
      relationId: relation.relationId.getOrCrash(),
      treeId: relation.treeId.getOrCrash(),
      startDate: relation.marriageDate == null
          ? null
          : DateFormat("yyyy-MM-dd").format(relation.marriageDate!),
      endDate: relation.endDate == null
          ? null
          : DateFormat("yyyy-MM-dd").format(relation.endDate!),
      marriageStatus: relation.marriageStatus.name,
      mother: relation.mother.getOrCrash(),
      father: relation.father.getOrCrash(),
      children: relation.children.map((e) => e.getOrCrash()).toList(),
      partnerTreeId: relation.partnerTreeId.getOrCrash(),
    );
  }

  //  converting DTO => Entity
  Relation toDomain() {
    return Relation(
      relationId: UniqueId.fromUniqueString(relationId!),
      treeId: UniqueId.fromUniqueString(treeId),
      marriageDate: startDate == null ? null : DateTime.parse(startDate!),
      endDate: endDate == null ? null : DateTime.parse(endDate!),
      marriageStatus: MarriageStatus.values.byName(marriageStatus),
      mother: UniqueId.fromUniqueString(mother),
      father: UniqueId.fromUniqueString(father),
      children: children.map((e) => UniqueId.fromUniqueString(e)).toList(),
      partnerTreeId: UniqueId.fromUniqueString(partnerTreeId),
      childrenNodes: [],
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
