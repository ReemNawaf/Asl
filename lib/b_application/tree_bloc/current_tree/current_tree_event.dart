part of 'current_tree_bloc.dart';

@freezed
abstract class CurrentTreeEvent with _$CurrentTreeEvent {
  // for when editing the existed one, to have the previous data filled
  const factory CurrentTreeEvent.initialized(
      {required Tree currentTree, required List<Tree> trees}) = _Initialized;
  const factory CurrentTreeEvent.updateCurrentTree({required Tree tree}) =
      _UpdateCurrentTree;

  const factory CurrentTreeEvent.updateCurrentRoot({required TNode node}) =
      _UpdateCurrentRoot;
  const factory CurrentTreeEvent.updateAllTree({required List<Tree> trees}) =
      _UpdateAllTree;
}
