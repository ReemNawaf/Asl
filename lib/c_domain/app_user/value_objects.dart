import 'package:dartz/dartz.dart';
import 'package:asl/c_domain/core/failures.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/core/value_validators.dart';

class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 16;

  factory UserName(String input) {
    return UserName._(
      //  join 2 validators:
      //  1. the category name doesn't exceed the maximmum length
      //  2. the category name is not empty, by FlatMaping the received input and then pass it to validators
      validateMaxStringLength(input, maxLength),
    );
  }

  const UserName._(this.value);
}

class UserAvater extends ValueObject<String> {
  static List<String> userAvatars = [
    'assets/profile_avatar/profile_avatar_1.png',
    'assets/profile_avatar/profile_avatar_2.png',
    'assets/profile_avatar/profile_avatar_3.png',
    'assets/profile_avatar/profile_avatar_4.png',
    'assets/profile_avatar/profile_avatar_5.png',
    'assets/profile_avatar/profile_avatar_6.png',
    'assets/profile_avatar/profile_avatar_7.png',
    'assets/profile_avatar/profile_avatar_8.png',
    'assets/profile_avatar/profile_avatar_9.png',
    'assets/profile_avatar/profile_avatar_10.png',
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory UserAvater(String input) {
    return UserAvater._(
      right(input),
    );
  }

  const UserAvater._(this.value);
}
