part of 'draw_tree_bloc.dart';

@freezed
abstract class DrawTreeEvent with _$DrawTreeEvent {
  // for when editing the existed one, to have the previous data filled
  const factory DrawTreeEvent.initialized(
      {required Tree tree, required List<TNode> nodes}) = _Initialized;
  const factory DrawTreeEvent.drawNewTree(
      {required Tree tree, required List<TNode> nodes}) = _DrawNewTree;
}
