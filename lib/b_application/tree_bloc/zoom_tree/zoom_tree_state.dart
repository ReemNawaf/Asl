part of 'zoom_tree_bloc.dart';

class ZoomTreeState extends Equatable {
  final double scale;

  const ZoomTreeState({required this.scale});

  @override
  List<Object?> get props => [scale];
}

const MIN_ZOOM = 0.15;
const MAX_ZOOM = 2.25;
