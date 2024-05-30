import 'package:dartz/dartz.dart';
import 'package:asl/c_domain/core/failures.dart';

// Considered to be more of a general validation of any String:-
// 1. For Gategory name to not exceed the allowed length
Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    // pass the max allowed and the actual input, to knew the what's the failure
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<double>, double> validateMaxDoubleLength(
  double input,
  int maxLength,
) {
  if (input.toString().length <= maxLength) {
    return right(input);
  } else {
    // pass the max allowed and the actual input, to knew the what's the failure
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

// 2. For Gategory name to not be empty
Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validatdoubleNotEmptyAndNotZero(
    double input) {
  if (input > 0.000000) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validatdoubleNotEmpty(double input) {
  if (input >= 0.000000) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

// 3. For Purchase name to not exceed on single line
Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

// App list not greater than 1000
// Either<ValueFailure<List<T>>, List<T>> validateMaxListLength<T>(
//   List<T> input,
//   int maxLength,
// ) {
//   if (input.length <= maxLength) {
//     return right(input);
//   } else {
//     return left(ValueFailure.listTooLong(
//       failedValue: input,
//       max: maxLength,
//     ));
//   }
// }

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  // check the email expression
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // we can make it more complex by checking if there is lower and upper case letters
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
