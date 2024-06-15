part of 'tree_form_bloc.dart';

@freezed
abstract class TreeFormEvent with _$TreeFormEvent {
  // for when editing the existed one, to have the previous data filled
  const factory TreeFormEvent.initialized(Option<Tree> initialTreeOption) =
      _Initialized;
  const factory TreeFormEvent.edited(Option<Tree> existingTreeOption) = _Edited;
  const factory TreeFormEvent.changeName(String title) = _TitleChanged;

  const factory TreeFormEvent.saved() = _Saved;
}
