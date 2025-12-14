import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';

extension TNodeExtensions on TNode {
  // Replace a node in the tree
  TNode updateNode(TNode updated) {
    if (nodeId == updated.nodeId) {
      return updated.copyWith(relationsObject: relationsObject);
    }

    final updatedRelations = relationsObject.map((relation) {
      return relation.copyWith(
        partnerNode: relation.partnerNode?.updateNode(updated),
        childrenNodes:
            relation.childrenNodes.map((c) => c.updateNode(updated)).toList(),
      );
    }).toList();

    return copyWith(relationsObject: updatedRelations);
  }

  // Add a child under a parent
  TNode addChildToRelation(
    UniqueId relationId,
    TNode child,
  ) {
    // Rebuild relationsObject recursively
    final updatedRelations = relationsObject.map((relation) {
      // Check if this is the relation we want to modify
      if (relation.relationId == relationId) {
        return relation.copyWith(
          childrenNodes: [...relation.childrenNodes, child],
        );
      }

      // Otherwise, apply recursion into partner + children
      return relation.copyWith(
        partnerNode: relation.partnerNode?.addChildToRelation(
          relationId,
          child,
        ),
        childrenNodes: relation.childrenNodes
            .map(
              (c) => c.addChildToRelation(
                relationId,
                child,
              ),
            )
            .toList(),
      );
    }).toList();

    // Return updated tree node
    return copyWith(relationsObject: updatedRelations);
  }

  // Add partner
  TNode addPartner(TNode node, TNode partner, MarriageStatus status) {
    if (nodeId == node.nodeId) {
      return copyWith(
        relationsObject: [
          ...relationsObject,
          Relation(
            relationId: UniqueId(),
            partnerNode: partner,
            treeId: node.treeId,
            marriageStatus: status,
            partnerTreeId: partner.treeId,
            father: node.gender == Gender.male ? node.nodeId : partner.nodeId,
            mother: node.gender == Gender.female ? node.nodeId : partner.nodeId,
            children: [],
            childrenNodes: [],
          ),
        ],
      );
    }

    return copyWith(
      relationsObject: relationsObject.map((r) {
        return r.copyWith(
          partnerNode: r.partnerNode?.addPartner(node, partner, status),
          childrenNodes: r.childrenNodes
              .map((c) => c.addPartner(node, partner, status))
              .toList(),
        );
      }).toList(),
    );
  }

  // Delete a node
  TNode deleteNode(TNode toDelete) {
    if (nodeId == toDelete.nodeId) {
      return this; // Root deletion not supported
    }

    return copyWith(
      relationsObject: relationsObject.map((r) {
        return r.copyWith(
          partnerNode: r.partnerNode?.nodeId == toDelete.nodeId
              ? null
              : r.partnerNode?.deleteNode(toDelete),
          childrenNodes: r.childrenNodes
              .where((c) => c.nodeId != toDelete.nodeId)
              .map((c) => c.deleteNode(toDelete))
              .toList(),
        );
      }).toList(),
    );
  }
}
