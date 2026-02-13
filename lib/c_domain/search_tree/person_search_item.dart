import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';

class PersonSearchItem {
  final UniqueId nodeId;
  final Gender gender; // what you show
  final String displayName; // what you show
  final String normalized; // what you match on

  PersonSearchItem({
    required this.nodeId,
    required this.gender,
    required this.displayName,
    required this.normalized,
  });
}

String normalize(String s) {
  // basic Arabic-friendly normalization (good enough for v1)
  var x = s.trim().toLowerCase();

  // remove tatweel
  x = x.replaceAll('ـ', '');

  // remove common diacritics
  x = x.replaceAll(RegExp(r'[\u064B-\u065F\u0670]'), '');

  // normalize alef forms
  x = x.replaceAll('أ', 'ا').replaceAll('إ', 'ا').replaceAll('آ', 'ا');

  // normalize ya/ya maqsura
  x = x.replaceAll('ى', 'ي');

  // normalize taa marbuta
  x = x.replaceAll('ة', 'ه');

  // collapse spaces
  x = x.replaceAll(RegExp(r'\s+'), ' ');
  return x;
}

List<PersonSearchItem> buildSearchIndex(TreeGraphStore store) {
  final searchIndex = <PersonSearchItem>[];

  for (final node in store.nodesById.values) {
    if (node.isUnknown) continue;
    final name = node.firstName.getOrCrash();
    searchIndex.add(PersonSearchItem(
      nodeId: node.nodeId,
      gender: node.gender,
      displayName: name,
      normalized: normalize(name),
    ));
  }
  return searchIndex;
}
