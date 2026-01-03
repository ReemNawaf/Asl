import 'dart:collection';

import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:flutter/material.dart';

enum Generation { root, parents, grandchildren }

String? firstDescendantAtGeneration({
  required TreeGraphStore store,
  required String rootIdKey,
  required Generation target,
}) {
  if (!store.nodesById.containsKey(rootIdKey)) return null;

  if (target == Generation.root) return rootIdKey;

  // Helper: only relations where this node is father/mother (descendants only)
  Iterable<String> parentRelationKeys(String nodeKey) sync* {
    final relKeys = store.relationIdsOfNodeKey(nodeKey);
    for (final rk in relKeys) {
      final rel = store.relationsById[rk];
      if (rel == null) continue;

      final fatherKey = rel.father.getOrCrash();
      final motherKey = rel.mother.getOrCrash();

      if (fatherKey == nodeKey || motherKey == nodeKey) {
        yield rk;
      }
    }
  }

  // BFS over descendants to compute depths and pick a representative node.
  final visited = <String>{rootIdKey};
  final q = Queue<(String key, int depth)>()..add((rootIdKey, 0));

  // Track deepest (used as fallback so we DON'T return root by mistake)
  String deepestKey = rootIdKey;
  int deepestDepth = 0;

  // Track first matches for each bucket
  String? parentLastKey;
  int parentLastDepth = -1;

  String? grandLastKey;
  int grandLastDepth = -1;

  // We need the "half split" depth cutoff.
  // totalGenerations = maxDepth + 1
  final totalGenerations =
      numberOfGenerations(store: store, rootIdKey: rootIdKey);
  final maxDepth = (totalGenerations - 1); // depth in edges
  if (maxDepth <= 0) return null; // no children at all

  // First half = depths 1..parentCutoffDepth, second half = depths > parentCutoffDepth
  int parentCutoffDepth = (maxDepth / 2).floor();
  if (parentCutoffDepth < 1) {
    parentCutoffDepth = 1; // ensure depth=1 counts as "parents"
  }

  while (q.isNotEmpty) {
    final (nodeKey, d) = q.removeFirst();

    for (final rk in parentRelationKeys(nodeKey)) {
      final childKeys = store.childrenIdsOfRelationKey(rk);
      for (final cKey in childKeys) {
        if (!store.nodesById.containsKey(cKey)) continue;
        if (!visited.add(cKey)) continue;

        final nnd = d + 1;

        // deepest tracking
        if (nnd > deepestDepth) {
          deepestDepth = nnd;
          deepestKey = cKey;
        }

        // bucket classification
        if (nnd >= 1 && nnd <= parentCutoffDepth) {
          // keep the *deepest* node inside "parents" bucket
          if (nnd > parentLastDepth) {
            parentLastDepth = nnd;
            parentLastKey = cKey;
          }
        } else if (nnd > parentCutoffDepth) {
          // keep the *deepest* node inside "grandchildren" bucket
          if (nnd > grandLastDepth) {
            grandLastDepth = nnd;
            grandLastKey = cKey;
          }
        }

        q.add((cKey, nnd));
      }
    }
  }

  if (target == Generation.parents) {
    // deepest node within parents bucket
    return parentLastKey ?? (deepestDepth >= 1 ? deepestKey : null);
  }

// GenerationTarget.grandchildren
// deepest node within grandchildren bucket
  return grandLastKey ?? (deepestDepth >= 1 ? deepestKey : null);
}

int numberOfGenerations({
  required TreeGraphStore store,
  required String rootIdKey,
}) {
  if (!store.nodesById.containsKey(rootIdKey)) return 0;

  final memo = <String, int>{};
  final visiting = <String>{};

  // Depth measured in child-edges: leaf => 0
  int dfsDepth(String nodeKey) {
    if (memo.containsKey(nodeKey)) return memo[nodeKey]!;
    if (visiting.contains(nodeKey)) return 0; // cycle guard

    visiting.add(nodeKey);

    int best = 0;

    // Only traverse relations where this node is a parent (father/mother)
    final relKeys = store.relationIdsOfNodeKey(nodeKey);
    for (final rk in relKeys) {
      final rel = store.relationsById[rk];
      if (rel == null) continue;

      final fatherKey = rel.father.getOrCrash();
      final motherKey = rel.mother.getOrCrash();

      if (fatherKey != nodeKey && motherKey != nodeKey) {
        continue; // not a parent here
      }

      final childKeys = store.childrenIdsOfRelationKey(rk);
      for (final cKey in childKeys) {
        if (!store.nodesById.containsKey(cKey)) continue;
        final d = 1 + dfsDepth(cKey);
        if (d > best) best = d;
      }
    }

    visiting.remove(nodeKey);
    memo[nodeKey] = best;
    return best;
  }

  final maxDepth = dfsDepth(rootIdKey); // 0 means only root
  return maxDepth + 1;
}

void zoomToScale({
  required GlobalKey viewerKey,
  required TransformationController controller,
  required double newScale,
}) {
  final viewerCtx = viewerKey.currentContext;
  if (viewerCtx == null) return;

  final viewerBox = viewerCtx.findRenderObject() as RenderBox?;
  if (viewerBox == null || !viewerBox.hasSize) return;

  final clamped = newScale.clamp(MIN_ZOOM, MAX_ZOOM).toDouble();

  // viewport center in viewport coordinates
  final viewportCenter = viewerBox.size.center(Offset.zero);

  // scene point currently under the viewport center
  final sceneCenter = controller.toScene(viewportCenter);

  // keep sceneCenter under the viewport center after scaling
  controller.value = Matrix4.identity()
    ..translate(viewportCenter.dx, viewportCenter.dy)
    ..scale(clamped)
    ..translate(-sceneCenter.dx, -sceneCenter.dy);
}
