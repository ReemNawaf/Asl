part of 'node_form_bloc.dart';

@freezed
abstract class NodeFormState with _$NodeFormState {
  const factory NodeFormState({
    required TNode node,
    required AutovalidateMode showErrorMessages,
    required int isEditing, // only for update existing ones
    required bool isSaving,
    required bool isViewing,
    required bool isAdding,
    required bool hasNode,
    required bool addPartner,
    required bool addChild,
    required int currentPanel,
    required Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NodeFormState;

  factory NodeFormState.initial() => NodeFormState(
        node: TNode.empty(),
        showErrorMessages: AutovalidateMode.disabled,

        // isEdtting = -1 means it's adding not editing
        isEditing: -1,

        // isSaving when saving the changes after editing
        isSaving: false,

        // TODO: isViewing
        isViewing: true,

        // TODO: isAdding
        isAdding: false,

        // TODO: hasNode
        hasNode: false,

        addPartner: false,
        addChild: false,
        currentPanel: 0,
        saveFailureOrSuccessOption: none(),
      );
}
