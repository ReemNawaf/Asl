import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:flutter/cupertino.dart';

void focusOnRoot(
    {required GlobalKey viewerKey,
    required GlobalKey rootKey,
    required TransformationController controller,
    double? targetScale}) {
  final rootCtx = rootKey.currentContext;
  final viewerCtx = viewerKey.currentContext;
  if (rootCtx == null || viewerCtx == null) return;

  final rootBox = rootCtx.findRenderObject() as RenderBox?;
  final viewerBox = viewerCtx.findRenderObject() as RenderBox?;
  if (rootBox == null || viewerBox == null) return;

  // Root center in GLOBAL coordinates
  final rootCenterGlobal =
      rootBox.localToGlobal(rootBox.size.center(Offset.zero));

  // Viewer center in GLOBAL coordinates
  final viewerCenterGlobal =
      viewerBox.localToGlobal(viewerBox.size.center(Offset.zero));

  final deltaGlobal = viewerCenterGlobal - rootCenterGlobal;

  // Keep current scale or force a target scale
  final currentScale = controller.value.getMaxScaleOnAxis();
  final scale = targetScale ?? currentScale;

  // Translate must be divided by scale (because transform is in "scene" space)
  final dx = deltaGlobal.dx / scale;
  final dy = deltaGlobal.dy / scale;

  controller.value = Matrix4.identity()
    ..scale(scale)
    ..translate(dx, dy);
}

void _setTransformToCenterGlobal(Offset targetCenterGlobal,
    {required GlobalKey viewerKey,
    required TransformationController controller,
    double? targetScale}) {
  final viewerCtx = viewerKey.currentContext;
  if (viewerCtx == null) return;

  final viewerBox = viewerCtx.findRenderObject() as RenderBox?;
  if (viewerBox == null) return;

  final viewerCenterGlobal =
      viewerBox.localToGlobal(viewerBox.size.center(Offset.zero));

  final delta = viewerCenterGlobal - targetCenterGlobal;

  final currentScale = controller.value.getMaxScaleOnAxis();
  final scale = targetScale ?? currentScale;

  controller.value = Matrix4.identity()
    ..scale(scale)
    ..translate(delta.dx / scale, delta.dy / scale);
}

void focusOnNodeIdKey({
  double? targetScale,
  required String nodeIdKey,
  required Map<String, GlobalKey> nodeKeys,
  required GlobalKey viewerKey,
  required TransformationController controller,
}) {
  final key = nodeKeys[nodeIdKey];
  if (key == null) return;
  final c = _centerOf(key);
  if (c == null) return;
  _setTransformToCenterGlobal(c,
      viewerKey: viewerKey, controller: controller, targetScale: targetScale);
}

void focusOnParents({
  required TreeGraphStore store,
  required String rootId,
  required GlobalKey<State<StatefulWidget>>? Function(String nodeIdKey)
      tryGetKey,
  required GlobalKey viewerKey,
  required TransformationController controller,
  double targetScale = 1.0,
  bool preferFather = true,
  void Function(String focusedParentRealIdKey)? onFocusedParent,
}) {
  String effectiveNodeKey = rootId;

  // 1) start from selected
  var node = store.nodesById[effectiveNodeKey];
  if (node == null) return;

  String? firstChildKey;

  final relKeys = store.relationIdsOfNodeKey(effectiveNodeKey);

  for (final relKey in relKeys) {
    final children = store.childrenIdsOfRelationKey(relKey);
    if (children.isNotEmpty) {
      firstChildKey = children.first;
      break;
    }
  }

  if (firstChildKey == null) return; // root has no children → nothing to focus
  effectiveNodeKey = firstChildKey;

  node = store.nodesById[effectiveNodeKey];
  if (node == null || node.upperFamily == null) return;

  final relKey = node.upperFamily!.getOrCrash();
  final rel = store.relationsById[relKey];
  if (rel == null) return;

  final fatherRealIdKey = rel.father.getOrCrash();
  final motherRealIdKey = rel.mother.getOrCrash();

  // Helper: get the displayed key (real node if exists, otherwise its mirror key)
  GlobalKey? keyForDisplayed(String realIdKey) {
    // 1) try real node key
    final k1 = tryGetKey(realIdKey);
    if (k1 != null) return k1;

    // 2) try mirror keys: pm:<relationKey>:<realIdKey>  (endsWith :<realIdKey>)
    // If you stored keys by widgetKeyId, mirrors are in the map too.
    // So we search all keys for any mirror that points to this realIdKey.
    // NOTE: you need access to the bloc’s internal map keys to do this fast.
    // If you can’t, add a helper in the bloc to resolveDisplayedKey(realIdKey).
    return null;
  }

  // Prefer one parent, fallback to the other if missing
  final first = preferFather ? fatherRealIdKey : motherRealIdKey;
  final second = preferFather ? motherRealIdKey : fatherRealIdKey;

  final firstKey = keyForDisplayed(first);
  final secondKey = keyForDisplayed(second);

  final targetKey = firstKey ?? secondKey;
  final focusedRealId = (firstKey != null) ? first : second;

  if (targetKey == null) return;

  final targetCenter = _centerOf(targetKey);
  if (targetCenter == null) return;

  _setTransformToCenterGlobal(
    targetCenter,
    targetScale: targetScale,
    viewerKey: viewerKey,
    controller: controller,
  );

  onFocusedParent?.call(focusedRealId);
}

Offset? _centerOf(GlobalKey k) {
  final ctx = k.currentContext;
  if (ctx == null) return null;
  final box = ctx.findRenderObject() as RenderBox?;
  if (box == null) return null;
  return box.localToGlobal(box.size.center(Offset.zero));
}

// Offset? _centerOfNullable(GlobalKey? key) {
//   if (key == null) return null;
//   return _centerOf(key); // your existing centerOf(GlobalKey key) -> Offset?
// }
