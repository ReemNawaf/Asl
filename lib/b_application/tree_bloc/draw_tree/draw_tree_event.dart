part of 'draw_tree_bloc.dart';

@freezed
abstract class DrawTreeEvent with _$DrawTreeEvent {
  // for when editing the existed one, to have the previous data filled
  const factory DrawTreeEvent.initialized({
    int? maxGenerations,
    bool? isShowUnknown,
    required TreeGraphStore store,
    required UniqueId rootId,
    required BuildContext context,
  }) = _Initialized;
  const factory DrawTreeEvent.drawNewTree({
    int? maxGenerations,
    bool? isShowUnknown,
    required TreeGraphStore store,
    required UniqueId rootId,
    required BuildContext context,
  }) = _DrawNewTree;
}
