part of 'tree_draw_bloc.dart';

@freezed
abstract class TreeDrawEvent with _$TreeDrawEvent {
  const factory TreeDrawEvent.drawTree(
    Tree tree,
    List<TNode> nodes,
  ) = _DrawTree;
}
