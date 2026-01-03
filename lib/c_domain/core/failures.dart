import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

// General Failure
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  // all failure here in single class;
  //  in case we needed to handle two failures at the same time

  // Category Failures:-
  // 1. Length => defined the max
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;

  // 2. Must has a name => Not Empty
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  // Purchase Failures:-
  // 1. not multiple lines => one line
  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;

  // App list not greater than 1000
  // const factory ValueFailure.listTooLong({
  //   required T failedValue,
  //   required int max,
  // }) = ListTooLong<T>;

  // Sign In Failures:-
  // 1. invalid email => not email expression
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  // 2. short password or empty
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.spacedName({
    required T failedValue,
  }) = SpacedFirstName<T>;

  const factory ValueFailure.shortName({
    required T failedValue,
  }) = ShortFirstName<T>;
}

/* It could be done this way, making a union for each failure
  @freezed
  abstract class ValueFailure<T> with _$ValueFailure<T> {
    const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
    const factory ValueFailure.category(AuthValueFailure<T> f) = _Category<T>;
  }

  // Auth Failure
  @freezed
  abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
    const factory AuthValueFailure.invalidEmail({
      required T failedValue,
    }) = InvalidEmail<T>;
    const factory AuthValueFailure.shortPassword({
      required T failedValue,
    }) = ShortPassword<T>;
  }
*/
