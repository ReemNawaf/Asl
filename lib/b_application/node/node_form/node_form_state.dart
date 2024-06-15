part of 'node_form_bloc.dart';

@freezed
abstract class NodeFormState with _$NodeFormState {
  const factory NodeFormState({
    required TNode node,
    required AutovalidateMode showErrorMessages,
    required bool isEditing, // only for update existing ones
    required bool isSaving,
    required bool isViewing,
    required bool isAdding,
    required bool isMoving,
    required Option<Either<TNodeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NodeFormState;

  factory NodeFormState.initial() => NodeFormState(
        node: TNode.empty(),
        showErrorMessages: AutovalidateMode.disabled,
        isEditing: false,
        isSaving: false,
        isViewing: true,
        isAdding: false,
        isMoving: false,
        saveFailureOrSuccessOption: none(),
      );
}
