part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  // check the user status
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  // log the user out
  const factory AuthEvent.singedOut() = SingedOut;
}
