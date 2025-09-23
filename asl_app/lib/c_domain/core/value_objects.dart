// value object is class extended by EmailAddress and Password
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:asl/c_domain/core/errors.dart';
import 'package:asl/c_domain/core/failures.dart';
import 'package:asl/c_domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;
  // if it's valid  give me the right side
  bool isValid() => value.isRight();

  /// Throw [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity same as (r) => r
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  // just to give us failure or unit
  //  dynamic; we just want to know if there is a failure
  //  when validating the whole entity
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((f) => left(f), (r) => right(unit));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

// Generating Unique Ids
class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  // First case: For Models except the user e.g. puchases
  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }
  // Second case: For the user model => This function return the user id from DB
  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}

class CategoryId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory CategoryId(String input) {
    return CategoryId._(

        //  1. category id is not empty
        validateStringNotEmpty(input));
  }

  const CategoryId._(this.value);
}

class Amount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  static const maxLength = 20;

  factory Amount(double input) {
    return Amount._(
        //  join 3 validators:
        //  1. the purchase title doesn't exceed the maximmum length
        validateMaxDoubleLength(input, maxLength)
            //  2. the purchase title is not empty
            .flatMap(validatdoubleNotEmptyAndNotZero));
  }

  const Amount._(this.value);
}

class Total extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  static const maxLength = 20;

  factory Total(double input) {
    return Total._(
        //  join 3 validators:
        //  1. the purchase title doesn't exceed the maximmum length
        validateMaxDoubleLength(input, maxLength)
            //  2. the purchase title is not empty
            .flatMap(validatdoubleNotEmpty));
  }

  const Total._(this.value);
}

class Vat extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  static const maxLength = 4;

  factory Vat(double input) {
    return Vat._(
        //  join 3 validators:
        //  1. the purchase title doesn't exceed the maximmum length
        validateMaxDoubleLength(input, maxLength)
            //  2. the purchase title is not empty
            .flatMap(validatdoubleNotEmpty));
  }

  const Vat._(this.value);
}
