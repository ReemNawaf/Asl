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

  final Map<String, Node> _graphNodesById = {};
  final Set<String> _visitedNodes = {};
  final Set<String> _createdEdges = {};
  final Set<String> _childrenDrawnForRelation = {};

  TreeDraw() {
    builder
      ..siblingSeparation = 30
      ..levelSeparation = 100
      ..subtreeSeparation = 100
      ..orientation = BuchheimWalkerConfiguration.ORIENTATION_BOTTOM_TOP;
  }

  Graph getGraph() => graph;
  BuchheimWalkerConfiguration getBuilder() => builder;

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
    _childrenDrawnForRelation.clear();

    final startKey = rootId.asKey();
    final startNode = store.nodesById[startKey];
    if (startNode == null) return graph;

    // 1) Compute actual depth (children edges only; partners do NOT increase gen)
    final actualDepth = _computeMaxChildDepth(store: store, rootKey: startKey);

    // If user limits depth, use the effective depth for the 60/40 split
    final effectiveDepth = maxGenerations == null
        ? actualDepth
        : (actualDepth < maxGenerations ? actualDepth : maxGenerations);

    final totalGenerations = effectiveDepth + 1; // root counts as generation 0

    // 2) First 60% gens are "children", last 40% are "grandchildren"
    // cutoff is a generation index (distance from root)
    // gen=1..cutoff => child, gen>cutoff => grandchild
    final childCutoffGen = _childCutoffGen(totalGenerations);

    _drawFromNode(
      store: store,
      nodeKey: startKey,
      nodeType: NodeType.root,
      parentKey: null,
      parentGender: null,
      parentRelationsCount: startNode.relations.length,
      currentGen: 0,
      maxGen: maxGenerations,
      childCutoffGen: childCutoffGen, // pass cutoff
      isShowUnknown: isShowUnknown,
      context: context,
    );

    return graph;
  }

  // ============================================================
  // Depth computation
  // ============================================================

  int _childCutoffGen(int totalGenerations) {
    // Example: total=10 => cutoff=6 (60%), so gen 7..10 => grandchild
    // Keep at least 1 so first descendant generation is always "child"
    final cutoff = (totalGenerations * 0.6).floor();
    return cutoff < 1 ? 1 : cutoff;
  }

  int _computeMaxChildDepth({
    required TreeGraphStore store,
    required String rootKey,
  }) {
    final memo = <String, int>{};
    final visiting = <String>{};

    int dfs(String nodeKey) {
      if (memo.containsKey(nodeKey)) return memo[nodeKey]!;
      if (visiting.contains(nodeKey)) return 0; // cycle guard

      visiting.add(nodeKey);

      var best = 0; // depth measured in child-edges from this node
      final relationKeys = store.relationIdsOfNodeKey(nodeKey);

      for (final relKey in relationKeys) {
        final childKeys = store.childrenIdsOfRelationKey(relKey);
        for (final cKey in childKeys) {
          if (!store.nodesById.containsKey(cKey)) continue;
          final d = 1 + dfs(cKey);
          if (d > best) best = d;
        }
      }

      visiting.remove(nodeKey);
      memo[nodeKey] = best;
      return best;
    }

    return dfs(rootKey);
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
    required int childCutoffGen, // ✅ NEW
    required bool isShowUnknown,
    required BuildContext context,
  }) {
    if (_visitedNodes.contains(nodeKey)) {
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

    _ensureGraphNode(node: node, nodeType: nodeType);

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
        childCutoffGen: childCutoffGen, // pass down
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
    required int childCutoffGen, // NEW
    required bool isShowUnknown,
    required BuildContext context,
  }) {
    final fatherKey = relation.father.asKey();
    final motherKey = relation.mother.asKey();

    String? partnerKey;
    if (currentNodeKey == fatherKey) {
      partnerKey = motherKey;
    } else if (currentNodeKey == motherKey) {
      partnerKey = fatherKey;
    }

    // 1) partner (same gen) + MIRROR if partner already exists in tree
    String? partnerDisplayKey; // could be real nodeKey OR mirrorKey

    if (partnerKey != null) {
      final partnerNode = store.nodesById[partnerKey];
      if (partnerNode != null) {
        final shouldMirror = partnerNode.upperFamily != null;
        // your rule: only mirror if partner is an existing node in the tree

        if (shouldMirror) {
          partnerDisplayKey = _mirrorKey(relationKey, partnerKey);
          _ensureMirrorNode(
              mirrorKey: partnerDisplayKey, realNode: partnerNode);
        } else {
          partnerDisplayKey = partnerKey;
          _ensureGraphNode(node: partnerNode, nodeType: NodeType.partner);
        }

        _ensureEdge(
          fromKey: currentNodeKey,
          toKey: partnerDisplayKey,
          toNodeType: shouldMirror ? NodeType.partnerMirror : NodeType.partner,
          parentGender: currentNode.gender,
          parentRelationsCount: currentNode.relations.length,
          context: context,
        );
      }
    }

    // 2) children (next gen)
    if (maxGen != null && currentGen >= maxGen) return;

// Mother info
    final motherNode = store.nodesById[motherKey];
    final motherHasMirror =
        motherNode != null && motherNode.upperFamily != null;

    // RULE:
    // If motherHasMirror, we want children under the MIRROR mother.
    // But the mirror mother is only created when we traverse from the OTHER side (usually father side).
    // So: if we are currently at the REAL mother node, skip drawing children here,
    // and let the father-side traversal draw them under the mirror mother.
    if (motherHasMirror && currentNodeKey == motherKey) {
      return;
    }

    // Now apply the "draw once" guard (only after we confirm this is the correct place to draw)
    if (_childrenDrawnForRelation.contains(relationKey)) return;
    _childrenDrawnForRelation.add(relationKey);

    final childKeys = store.childrenIdsOfRelationKey(relationKey);

    // Children parent must ALWAYS be the mother (real or mirror)
    String childrenParentKey;

    // If mother has mirror → parent must be the mirror mother (it should be partnerDisplayKey here)
    if (motherHasMirror &&
        partnerDisplayKey != null &&
        partnerKey == motherKey) {
      childrenParentKey = partnerDisplayKey; // mirror mother
    } else {
      // mother has no mirror → parent is the real mother (if present), else fallback
      childrenParentKey = motherKey;

      // ensure real mother node exists in graph if we will attach children to it
      final realMother = store.nodesById[motherKey];
      if (realMother != null) {
        _ensureGraphNode(node: realMother, nodeType: NodeType.partner);
      } else {
        childrenParentKey = currentNodeKey; // fallback if mother missing
      }
    }

// Labels should reflect "mother"
    final parentGender = motherNode?.gender;
    final parentRelationsCount = motherNode?.relations.length ?? 0;

    for (final childKey in childKeys) {
      final childNode = store.nodesById[childKey];
      if (childNode == null) continue;

      final nextGen = currentGen + 1;

      // Here is the split:
      // gen <= childCutoffGen => child
      // gen > childCutoffGen  => grandchild
      final childType =
          nextGen <= childCutoffGen ? NodeType.child : NodeType.grandchild;

      _drawFromNode(
        store: store,
        nodeKey: childKey,
        nodeType: childType,
        parentKey: childrenParentKey,
        parentGender: parentGender,
        parentRelationsCount: parentRelationsCount,
        currentGen: nextGen,
        maxGen: maxGen,
        childCutoffGen: childCutoffGen,
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
      'id': key,
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

    final label =
        (toNodeType == NodeType.partner || toNodeType == NodeType.partnerMirror)
            ? getNodePartnerTitle(context, parentGender, parentRelationsCount)
            : getNodeChildrenTitle(context, parentGender);

    final edgeKey = '$fromKey->$toKey|$label';
    if (_createdEdges.contains(edgeKey)) return;
    _createdEdges.add(edgeKey);

    graph.addEdge(fromNode, toNode, label: label);
  }

  String _mirrorKey(String relationKey, String realPartnerKey) =>
      'pm:$relationKey:$realPartnerKey';

  Node _ensureMirrorNode({
    required String mirrorKey,
    required TNode realNode,
  }) {
    final existing = _graphNodesById[mirrorKey];
    if (existing != null) return existing;

    final gNode = Node.Id({
      'type': NodeType.partnerMirror,
      'id': mirrorKey, // unique for layout
      'realId': realNode.nodeId.asKey(), // IMPORTANT: use this on tap
      'tnode': realNode, // render same card
    });

    _graphNodesById[mirrorKey] = gNode;
    graph.addNode(gNode);
    return gNode;
  }
}
