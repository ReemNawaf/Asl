import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:flutter/material.dart';
import 'package:graphview/GraphView.dart';

class TreeDraw {
  Graph graph = Graph()..isTree = true;
  BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();
  final Map<String, int> positions = {};
  static int position = 0;

  TreeDraw() {
    builder
      ..siblingSeparation = 30
      ..levelSeparation = 100
      ..subtreeSeparation = 100
      ..orientation = BuchheimWalkerConfiguration.ORIENTATION_BOTTOM_TOP;
  }

  Graph getGraph() => graph;
  BuchheimWalkerConfiguration getBuilder() => builder;

  /// Draw full tree with optional generation limit.
  Graph drawTree({
    required TNode root,
    int? maxGenerations, // null means draw entire tree
    bool? isShowUnknown,
    required BuildContext context,
  }) {
    graph = Graph()..isTree = true;
    positions.clear();
    position = 0;

    _drawNodeRecursive(
        node: root,
        nodeType: NodeType.root,
        parentId: null,
        parentGender: null,
        parentRelationsCount: root.relations.length,
        currentGen: 0,
        maxGen: maxGenerations,
        isShowUnknown: isShowUnknown,
        context: context);

    return graph;
  }

  void addLinkedNode({
    required TNode tnode,
    required NodeType nodeType,
    Gender? sourceNodeGender,
    int sourceNodeNumRelation = 0,
    UniqueId? linkedToId,
    required BuildContext context,
  }) {
    final node =
        Node.Id({'type': nodeType, 'id': tnode.nodeId, 'tnode': tnode});

    graph.addNode(node);
    positions[tnode.nodeId.getOrCrash()] = position++;

    if (nodeType != NodeType.root && linkedToId != null) {
      final linkedToPosition = positions[linkedToId.getOrCrash()]!;
      final linkedToNode = graph.getNodeAtPosition(linkedToPosition);

      String title;
      if (nodeType == NodeType.partner) {
        title = getNodePartnerTitle(
            context, sourceNodeGender, sourceNodeNumRelation);
      } else {
        title = getNodeChildrenTitle(context, sourceNodeGender);
      }

      graph.addEdge(linkedToNode, node, label: title);
    }
  }

  void _drawNodeRecursive({
    required TNode node,
    required NodeType nodeType,
    UniqueId? parentId,
    Gender? parentGender,
    required int parentRelationsCount,
    bool? isShowUnknown,
    required BuildContext context,

    /// Generation control
    required int currentGen,
    int? maxGen,
  }) {
    // Draw the node itself
    addLinkedNode(
      tnode: node,
      nodeType: nodeType,
      sourceNodeGender: parentGender,
      sourceNodeNumRelation: parentRelationsCount,
      linkedToId: parentId,
      context: context,
    );

    // Stop if reached max depth
    if (maxGen != null && currentGen >= maxGen) {
      return;
    }

    // Recurse into relations
    for (final relation in node.relationsObject) {
      final partner = relation.partnerNode;

      if (partner != null) {
        // Draw partner
        debugPrint('--- ${node.firstName.getOrCrash()}');
        if (node.firstName.getOrCrash() != "غير معروفة" &&
            (isShowUnknown ?? false)) {}
        _drawNodeRecursive(
          node: partner,
          nodeType: NodeType.partner,
          parentId: node.nodeId,
          parentGender: node.gender,
          parentRelationsCount: node.relations.length,
          currentGen: currentGen + 1,
          maxGen: maxGen,
          context: context,
        );

        // Draw children of this relation
        for (final child in relation.childrenNodes) {
          _drawNodeRecursive(
              node: child,
              nodeType: NodeType.child,
              parentId: partner.nodeId,
              parentGender: partner.gender,
              parentRelationsCount: partner.relations.length,
              currentGen: currentGen + 1,
              maxGen: maxGen,
              context: context);
        }
      }
    }
  }
}
