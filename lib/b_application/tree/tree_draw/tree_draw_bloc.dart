import 'dart:async';

import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_draw.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphview/GraphView.dart';
import 'package:injectable/injectable.dart';

part 'tree_draw_event.dart';
part 'tree_draw_state.dart';
part 'tree_draw_bloc.freezed.dart';

@injectable
class TreeDrawBloc extends Bloc<TreeDrawEvent, TreeDrawState> {
  // link it to domain layer
  TreeDraw treeDraw = TreeDraw();

  TreeDrawBloc() : super(const TreeDrawState.initial()) {
    on<TreeDrawEvent>(mapEventToState);
  }

  Future<void> mapEventToState(
    TreeDrawEvent event,
    Emitter<TreeDrawState> emit,
  ) async {
    event.map(
      drawTree: (e) => emit(TreeDrawState.graphDrawn(
          treeDraw.drawTree(tree: e.tree, nodes: e.nodes), treeDraw.builder)),
    );
  }
}
