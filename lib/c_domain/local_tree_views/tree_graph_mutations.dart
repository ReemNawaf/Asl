// ============================================================
// Canonical store mutations (O(1))
// ============================================================

import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';

TreeGraphStore _copyStore(
  TreeGraphStore store, {
  Map<String, TNode>? nodesById,
  Map<String, Relation>? relationsById,
  Map<String, List<String>>? relationIdsByNodeId,
  Map<String, List<String>>? childrenIdsByRelationId,
}) {
  return TreeGraphStore(
    nodesById: nodesById ?? store.nodesById,
    relationsById: relationsById ?? store.relationsById,
    relationIdsByNodeId: relationIdsByNodeId ?? store.relationIdsByNodeId,
    childrenIdsByRelationId:
        childrenIdsByRelationId ?? store.childrenIdsByRelationId,
  );
}

TreeGraphStore upsertNode(TreeGraphStore store, TNode node) {
  final nKey = node.nodeId.asKey();

  final nextNodesById = <String, TNode>{
    ...store.nodesById,
    nKey: node,
  };

  // Keep index in sync with node.relations
  final relKeys = node.relations.map((id) => id.asKey()).toList();
  final nextRelationIdsByNodeId = <String, List<String>>{
    ...store.relationIdsByNodeId,
    nKey: _unique(relKeys),
  };

  return _copyStore(
    store,
    nodesById: nextNodesById,
    relationIdsByNodeId: nextRelationIdsByNodeId,
  );
}

TreeGraphStore upsertRelation(TreeGraphStore store, Relation relation) {
  final rKey = relation.relationId.asKey();

  final nextRelationsById = <String, Relation>{
    ...store.relationsById,
    rKey: relation,
  };

  final nextChildrenIdsByRelationId = <String, List<String>>{
    ...store.childrenIdsByRelationId,
    rKey: _unique(relation.children.map((c) => c.asKey()).toList()),
  };

  return _copyStore(
    store,
    relationsById: nextRelationsById,
    childrenIdsByRelationId: nextChildrenIdsByRelationId,
  );
}

/// Adds relationId to nodeId adjacency (index) and also to the node.relations list (node snapshot).
TreeGraphStore linkRelationToNode(
  TreeGraphStore store, {
  required String nodeKey,
  required String relationKey,
}) {
  // 1) adjacency list
  final existing = store.relationIdsByNodeId[nodeKey] ?? const <String>[];
  final nextList =
      existing.contains(relationKey) ? existing : [...existing, relationKey];

  final nextRelationIdsByNodeId = <String, List<String>>{
    ...store.relationIdsByNodeId,
    nodeKey: nextList,
  };

  // 2) node snapshot (if present)
  final node = store.nodesById[nodeKey];
  final nextNodesById = <String, TNode>{...store.nodesById};
  if (node != null) {
    final nodeRelIds = node.relations.map((x) => x.asKey()).toList();
    if (!nodeRelIds.contains(relationKey)) {
      nextNodesById[nodeKey] = node.copyWith(
        relations: [...node.relations, UniqueId.fromUniqueString(relationKey)],
      );
    }
  }

  return _copyStore(
    store,
    nodesById: nextNodesById,
    relationIdsByNodeId: nextRelationIdsByNodeId,
  );
}

/// Local mutation for changing the order of a child in a relation's children list:
/// - Finds the child nodeId in the relation's children list
/// - Removes it from its current position
/// - Inserts it at the new order position
/// - Updates both the relation snapshot and the childrenIdsByRelationId index
TreeGraphStore applyChangeOrderInFamily({
  required TreeGraphStore store,
  required UniqueId relationId,
  required UniqueId nodeId,
  required int order,
}) {
  final rKey = relationId.asKey();
  final nodeKey = nodeId.asKey();

  // Get the relation
  final relation = store.relationsById[rKey];
  if (relation == null) {
    // Relation not found, return store unchanged
    return store;
  }

  // Get current children list
  final currentChildren = List<UniqueId>.from(relation.children);

  // Find the index of the node to reorder
  final currentIndex = currentChildren.indexWhere(
    (id) => id.asKey() == nodeKey,
  );

  if (currentIndex == -1) {
    // Node not found in children list, return store unchanged
    return store;
  }

  // Remove from current position
  currentChildren.removeAt(currentIndex);

  // Clamp order to valid range
  final clampedOrder = order.clamp(0, currentChildren.length);

  // Insert at new position
  currentChildren.insert(clampedOrder, nodeId);

  // Update relation with new children order
  final updatedRelation = relation.copyWith(children: currentChildren);

  // Upsert the relation (this updates both relationsById and childrenIdsByRelationId)
  return upsertRelation(store, updatedRelation);
}

/// Local mutation for changing the order of a relation in a node's relations list:
/// - Finds the relationId in the node's relations list
/// - Removes it from its current position
/// - Inserts it at the new order position
/// - Updates both the node snapshot and the relationIdsByNodeId index
TreeGraphStore applyChangePartnerOrder({
  required TreeGraphStore store,
  required UniqueId nodeId,
  required UniqueId relationId,
  required int order,
}) {
  final nodeKey = nodeId.asKey();
  final relationKey = relationId.asKey();

  // Get the node
  final node = store.nodesById[nodeKey];
  if (node == null) {
    // Node not found, return store unchanged
    return store;
  }

  // Get current relations list
  final currentRelations = List<UniqueId>.from(node.relations);

  // Find the index of the relationId to reorder
  final currentIndex = currentRelations.indexWhere(
    (id) => id.asKey() == relationKey,
  );

  if (currentIndex == -1) {
    // Relation not found in node's relations list, return store unchanged
    return store;
  }

  // Remove from current position
  currentRelations.removeAt(currentIndex);

  // Clamp order to valid range
  final clampedOrder = order.clamp(0, currentRelations.length);

  // Insert at new position
  currentRelations.insert(clampedOrder, relationId);

  // Update node with new relations order
  final updatedNode = node.copyWith(relations: currentRelations);

  // Upsert the node (this updates both nodesById and relationIdsByNodeId)
  return upsertNode(store, updatedNode);
}

/// Local mutation for adding partners + relations (lists):
/// - upsert each partner node
/// - upsert each relation (children ids list)
/// - link each relationId to both father and mother in adjacency
///
/// Assumes:
/// - `relationsList[i]` corresponds to `partnersList[i]` (same index),
///   OR you can provide extra partners not used by some relations (we still upsert them).
TreeGraphStore applyAddPartner({
  required TreeGraphStore store,
  required List<Relation> relationsList,
  required List<TNode> partnersList,
}) {
  var next = store;

  // 1) Upsert all partners (safe even if not referenced by relation list)
  for (final partner in partnersList) {
    next = upsertNode(next, partner);
  }

  // 2) Upsert relations + link to both sides
  for (final relation in relationsList) {
    final rKey = relation.relationId.asKey();
    final fatherKey = relation.father.asKey();
    final motherKey = relation.mother.asKey();

    // upsert relation snapshot + children index
    next = upsertRelation(next, relation);

    // link relation to both partners (adjacency + node snapshot if you do that)
    next = linkRelationToNode(next, nodeKey: fatherKey, relationKey: rKey);
    next = linkRelationToNode(next, nodeKey: motherKey, relationKey: rKey);
  }

  return next;
}

/// Local mutation for adding a LIST of children:
/// - Each child knows which relation to attach to via `child.upperFamily`
/// - Upserts each child node
/// - Updates Relation.children + childrenIdsByRelationId for each affected relation
///
/// Notes:
/// - If a child.upperFamily is null -> it will be skipped.
/// - If a relation is missing in store.relationsById -> it will be skipped
///   (you can change to throw/assert if you prefer).
TreeGraphStore applyAddChildren({
  required TreeGraphStore store,
  required List<TNode> children,
}) {
  var next = store;

  // 1) Upsert all child nodes
  for (final child in children) {
    next = upsertNode(next, child);
  }

  // 2) Group children by relationId from upperFamily
  final Map<String, List<TNode>> childrenByRelationKey = {};
  for (final child in children) {
    final relId = child.upperFamily;
    if (relId == null) continue;

    final rKey = relId.asKey();
    (childrenByRelationKey[rKey] ??= <TNode>[]).add(child);
  }

  // 3) For each relation, merge children ids and upsert relation once
  for (final entry in childrenByRelationKey.entries) {
    final rKey = entry.key;
    final groupChildren = entry.value;

    final relation = next.relationsById[rKey];
    if (relation == null) {
      // Relation not loaded in store yet (skip or throw based on your preference)
      continue;
    }

    final existingChildren = relation.children;
    final existingKeys = existingChildren.map((c) => c.asKey()).toSet();

    final List<UniqueId> mergedChildren = List<UniqueId>.from(existingChildren);

    for (final child in groupChildren) {
      final cKey = child.nodeId.asKey();
      if (existingKeys.add(cKey)) {
        // it was not present; add it
        mergedChildren.add(child.nodeId);
      }
    }

    final updatedRelation = relation.copyWith(children: mergedChildren);
    next = upsertRelation(next, updatedRelation);
  }

  return next;
}

/// Local mutation for deleting a node:
/// - removes node snapshot from nodesById
/// - removes its adjacency entry relationIdsByNodeId[nodeKey]
/// - removes nodeKey from ALL relations' children lists + index
///
/// NOTE:
/// We do NOT delete relations that reference this node as father/mother.
/// That matches your previous behavior (partnerNode becomes null).
/// Drawing code should handle missing nodes (show unknown if desired).
TreeGraphStore applyDeleteNode({
  required TreeGraphStore store,
  required UniqueId toDeleteId,
}) {
  final delKey = toDeleteId.asKey();

  // 1) remove node snapshot
  final nextNodesById = <String, TNode>{...store.nodesById}..remove(delKey);

  // 2) remove adjacency entry for this node
  final nextRelationIdsByNodeId = <String, List<String>>{
    ...store.relationIdsByNodeId,
  }..remove(delKey);

  // 3) remove from children lists in relations + index
  final nextRelationsById = <String, Relation>{...store.relationsById};
  final nextChildrenIdsByRelationId = <String, List<String>>{
    ...store.childrenIdsByRelationId,
  };

  for (final entry in nextRelationsById.entries) {
    final rKey = entry.key;
    final rel = entry.value;

    final childKeys = rel.children.map((c) => c.asKey()).toList();
    if (!childKeys.contains(delKey)) continue;

    final updatedChildKeys = childKeys.where((k) => k != delKey).toList();
    nextRelationsById[rKey] = rel.copyWith(
      children:
          updatedChildKeys.map((k) => UniqueId.fromUniqueString(k)).toList(),
    );
    nextChildrenIdsByRelationId[rKey] = updatedChildKeys;
  }

  return _copyStore(
    store,
    nodesById: nextNodesById,
    relationIdsByNodeId: nextRelationIdsByNodeId,
    relationsById: nextRelationsById,
    childrenIdsByRelationId: nextChildrenIdsByRelationId,
  );
}

/// Local mutation for deleting a LIST of children:
/// - for each child:
///   - remove child id from its parents relation (child.upperFamily)
///   - delete child node snapshot + adjacency entry
///
/// Notes:
/// - We do NOT delete the parents relation itself.
/// - If relation is missing in store, we still delete the node locally.
/// - If child.upperFamily is null, we only delete the node locally.
TreeGraphStore applyDeleteChildren({
  required TreeGraphStore store,
  required List<TNode> children,
}) {
  var next = store;

  for (final child in children) {
    next = applyDeleteChild(
      store: next,
      child: child,
    );
  }

  return next;
}

/// Local mutation for deleting ONE child:
/// - remove child id from relation.children (via child.upperFamily)
/// - remove child node snapshot + adjacency entry
TreeGraphStore applyDeleteChild({
  required TreeGraphStore store,
  required TNode child,
}) {
  final childKey = child.nodeId.asKey();

  // 1) remove child from its parents relation (if known)
  final relId = child.upperFamily;
  if (relId != null) {
    final relKey = relId.asKey();
    final rel = store.relationsById[relKey];

    if (rel != null) {
      final updatedChildren =
          rel.children.where((id) => id.asKey() != childKey).toList();

      // update relation + children index
      store = upsertRelation(store, rel.copyWith(children: updatedChildren));
    }
  }

  // 2) remove the child node snapshot + adjacency entry
  store = removeNodeOnly(store, child.nodeId);

  return store;
}

/// Removes a node from the store (node snapshot + adjacency entry only).
/// Does NOT touch relations' children lists.
/// (We already removed it from its parent relation above.)
TreeGraphStore removeNodeOnly(TreeGraphStore store, UniqueId nodeId) {
  final key = nodeId.asKey();

  final nextNodesById = <String, TNode>{...store.nodesById}..remove(key);

  final nextRelationIdsByNodeId = <String, List<String>>{
    ...store.relationIdsByNodeId,
  }..remove(key);

  return _copyStore(
    store,
    nodesById: nextNodesById,
    relationIdsByNodeId: nextRelationIdsByNodeId,
  );
}

/// Delete MANY relations (ONLY if they have no children) + delete orphan partners.
///
/// Rules per relation (when eligible):
/// - relation has NO children (checked from store index first, then relation.children)
/// - Removes the relation from:
///   - relationsById
///   - childrenIdsByRelationId
///   - relationIdsByNodeId for father/mother
///   - node snapshots (node.relations) for father/mother
///
/// - Deletes partner node only if:
///   - partner.upperFamily == null
///   - and after relation removal, partner has no remaining relations (adjacency empty)
///
/// Notes:
/// - No children are deleted here.
/// - Relations that have children are skipped.
TreeGraphStore applyDeleteRelationsCascade({
  required TreeGraphStore store,
  required List<Relation> relations,
}) {
  if (relations.isEmpty) return store;

  var next = store;

  // Keep only relations we actually deleted (eligible)
  final deletedRelationKeys = <String>{};

  // Partner candidates to maybe delete later
  final partnerCandidatesKeys = <String>{};

  // 1) Unlink only eligible relations (no children)
  for (final relation in relations) {
    final rKey = relation.relationId.asKey();

    // Eligibility: must have NO children
    final childKeysFromStore = next.childrenIdsByRelationId[rKey];
    final hasChildren =
        (childKeysFromStore != null && childKeysFromStore.isNotEmpty) ||
            relation.children.isNotEmpty;

    if (hasChildren) {
      continue; // skip deletion
    }

    final fatherKey = relation.father.asKey();
    final motherKey = relation.mother.asKey();

    // unlink relation from both sides (adjacency + node snapshot)
    next = _unlinkRelationFromNode(next, nodeKey: fatherKey, relationKey: rKey);
    next = _unlinkRelationFromNode(next, nodeKey: motherKey, relationKey: rKey);

    deletedRelationKeys.add(rKey);

    // collect partner candidate (based on relation.mainNode)
    final main = relation.mainNode;
    if (main != null) {
      final initiatorKey = main.nodeId.asKey();
      final partnerKey = (initiatorKey == fatherKey)
          ? motherKey
          : (initiatorKey == motherKey)
              ? fatherKey
              : null;

      if (partnerKey != null) {
        partnerCandidatesKeys.add(partnerKey);
      }
    }
  }

  if (deletedRelationKeys.isEmpty) return next;

  // 2) Remove deleted relations from store maps
  final nextRelationsById = <String, Relation>{...next.relationsById};
  final nextChildrenIdsByRelationId = <String, List<String>>{
    ...next.childrenIdsByRelationId,
  };

  for (final rKey in deletedRelationKeys) {
    nextRelationsById.remove(rKey);
    nextChildrenIdsByRelationId.remove(rKey);
  }

  next = _copyStore(
    next,
    relationsById: nextRelationsById,
    childrenIdsByRelationId: nextChildrenIdsByRelationId,
  );

  // 3) Delete orphan partners (after all relation removals)
  for (final partnerKey in partnerCandidatesKeys) {
    final partner = next.nodesById[partnerKey];
    if (partner == null) continue;

    final partnerHasUpperFamily = partner.upperFamily != null;
    final partnerAdj = next.relationIdsByNodeId[partnerKey] ?? const <String>[];
    final partnerHasNoMoreRelations = partnerAdj.isEmpty;

    if (!partnerHasUpperFamily && partnerHasNoMoreRelations) {
      next = removeNodeOnly(next, partner.nodeId);
    }
  }

  return next;
}

/// Remove relationKey from:
/// - relationIdsByNodeId[nodeKey]
/// - node snapshot `relations` list (if node exists)
TreeGraphStore _unlinkRelationFromNode(
  TreeGraphStore store, {
  required String nodeKey,
  required String relationKey,
}) {
  // adjacency
  final existing = store.relationIdsByNodeId[nodeKey] ?? const <String>[];
  final nextList = existing.where((k) => k != relationKey).toList();

  final nextRelationIdsByNodeId = <String, List<String>>{
    ...store.relationIdsByNodeId,
    nodeKey: nextList,
  };

  // node snapshot
  final node = store.nodesById[nodeKey];
  final nextNodesById = <String, TNode>{...store.nodesById};

  if (node != null) {
    final nextNodeRelations =
        node.relations.where((rid) => rid.asKey() != relationKey).toList();

    nextNodesById[nodeKey] = node.copyWith(relations: nextNodeRelations);
  }

  return _copyStore(
    store,
    nodesById: nextNodesById,
    relationIdsByNodeId: nextRelationIdsByNodeId,
  );
}

List<String> _unique(List<String> items) => items.toSet().toList();
