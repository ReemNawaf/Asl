import 'package:dartz/dartz.dart';
import 'package:asl/c_domain/app_user/user.dart';
import 'package:asl/c_domain/app_user/user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, AppUser>> get();
  Future<Either<UserFailure, Unit>> create();
  Future<Either<UserFailure, Unit>> update(AppUser user);
  Future<Either<UserFailure, Unit>> delete(AppUser user);
}
