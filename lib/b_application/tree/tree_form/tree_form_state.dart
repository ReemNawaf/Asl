part of 'tree_form_bloc.dart';

@freezed
abstract class TreeFormState with _$TreeFormState {
  const factory TreeFormState({
    required Tree tree,
    required AutovalidateMode showErrorMessages,
    required bool isEditing, // only for update existing ones
    required bool isSaving,
    required bool isViewing,
    required Option<Either<TreeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _TreeFormState;

  factory TreeFormState.initial() => TreeFormState(
        tree: Tree.empty(),
        showErrorMessages: AutovalidateMode.disabled,
        isEditing: false,
        isSaving: false,
        isViewing: true,
        saveFailureOrSuccessOption: none(),
      );
}
