import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_dtos.freezed.dart';
part 'tree_dtos.g.dart';

@freezed
abstract class TreeDto implements _$TreeDto {
  const TreeDto._();

  //  Create Data Transfer Object
  const factory TreeDto({
    //  document id in firebase used as the identifier of that doc, and isn't stored inside it
    required String treeId,
    required String creatorId,
    required String rootId,
    required String treeName,
    required String fullName,
  }) = _TreeDto;

  //  converting Entity => DTO
  factory TreeDto.fromDomain(Tree tree) {
    return TreeDto(
      treeId: tree.treeId.getOrCrash(),
      creatorId: tree.creatorId.getOrCrash(),
      rootId: tree.rootId.getOrCrash(),
      treeName: tree.treeName.getOrCrash(),
      fullName: tree.fullName.getOrCrash(),
    );
  }

  //  converting DTO => Entity
  Tree toDomain() {
    return Tree(
      treeId: UniqueId.fromUniqueString(treeId),
      creatorId: UniqueId.fromUniqueString(creatorId),
      treeName: TreeName(treeName),
      fullName: FullName(fullName),
      rootId: UniqueId.fromUniqueString(rootId),
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
