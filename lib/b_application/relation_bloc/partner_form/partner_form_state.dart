part of 'partner_form_bloc.dart';

@freezed
abstract class PartnerFormState with _$PartnerFormState {
  const factory PartnerFormState({
    TNode? node,
    TNode? partner,
    Relation? relation,
    required AutovalidateMode showErrorMessages,
    required bool isSaving,
    required bool isAdding,
    required bool isEditing, // only for update existing ones
    required bool isViewing,
    required bool isCreated,
    required Option<Either<RelationFailure, Unit>> saveFailureOrSuccessOption,
  }) = _PartnerFormState;

  factory PartnerFormState.initial() => PartnerFormState(
        node: null,
        partner: null,
        relation: null,
        showErrorMessages: AutovalidateMode.disabled,
        isSaving: false,
        isAdding: false,
        saveFailureOrSuccessOption: none(),
        isEditing: false,
        isViewing: false,
        isCreated: false,
      );
}
