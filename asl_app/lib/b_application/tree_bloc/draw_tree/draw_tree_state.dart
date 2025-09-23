part of 'draw_tree_bloc.dart';

@freezed
abstract class DrawTreeState with _$DrawTreeState {
  const factory DrawTreeState({
    Graph? graph,
    BuchheimWalkerConfiguration? builder,
  }) = _DrawTreeState;

  factory DrawTreeState.initial() {
    return const DrawTreeState();
  }
}
