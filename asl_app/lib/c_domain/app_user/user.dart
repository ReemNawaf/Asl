import 'package:asl/c_domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:asl/c_domain/app_user/value_objects.dart';
import 'package:asl/c_domain/core/failures.dart';

part 'user.freezed.dart';

@freezed
abstract class AppUser implements _$AppUser {
  const AppUser._();

  const factory AppUser({
    required UserName name,
    required UserAvater avater,
    required List<UniqueId> trees,
  }) = _AppUser;

  factory AppUser.empty() => AppUser(
        name: UserName(''),
        avater: UserAvater(UserAvater.userAvatars[0]),
        trees: [],
      );

  //  validating the whole entity
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
