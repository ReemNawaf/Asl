part of 'tree_draw_bloc.dart';

@freezed
abstract class TreeDrawState with _$TreeDrawState {
  const factory TreeDrawState.initial() = _Initial;

  const factory TreeDrawState.graphDrawn(
      Graph graph, BuchheimWalkerConfiguration builder) = _GraphDrawn;
}
