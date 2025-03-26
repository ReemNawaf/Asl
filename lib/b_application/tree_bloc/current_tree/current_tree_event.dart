part of 'current_tree_bloc.dart';

@freezed
abstract class CurrentTreeEvent with _$CurrentTreeEvent {
  // for when editing the existed one, to have the previous data filled
  const factory CurrentTreeEvent.initialized(
      {required Tree currentTree, required List<Tree> trees}) = _Initialized;
  const factory CurrentTreeEvent.updated({required Tree currentTree}) =
      _Updated;

  const factory CurrentTreeEvent.updateAllTree({required List<Tree> trees}) =
      _UpdateAllTree;
}
