part of 'partner_form_bloc.dart';

@freezed
abstract class PartnerFormState with _$PartnerFormState {
  const factory PartnerFormState({
    TNode? node,
    required TNode partner,
    required List<TNode> partnersList,
    Relation? relation,
    required List<Relation> relationsList,
    required AutovalidateMode showErrorMessages,
    required bool isSaving,
    required bool isAdding,
    required bool isEditing, // only for update existing ones
    required bool isViewing,
    required bool isCreated,
    required bool isPartnerById,
    required bool gettingPartnerNodeByIdInProgress,
    required Option<Either<RelationFailure, Unit>> saveFailureOrSuccessOption,
    required bool partnerNotExist,
  }) = _PartnerFormState;

  factory PartnerFormState.initial() => PartnerFormState(
        node: null,
        partner: TNode.empty(),
        partnersList: [],
        relation: null,
        relationsList: [],
        showErrorMessages: AutovalidateMode.disabled,
        isSaving: false,
        isAdding: false,
        isEditing: false,
        isPartnerById: false,
        isViewing: false,
        isCreated: false,
        gettingPartnerNodeByIdInProgress: false,
        partnerNotExist: false,
        saveFailureOrSuccessOption: none(),
      );
}
