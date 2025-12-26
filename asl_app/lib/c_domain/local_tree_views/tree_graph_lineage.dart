import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/relation.dart';

class TreeGraphLineage {
  const TreeGraphLineage._();

  /// Returns: [person, father, grandfather, ...] up to root (or until missing).
  static List<TNode> fatherLine({
    required TreeGraphStore store,
    required UniqueId personId,
    UniqueId?
        stopAtNodeId, // optional: stop once this node is reached (e.g. tree root)
    int maxHops = 100, // safety
  }) {
    final stopKey = stopAtNodeId?.asKey();
    final result = <TNode>[];

    String? currentKey = personId.asKey();
    final visited = <String>{};

    for (int i = 0; i < maxHops; i++) {
      if (currentKey == null) break;
      if (!visited.add(currentKey)) break; // cycle guard

      final current = store.nodesById[currentKey];
      if (current == null) break;

      result.add(current);

      if (stopKey != null && currentKey == stopKey) break;

      // Parent relation is stored on the node
      final relId = current.upperFamily;
      if (relId == null) break;

      final Relation? rel = store.relationsById[relId.asKey()];
      if (rel == null) break;

      // Move to father
      currentKey = rel.father.asKey();
    }

    return result;
  }

  /// Formats: "X بن Y بن Z ..."
  static String fatherBinText({
    required TreeGraphStore store,
    required UniqueId personId,
    UniqueId? stopAtNodeId,
    int maxHops = 200,
    required Gender gender,
  }) {
    final chain = fatherLine(
      store: store,
      personId: personId,
      stopAtNodeId: stopAtNodeId,
      maxHops: maxHops,
    );
    String bint = 'بنت';
    String bin = 'بن';
    final names = chain
        .map((n) => n.firstName.getOrCrash().trim())
        .where((s) => s.isNotEmpty)
        .toList();

    if (names.isEmpty) return '';

    // "A بن B بن C"
    final buffer = StringBuffer();
    buffer.write(names.first);

    if (names.length < 2) {
      return buffer.toString();
    }

    buffer.write(gender == Gender.female ? ' $bint ' : ' $bin ');
    buffer.write(names[1]);

    for (int i = 2; i < names.length; i++) {
      buffer.write(' $bin ');
      buffer.write(names[i]);
    }
    return buffer.toString();
  }
}
