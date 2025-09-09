part of 'node_form_bloc.dart';

@freezed
abstract class NodeFormState with _$NodeFormState {
  const factory NodeFormState({
    TNode? node,
    required AutovalidateMode showErrorMessages,
    required int isEditing, // only for update existing ones
    required bool isSaving,
    required bool addPartner,
    required bool addChild,
    required int currentPanel,
    required Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NodeFormState;

  factory NodeFormState.initial() => NodeFormState(
        showErrorMessages: AutovalidateMode.disabled,

        // isEdtting = -1 means it's adding not editing
        isEditing: -1,

        // isSaving when saving the changes after editing
        isSaving: false,

        addPartner: false,
        addChild: false,

        // currentPanel to keep track of which panel is opened
        currentPanel: 0,
        saveFailureOrSuccessOption: none(),
      );
}
