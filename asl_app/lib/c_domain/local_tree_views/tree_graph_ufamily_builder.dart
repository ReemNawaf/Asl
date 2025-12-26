import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/half_siblings.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/relation/ufamily.dart';

class TreeGraphUFamilyBuilder {
  const TreeGraphUFamilyBuilder._();

  static Ufamily? build({
    required TreeGraphStore store,
    required UniqueId treeId,
    required UniqueId personId,
  }) {
    final personKey = personId.asKey();
    final person = store.nodesById[personKey] ?? TNode.empty();

    // Parents relation is stored on the person node
    final parentsRelId = person.upperFamily;
    if (parentsRelId == null) {
      return null;
    }

    final parentsRelKey = parentsRelId.asKey();
    final parentsRel = store.relationsById[parentsRelKey];
    if (parentsRel == null) {
      return null;
    }

    final fatherKey = parentsRel.father.asKey();
    final motherKey = parentsRel.mother.asKey();

    final father = store.nodesById[fatherKey] ?? TNode.empty();
    final mother = store.nodesById[motherKey] ?? TNode.empty();

    // --------------------------------------------
    // Full siblings: same parents relation
    // --------------------------------------------
    final siblingKeys = store.childrenIdsOfRelationKey(parentsRelKey);
    final siblings = siblingKeys
        .where((k) => k != personKey)
        .map((k) => store.nodesById[k])
        .whereType<TNode>()
        .toList();

    // --------------------------------------------
    // Half siblings from father/mother
    // --------------------------------------------
    final fatherHalf = _halfSiblingsGroups(
      store: store,
      treeId: treeId,
      personId: personId,
      parentKey: fatherKey,
      excludeRelationKey: parentsRelKey,
      excludePartnerKey: motherKey,
      excludeChildKey: personKey,
    );

    final motherHalf = _halfSiblingsGroups(
      store: store,
      treeId: treeId,
      personId: personId,
      parentKey: motherKey,
      excludeRelationKey: parentsRelKey,
      excludePartnerKey: fatherKey,
      excludeChildKey: personKey,
    );

    return Ufamily(
      treeId: treeId,
      father: father,
      mother: mother,
      person: person,
      siblings: siblings,
      fatherHalfSiblings: fatherHalf,
      motherHalfSiblings: motherHalf,
    );
  }

  static List<HalfSiblings> _halfSiblingsGroups({
    required TreeGraphStore store,
    required UniqueId treeId,
    required UniqueId personId,
    required String parentKey,
    required String excludeRelationKey,
    required String excludePartnerKey,
    required String excludeChildKey,
  }) {
    final relKeys = store.relationIdsOfNodeKey(parentKey);

    final List<HalfSiblings> groups = [];

    for (final relKey in relKeys) {
      if (relKey == excludeRelationKey) continue;

      final Relation? rel = store.relationsById[relKey];
      if (rel == null) continue;

      // Determine partner in this relation
      final fatherKey = rel.father.asKey();
      final motherKey = rel.mother.asKey();

      final String otherKey;
      if (fatherKey == parentKey) {
        otherKey = motherKey;
      } else if (motherKey == parentKey) {
        otherKey = fatherKey;
      } else {
        // relation doesn't actually include this parent
        continue;
      }

      // Exclude the "other parent" from the full-siblings relation
      if (otherKey == excludePartnerKey) continue;

      final partnerNode = store.nodesById[otherKey] ?? TNode.empty();

      // Children of this relation, excluding the current person
      final childKeys = store.childrenIdsOfRelationKey(relKey);
      final halfSibs = childKeys
          .where((k) => k != excludeChildKey)
          .map((k) => store.nodesById[k])
          .whereType<TNode>()
          .toList();

      if (halfSibs.isEmpty) continue;

      groups.add(HalfSiblings(
        treeId: treeId,
        person: personId,
        partner: partnerNode,
        halfSiblings: halfSibs,
      ));
    }

    return groups;
  }
}
