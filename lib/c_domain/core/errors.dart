import 'package:asl/c_domain/core/failures.dart';
// error for the things that make the app crash
// errors are handled in domain layer

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError(this.valueFailure);

  // the error message that will be shown in the consle
  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    // to make sure the error will be displayed in any environment
    return Error.safeToString('$explanation\n Failure was: $valueFailure');
  }
}
