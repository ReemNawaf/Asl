import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';

class TreeGraphUIQueries {
  const TreeGraphUIQueries._();

  static List<Relation> relationsOfNode({
    required TreeGraphStore store,
    required UniqueId nodeId,
  }) {
    final nodeKey = nodeId.asKey();
    final relKeys = store.relationIdsByNodeId[nodeKey] ?? const <String>[];

    final views = <Relation>[];

    for (final rKey in relKeys) {
      final rel = store.relationsById[rKey];
      if (rel == null) continue;

      final fatherKey = rel.father.asKey();
      final motherKey = rel.mother.asKey();

      final partnerKey = (nodeKey == fatherKey)
          ? motherKey
          : (nodeKey == motherKey)
              ? fatherKey
              : null;

      final partner = partnerKey == null ? null : store.nodesById[partnerKey];

      final childKeys = store.childrenIdsByRelationId[rKey] ?? const <String>[];
      final children =
          childKeys.map((k) => store.nodesById[k]).whereType<TNode>().toList();

      views.add(rel.copyWith(childrenNodes: children, partnerNode: partner));
    }

    return views;
  }
}
