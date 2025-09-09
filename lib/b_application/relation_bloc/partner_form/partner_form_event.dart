part of 'partner_form_bloc.dart';

@freezed
abstract class PartnerFormEvent with _$PartnerFormEvent {
  const factory PartnerFormEvent.addPartner(TNode node) = _AddPartner;

  const factory PartnerFormEvent.edited(TNode partner) = _Edited;
  const factory PartnerFormEvent.changeName(String name) = _ChangedName;
  const factory PartnerFormEvent.addPartnerByNodeId(UniqueId id) =
      _AddPartnerByNodeId;
  const factory PartnerFormEvent.showPartnerByNodeId(bool isAdding) =
      _ShowPartnerByNodeId;

  const factory PartnerFormEvent.changeMarriageDate(DateTime? date) =
      _ChangeMarriageDate;
  const factory PartnerFormEvent.changeRelationEndDate(DateTime? date) =
      _ChangeRelationEndDate;

  const factory PartnerFormEvent.changeMarriageStatus(MarriageStatus status) =
      _ChangeMarriageStatus;

  const factory PartnerFormEvent.addPartnertoList() = _AddPartnertoList;
  const factory PartnerFormEvent.saved() = _Saved;
}
