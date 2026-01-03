import 'dart:async';
import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_store.dart';
import 'package:asl/c_domain/tree/tree_draw.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphview/GraphView.dart';
import 'package:injectable/injectable.dart';

part 'draw_tree_event.dart';
part 'draw_tree_state.dart';
part 'draw_tree_bloc.freezed.dart';

@injectable
class DrawTreeBloc extends Bloc<DrawTreeEvent, DrawTreeState> {
  final TreeDraw treeDraw = TreeDraw();
  DrawTreeBloc() : super(DrawTreeState.initial()) {
    on<DrawTreeEvent>(mapEventToState);
  }

  final Map<String, GlobalKey> _nodeKeys = {}; // mutable, NOT in state

  GlobalKey keyForNode(String nodeIdKey,
      {required bool mirrorNode, required String drawingId}) {
    final id = mirrorNode ? drawingId : nodeIdKey;
    return _nodeKeys.putIfAbsent(
      id,
      () => GlobalKey(debugLabel: 'node:$nodeIdKey'),
    );
  }

  GlobalKey? tryGetKey(String nodeIdKey) => _nodeKeys[nodeIdKey];

  bool navigateToNode(String nodeId) {
    final key = tryGetKey(nodeId);
    if (key == null) return false;

    void attempt(int triesLeft) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final viewerCtx = state.viewerKey.currentContext;
        if (viewerCtx == null) return;

        final viewerBox = viewerCtx.findRenderObject() as RenderBox?;
        if (viewerBox == null || !viewerBox.hasSize) return;

        final nodeCtx = key.currentContext;
        final nodeBox = nodeCtx?.findRenderObject() as RenderBox?;

        if (nodeCtx == null || nodeBox == null || !nodeBox.hasSize) {
          if (triesLeft > 0) attempt(triesLeft - 1);
          return;
        }

        // Node center in GLOBAL coords
        final nodeCenterGlobal =
            nodeBox.localToGlobal(nodeBox.size.center(Offset.zero));

        // Convert to VIEWPORT coords (relative to viewer)
        final viewerTopLeftGlobal = viewerBox.localToGlobal(Offset.zero);
        final nodeCenterInViewport = nodeCenterGlobal - viewerTopLeftGlobal;

        // Convert viewport -> scene using current transform
        final scenePoint = state.controller.toScene(nodeCenterInViewport);

        // Center that scene point with DEFAULT zoom
        final viewportCenter = viewerBox.size.center(Offset.zero);

        state.controller.value = Matrix4.identity()
          ..translate(viewportCenter.dx, viewportCenter.dy)
          ..scale(ZOOM_DEF)
          ..translate(-scenePoint.dx, -scenePoint.dy);
      });
    }

    attempt(2);
    return true;
  }

  void clearNodeKeys() => _nodeKeys.clear(); // call when tree changes / redraw

  Future<void> mapEventToState(
    DrawTreeEvent event,
    Emitter<DrawTreeState> emit,
  ) async {
    await event.map(
      initialized: (e) async {
        clearNodeKeys();
        final graph = treeDraw.drawTreeFromStore(
            rootId: e.rootId,
            store: e.store,
            maxGenerations: e.maxGenerations,
            isShowUnknown: e.isShowUnknown ?? true,
            context: e.context);
        emit(state.copyWith(graph: graph, builder: treeDraw.builder));
      },
      drawNewTree: (e) async {
        clearNodeKeys();
        final graph = treeDraw.drawTreeFromStore(
            rootId: e.rootId,
            store: e.store,
            maxGenerations: e.maxGenerations,
            isShowUnknown: e.isShowUnknown ?? true,
            context: e.context);
        emit(state.copyWith(graph: graph, builder: treeDraw.builder));
      },
    );
  }
}
