import 'package:asl/c_domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:asl/c_domain/core/failures.dart';
import 'package:asl/c_domain/core/value_objects.dart';

class TreeName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 15;

  factory TreeName(String input) {
    return TreeName._(
      //  join 3 validators:
      //  1. the tree name doesn't exceed the maximmum length
      validateMaxStringLength(input, maxLength)
          //  2. the tree name is not empty
          .flatMap(validateStringNotEmpty)
          // 3. the tree name one single line
          .flatMap(validateSingleLine),
    );
  }

  const TreeName._(this.value);
}

class TreeId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory TreeId(String input) {
    return TreeId._(

        //  1. tree id is not empty
        validateStringNotEmpty(input));
  }

  const TreeId._(this.value);
}

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 15;

  factory FullName(String input) {
    return FullName._(
      //  join 4 validators:
      //  1. the first name doesn't exceed the maximmum length
      validateMaxStringLength(input, maxLength)

          //  2. the first name is not empty
          .flatMap(validateStringNotEmpty)

          // 3. the first name is larger than 3 char
          .flatMap(validateFirstNameLength)

          // 4. the first name one single line
          .flatMap(validateSingleLine),
    );
  }

  const FullName._(this.value);
}
