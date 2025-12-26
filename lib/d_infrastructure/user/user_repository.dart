import 'package:asl/a_presentation/a_shared/strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:asl/c_domain/app_user/i_user_repo.dart';
import 'package:asl/c_domain/app_user/user.dart';
import 'package:asl/c_domain/app_user/user_failure.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/user/app_user_dto.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseFirestore _firestore;

  UserRepository(this._firestore);

  @override
  Future<Either<UserFailure, AppUser>> get() async {
    // using helpers and extensions

    try {
      final userDocRef = await _firestore.userDocument();
      final userDoc =
          await userDocRef.get() as DocumentSnapshot<Map<String, dynamic>>;
      return right<UserFailure, AppUser>(
          AppUserDto.fromFirestore(userDoc).toDomain());
    } catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains(PERMISSION_DENIED_CP) ||
              e.message!.contains(PERMISSION_DENIED_SM))) {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> create() async {
    final user = AppUser.empty();
    try {
      final userDocRef = await _firestore.userDocument();
      final appUserDto = AppUserDto.fromDomain(user);

      await userDocRef.set(appUserDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains(PERMISSION_DENIED_CP) ||
              e.message!.contains(PERMISSION_DENIED_SM))) {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(AppUser user) async {
    try {
      final userDocRef = await _firestore.userDocument();
      final appUserDto = AppUserDto.fromDomain(user);

      await userDocRef.update(appUserDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains(PERMISSION_DENIED_CP) ||
              e.message!.contains(PERMISSION_DENIED_SM))) {
        return left(const UserFailure.insufficientPermission());
      } else if (e is FirebaseException &&
          (e.message!.contains(NOT_FOUND_CP) ||
              e.message!.contains('not-found'))) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> delete(AppUser user) async {
    try {
      final userDocRef = await _firestore.userDocument();

      await userDocRef.delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains(PERMISSION_DENIED_CP) ||
              e.message!.contains(PERMISSION_DENIED_SM))) {
        return left(const UserFailure.insufficientPermission());
      } else if (e is FirebaseException &&
          (e.message!.contains(NOT_FOUND_CP) ||
              e.message!.contains('not-found'))) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }
}
