part of 'node_form_bloc.dart';

@freezed
abstract class NodeFormState with _$NodeFormState {
  const factory NodeFormState({
    TNode? node,
    required AutovalidateMode showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required bool addPartner,
    required bool addChild,
    required int currentPanel,
    required Either<TNodeFailure, TNode>? saveFailureOrSuccessOption,
  }) = _NodeFormState;

  factory NodeFormState.initial() => const NodeFormState(
        showErrorMessages: AutovalidateMode.disabled,

        // is it editing or view
        isEditing: false,

        // isSaving when saving the changes after editing
        isSaving: false,

        addPartner: false,
        addChild: false,

        // currentPanel to keep track of which panel is opened
        currentPanel: 0,
        saveFailureOrSuccessOption: null,
      );
}
