import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';

/// Canonical in-memory normalized graph store for a Tree.
///
/// Keys are String IDs (UniqueId.asKey()) for fast Map lookups.
///
/// This store is designed to be:
/// - easy to update (O(1) node updates)
/// - easy to traverse (indexes/adjacency lists)
/// - independent of any nested relationsObject projection
class TreeGraphStore {
  /// nodeId -> TNode
  final Map<String, TNode> nodesById;

  /// relationId -> Relation (metadata + ids lists)
  final Map<String, Relation> relationsById;

  /// nodeId -> [relationId]
  /// Typically comes from node.relations (ids).
  final Map<String, List<String>> relationIdsByNodeId;

  /// relationId -> [childNodeId]
  /// Typically comes from relation.children (ids).
  final Map<String, List<String>> childrenIdsByRelationId;

  /// relationId -> partnerNodeId? (optional)
  /// Partner is derived from relation participants; we store it here
  /// for fast lookup during drawing.

  const TreeGraphStore({
    required this.nodesById,
    required this.relationsById,
    required this.relationIdsByNodeId,
    required this.childrenIdsByRelationId,
  });

  factory TreeGraphStore.empty() => const TreeGraphStore(
        nodesById: {},
        relationsById: {},
        relationIdsByNodeId: {},
        childrenIdsByRelationId: {},
      );

  /// Convenience accessors
  TNode? getNodeByKey(String nodeKey) => nodesById[nodeKey];
  Relation? getRelationByKey(String relationKey) => relationsById[relationKey];

  List<String> relationIdsOfNodeKey(String nodeKey) =>
      relationIdsByNodeId[nodeKey] ?? const [];

  List<String> childrenIdsOfRelationKey(String relationKey) =>
      childrenIdsByRelationId[relationKey] ?? const [];
}
