import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/value_objects.dart';
import 'package:asl/d_infrastructure/trees/tree_settings_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_dtos.freezed.dart';
part 'tree_dtos.g.dart';

@freezed
abstract class TreeDto implements _$TreeDto {
  const TreeDto._();

  //  Create Data Transfer Object
  const factory TreeDto({
    required String treeId,
    required String creatorId,
    required String rootId,
    required String treeName,
    required String fullName,
    required TreeSettingsDto treeSettings,
  }) = _TreeDto;

  //  converting Entity => DTO
  factory TreeDto.fromDomain(Tree tree) {
    return TreeDto(
      treeId: tree.treeId.getOrCrash(),
      creatorId: tree.creatorId.getOrCrash(),
      rootId: tree.rootId.getOrCrash(),
      treeName: tree.treeName.getOrCrash(),
      fullName: tree.fullName.getOrCrash(),
      treeSettings: TreeSettingsDto.fromDomain(tree.treeSettings),
    );
  }

  //  converting DTO => Entity
  Tree toDomain() {
    final treeIdVO = UniqueId.fromUniqueString(treeId);
    return Tree(
      treeId: treeIdVO,
      creatorId: UniqueId.fromUniqueString(creatorId),
      treeName: TreeName(treeName),
      fullName: FullName(fullName),
      rootId: UniqueId.fromUniqueString(rootId),
      treeSettings: treeSettings.toDomain(treeId: treeIdVO),
    );
  }

  //  converting JSON => DTO
  factory TreeDto.fromJson(Map<String, dynamic> json) =>
      _$TreeDtoFromJson(json);

  //  converting Firestore => DTO, similar to JSON => DTO, with considering the id in the identifier
  factory TreeDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return TreeDto.fromJson(doc.data()!).copyWith(treeId: doc.id);
  }
}
