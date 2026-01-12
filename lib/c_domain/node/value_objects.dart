import 'package:dartz/dartz.dart';
import 'package:asl/c_domain/core/failures.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/core/value_validators.dart';

class NodeId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory NodeId(String input) {
    return NodeId._(

        //  1. node id is not empty
        validateStringNotEmpty(input));
  }

  const NodeId._(this.value);
}

class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory FirstName(String input) {
    return FirstName._(
      //  join 4 validators:
      //  1. the first name doesn't exceed the maximmum length
      validateMaxStringLength(input, maxLength)

          //  2. the first name is not empty
          .flatMap(validateStringNotEmpty)

          // 3. the first name is larger than 3 char
          .flatMap(validateNameLength)

          // 4. the first name one single line
          .flatMap(validateSingleLine),
    );
  }

  static FirstName fromString(String name) {
    return FirstName(name.split(' ')[0]);
  }

  const FirstName._(this.value);
}
