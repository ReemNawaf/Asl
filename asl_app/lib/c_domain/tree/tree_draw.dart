import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/a_shared/ui_helpers.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:flutter/material.dart';
import 'package:graphview/GraphView.dart';

class TreeDraw {
  Graph graph = Graph()..isTree = true;
  BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();

  /// Keep Node instances by nodeId key for safe/faster edge creation
  final Map<String, Node> _graphNodesById = {};

  /// Prevent infinite loops / duplicate edges in graphs
  final Set<String> _visitedNodes = {};
  final Set<String> _createdEdges = {};

  TreeDraw() {
    builder
      ..siblingSeparation = 30
      ..levelSeparation = 100
      ..subtreeSeparation = 100
      ..orientation = BuchheimWalkerConfiguration.ORIENTATION_BOTTOM_TOP;
  }

  Graph getGraph() => graph;
  BuchheimWalkerConfiguration getBuilder() => builder;

  /// Draw tree directly from canonical normalized store.
  ///
  /// Generations rule:
  /// - `maxGenerations == null` => unlimited children depth
  /// - Partners are on the SAME generation as the node
  /// - Children are on the NEXT generation
  Graph drawTreeFromStore({
    required TreeGraphStore store,
    required UniqueId rootId,
    required int? maxGenerations, // null = unlimited
    bool isShowUnknown = true,
    required BuildContext context,
  }) {
    graph = Graph()..isTree = true;
    _graphNodesById.clear();
    _visitedNodes.clear();
    _createdEdges.clear();

    final startId = rootId.asKey();
    final startNode = store.nodesById[startId];
    if (startNode == null) return graph;

    // Drawing the root
    _drawFromNode(
      store: store,
      nodeKey: startId,
      nodeType: NodeType.root,
      parentKey: null,
      parentGender: null,
      parentRelationsCount: startNode.relations.length,
      // generation distance from start root (children increase it, partners do not)
      currentGen: 0,
      maxGen: maxGenerations,
      isShowUnknown: isShowUnknown,
      context: context,
    );

    return graph;
  }

  // ============================================================
  // Core traversal + drawing
  // ============================================================

  void _drawFromNode({
    required TreeGraphStore store,
    required String nodeKey,
    required NodeType nodeType,
    required String? parentKey,
    required Gender? parentGender,
    required int parentRelationsCount,
    required int currentGen,
    required int? maxGen,
    required bool isShowUnknown,
    required BuildContext context,
  }) {
    // Cycle guard (node-level)
    if (_visitedNodes.contains(nodeKey)) {
      // Still ensure edge exists if a parentKey is provided
      if (parentKey != null) {
        _ensureEdge(
          fromKey: parentKey,
          toKey: nodeKey,
          toNodeType: nodeType,
          parentGender: parentGender,
          parentRelationsCount: parentRelationsCount,
          context: context,
        );
      }
      return;
    }
    _visitedNodes.add(nodeKey);

    final node = store.nodesById[nodeKey];
    if (node == null) return;

    // Draw this node
    _ensureGraphNode(node: node, nodeType: nodeType);

    // Link from parent -> this node (if any)
    if (parentKey != null) {
      _ensureEdge(
        fromKey: parentKey,
        toKey: nodeKey,
        toNodeType: nodeType,
        parentGender: parentGender,
        parentRelationsCount: parentRelationsCount,
        context: context,
      );
    }

    // Expand relations from this node
    final relationIds = store.relationIdsOfNodeKey(nodeKey);
    for (final relKey in relationIds) {
      final relation = store.relationsById[relKey];
      if (relation == null) continue;

      _expandRelation(
        store: store,
        currentNode: node,
        currentNodeKey: nodeKey,
        relation: relation,
        relationKey: relKey,
        currentGen: currentGen,
        maxGen: maxGen,
        isShowUnknown: isShowUnknown,
        context: context,
      );
    }
  }

  void _expandRelation({
    required TreeGraphStore store,
    required TNode currentNode,
    required String currentNodeKey,
    required Relation relation,
    required String relationKey,
    required int currentGen,
    required int? maxGen,
    required bool isShowUnknown,
    required BuildContext context,
  }) {
    // Assumes Relation has father/mother/children fields (UniqueIds).
    // If your model differs, adapt here.
    final fatherKey = relation.father.asKey();
    final motherKey = relation.mother.asKey();

    // Determine partner relative to the current node
    String? partnerKey;
    if (currentNodeKey == fatherKey) {
      partnerKey = motherKey;
    } else if (currentNodeKey == motherKey) {
      partnerKey = fatherKey;
    } else {
      // The relation doesn't include this node (shouldn't happen if indexes are correct)
      partnerKey = null;
    }

    // 1) Draw partner
    if (partnerKey != null) {
      final partnerNode = store.nodesById[partnerKey];
      if (partnerNode != null) {
        _ensureGraphNode(node: partnerNode, nodeType: NodeType.partner);

        // Edge current -> partner (partner label)
        _ensureEdge(
          fromKey: currentNodeKey,
          toKey: partnerKey,
          toNodeType: NodeType.partner,
          parentGender: currentNode.gender,
          parentRelationsCount: currentNode.relations.length,
          context: context,
        );
      }
    }

    // 2) Draw children (next generation)
    // If maxGen is reached, we still show partner but we stop descending into children.
    if (maxGen != null && currentGen >= maxGen) return;

    final childKeys = store.childrenIdsOfRelationKey(relationKey);

    // Link children under partner if exists, else under current node (fallback)
    final childrenParentKey =
        (partnerKey != null && store.nodesById[partnerKey] != null)
            ? partnerKey
            : currentNodeKey;

    final childrenParentNode = store.nodesById[childrenParentKey];
    final parentGender = childrenParentNode?.gender;
    final parentRelationsCount = childrenParentNode?.relations.length ?? 0;

    for (final childKey in childKeys) {
      final childNode = store.nodesById[childKey];
      if (childNode == null) continue;

      _drawFromNode(
        store: store,
        nodeKey: childKey,
        nodeType: NodeType.child,
        parentKey: childrenParentKey, // edge parent->child
        parentGender: parentGender,
        parentRelationsCount: parentRelationsCount,
        currentGen: currentGen + 1, // child is next generation
        maxGen: maxGen,
        isShowUnknown: isShowUnknown,
        context: context,
      );
    }
  }

  // ============================================================
  // Graph primitives
  // ============================================================

  void _ensureGraphNode({
    required TNode node,
    required NodeType nodeType,
  }) {
    final key = node.nodeId.asKey();
    if (_graphNodesById.containsKey(key)) return;

    final gNode = Node.Id({
      'type': nodeType,
      'id': node.nodeId,
      'tnode': node,
    });

    _graphNodesById[key] = gNode;
    graph.addNode(gNode);
  }

  void _ensureEdge({
    required String fromKey,
    required String toKey,
    required NodeType toNodeType,
    required Gender? parentGender,
    required int parentRelationsCount,
    required BuildContext context,
  }) {
    final fromNode = _graphNodesById[fromKey];
    final toNode = _graphNodesById[toKey];
    if (fromNode == null || toNode == null) return;

    final label = (toNodeType == NodeType.partner)
        ? getNodePartnerTitle(context, parentGender, parentRelationsCount)
        : getNodeChildrenTitle(context, parentGender);

    final edgeKey = '$fromKey->$toKey|$label';
    if (_createdEdges.contains(edgeKey)) return;
    _createdEdges.add(edgeKey);

    graph.addEdge(fromNode, toNode, label: label);
  }
}
