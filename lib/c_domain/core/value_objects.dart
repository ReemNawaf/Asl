// value object is class extended by EmailAddress and Password
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:asl/c_domain/core/errors.dart';
import 'package:asl/c_domain/core/failures.dart';
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

// ------------------------------------------------------------
// Helpers for using UniqueId as Map keys (normalized graph store)
// ------------------------------------------------------------
extension UniqueIdKeyX on UniqueId {
  /// Stable string key to use in Maps/Sets.
  /// (Uses the already-validated internal value)
  String asKey() => getOrCrash();
}

extension NullableUniqueIdKeyX on UniqueId? {
  /// Convenience for nullable UniqueId (often used in state).
  String? asKeyOrNull() => this?.getOrCrash();
}
