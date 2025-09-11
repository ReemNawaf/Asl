part of 'partner_form_bloc.dart';

@freezed
abstract class PartnerFormState with _$PartnerFormState {
  const factory PartnerFormState({
    TNode? node,
    required TNode partner,
    required List<TNode> partnersList,
    Relation? relation,
    required List<Relation> relationsList,
    required List<UniqueId> deletedPartners,
    required List<UniqueId> deletedRelations,
    required AutovalidateMode showErrorMessages,
    required bool isSaving,
    required bool isAdding,
    required bool isEditing, // only for update existing ones
    required bool isViewing,
    required bool isCreated,
    required bool isPartnerById,
    required bool gettingPartnerNodeByIdInProgress,
    bool? partnerNotExist,
    required Option<Either<RelationFailure, Unit>> saveFailureOrSuccessOption,
  }) = _PartnerFormState;

  factory PartnerFormState.initial() => PartnerFormState(
        node: null,
        partner: TNode.empty(),
        partnersList: [],
        relation: null,
        relationsList: [],
        deletedPartners: [],
        deletedRelations: [],
        showErrorMessages: AutovalidateMode.disabled,
        isSaving: false,
        isAdding: false,
        isEditing: false,
        isPartnerById: false,
        isViewing: false,
        isCreated: false,
        gettingPartnerNodeByIdInProgress: false,
        saveFailureOrSuccessOption: none(),
      );
}
