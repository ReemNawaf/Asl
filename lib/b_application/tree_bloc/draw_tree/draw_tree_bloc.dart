import 'dart:async';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_draw.dart';
import 'package:bloc/bloc.dart';
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

  Future<void> mapEventToState(
    DrawTreeEvent event,
    Emitter<DrawTreeState> emit,
  ) async {
    await event.map(
      initialized: (e) async {
        final graph = treeDraw.drawTree(root: e.root);
        emit(DrawTreeState(graph: graph, builder: treeDraw.builder));
      },
      drawNewTree: (e) async {
        final graph = treeDraw.drawTree(root: e.root);
        emit(DrawTreeState(graph: graph, builder: treeDraw.builder));
        print('015 | drawNewTree');
      },
    );
  }
}
