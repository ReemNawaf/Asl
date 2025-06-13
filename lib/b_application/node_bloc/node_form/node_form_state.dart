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
    required int currentPanel,
    required Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NodeFormState;

  factory NodeFormState.initial() => NodeFormState(
        node: TNode.empty(),
        showErrorMessages: AutovalidateMode.disabled,
        isEditing: -1,
        isSaving: false,
        isViewing: true,
        isAdding: false,
        hasNode: false,
        currentPanel: 0,
        addPartner: false,
        saveFailureOrSuccessOption: none(),
      );
}
