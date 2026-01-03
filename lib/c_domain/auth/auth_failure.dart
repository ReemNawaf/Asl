// Failures specific to auth process
// possible failure scenarios
// 1. Third part (Google) taps out
// 2. server Error: Error form the server side
// 3. email Already In Use: User try to register with an existing email
// 4. invalid Email And Password Combination: either email anddress or password is wrong

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;

  const factory AuthFailure.accountDoesNotExist() = AccountDoesNotExist;
  const factory AuthFailure.accountDoesExist() = AccountDoesExist;
  const factory AuthFailure.networkError() = NetworkError;

  const factory AuthFailure.unexpected() = _Unexpected;
  const factory AuthFailure.insufficientPermission() = _InsufficientPermission;
  const factory AuthFailure.unableToUpdate() = _UnableToUpdate;
}
