part of 'partner_form_bloc.dart';

@freezed
abstract class PartnerFormEvent with _$PartnerFormEvent {
  const factory PartnerFormEvent.initialized(TNode node) = _Initialized;

  const factory PartnerFormEvent.edited(TNode partner) = _Edited;
  const factory PartnerFormEvent.changeName(String name) = _ChangedName;

  const factory PartnerFormEvent.changeMarriageDate(DateTime? date) =
      _ChangeMarriageDate;
  const factory PartnerFormEvent.changeRelationEndDate(DateTime? date) =
      _ChangeRelationEndDate;

  const factory PartnerFormEvent.changeMarriageStatus(MarriageStatus status) =
      _ChangeMarriageStatus;

  const factory PartnerFormEvent.saved() = _Saved;
}
