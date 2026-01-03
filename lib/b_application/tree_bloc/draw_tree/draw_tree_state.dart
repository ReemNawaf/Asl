part of 'draw_tree_bloc.dart';

@freezed
abstract class DrawTreeState with _$DrawTreeState {
  const factory DrawTreeState({
    Graph? graph,
    BuchheimWalkerConfiguration? builder,
    required TransformationController controller,
    required GlobalKey viewerKey,
  }) = _DrawTreeState;

  factory DrawTreeState.initial() {
    return DrawTreeState(
      controller: TransformationController(),
      viewerKey: GlobalKey(),
    );
  }
}
