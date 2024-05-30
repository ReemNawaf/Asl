part of 'user_watcher_bloc.dart';

@freezed
class UserWatcherEvent with _$UserWatcherEvent {
  const factory UserWatcherEvent.getStarted() = _GetStarted;
  const factory UserWatcherEvent.userReceived(
    Either<UserFailure, AppUser> failureOrUser,
  ) = _UserReceived;
}
