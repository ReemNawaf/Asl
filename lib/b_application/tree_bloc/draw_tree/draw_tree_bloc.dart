import 'dart:async';
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
  void Function(Offset scenePoint, {double? scale})? navigateToScenePoint;
  GlobalKey? viewportKey;

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
    if (key == null || navigateToScenePoint == null || viewportKey == null) {
      return false;
    }

    void attempt(int triesLeft) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final nodeBox = key.currentContext?.findRenderObject() as RenderBox?;
        if (nodeBox == null || !nodeBox.hasSize) {
          if (triesLeft > 0) attempt(triesLeft - 1);
          return;
        }

        final viewerBox =
            viewportKey!.currentContext?.findRenderObject() as RenderBox?;
        if (viewerBox == null || !viewerBox.hasSize) return;

        final nodeCenterGlobal =
            nodeBox.localToGlobal(nodeBox.size.center(Offset.zero));
        final viewerTopLeft = viewerBox.localToGlobal(Offset.zero);
        final nodeInViewport = nodeCenterGlobal - viewerTopLeft;

        final scenePoint = state.controller.toScene(nodeInViewport);

        navigateToScenePoint!(scenePoint);
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
