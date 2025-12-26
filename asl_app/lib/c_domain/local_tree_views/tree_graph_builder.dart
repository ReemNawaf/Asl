import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:collection/collection.dart';

/// Builds a normalized [TreeGraphStore] from flat Firestore docs:
/// - nodes collection -> List<TNode>
/// - relations collection -> List<Relation>
///
/// It uses IDs only (node.relations + relation.{father,mother,children}).
import 'tree_graph_store.dart';

class TreeGraphBuilder {
  const TreeGraphBuilder._();

  /// Build canonical store from Firestore docs.
  static TreeGraphStore fromCollections({
    required List<TNode> nodes,
    required List<Relation> relations,
  }) {
    // 1) nodesById
    final nodesById = <String, TNode>{
      for (final n in nodes) n.nodeId.asKey(): n,
    };

    // 2) relationsById
    final relationsById = <String, Relation>{
      for (final r in relations) r.relationId.asKey(): r,
    };

    // 3) relationIdsByNodeId (start from nodes' own list)
    final relationIdsByNodeId = <String, List<String>>{};
    for (final n in nodes) {
      final nKey = n.nodeId.asKey();
      final relKeys = n.relations.map((id) => id.asKey()).toList();
      relationIdsByNodeId[nKey] = _unique(relKeys);
    }

    // 4) childrenIdsByRelationId (from relation.children)
    final childrenIdsByRelationId = <String, List<String>>{};
    for (final r in relations) {
      final rKey = r.relationId.asKey();
      childrenIdsByRelationId[rKey] =
          _unique(r.children.map((c) => c.asKey()).toList());
    }

    // 5) Ensure bidirectional adjacency from relations too (safety net)
    // Add relationId to father/mother lists even if node doc relation list
    // is missing/out-of-sync.
    for (final r in relations) {
      final rKey = r.relationId.asKey();
      final fatherKey = r.father.asKey();
      final motherKey = r.mother.asKey();

      _addToAdjacencyList(relationIdsByNodeId, fatherKey, rKey);
      _addToAdjacencyList(relationIdsByNodeId, motherKey, rKey);
    }

    return TreeGraphStore(
      nodesById: nodesById,
      relationsById: relationsById,
      relationIdsByNodeId: relationIdsByNodeId,
      childrenIdsByRelationId: childrenIdsByRelationId,
    );
  }

  // ---------------------------
  // helpers
  // ---------------------------

  static void _addToAdjacencyList(
    Map<String, List<String>> map,
    String nodeKey,
    String relationKey,
  ) {
    final existing = map[nodeKey] ?? const <String>[];
    if (existing.contains(relationKey)) return;
    map[nodeKey] = [...existing, relationKey];
  }

  static List<String> _unique(List<String> items) =>
      items.whereNotNull().toSet().toList();
}
