part of 'zoom_tree_bloc.dart';

abstract class ZoomTreeEvent extends Equatable {
  const ZoomTreeEvent();
}

class ZoomTreeChanged extends ZoomTreeEvent {
  final double scale;

  const ZoomTreeChanged(this.scale);

  @override
  List<Object?> get props => [scale];
}
