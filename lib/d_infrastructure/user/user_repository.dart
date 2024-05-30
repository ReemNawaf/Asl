// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter/services.dart';
// import 'package:injectable/injectable.dart';
// import 'package:asl/c_domain/app_user/i_user_repo.dart';
// import 'package:asl/c_domain/app_user/user.dart';
// import 'package:asl/c_domain/app_user/user_failure.dart';
// import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
// import 'package:asl/d_infrastructure/user/app_user_dto.dart';

// @LazySingleton(as: IUserRepository)
// class UserRepository implements IUserRepository {
//   final FirebaseFirestore _firestore;

//   UserRepository(this._firestore);

//   @override
//   Stream<Either<UserFailure, AppUser>> get() async* {
//     // using helpers and extensions

//     final userDocRef = await _firestore.userDocument();
//     final userDoc = userDocRef.snapshots()
//         as Stream<DocumentSnapshot<Map<String, dynamic>>>;

//     yield* userDoc
//         .map((doc) => right<UserFailure, AppUser>(
//             AppUserDto.fromFirestore(doc).toDomain()))
//         .handleError((e) {
//       if (e is FirebaseException &&
//           (e.message!.contains('PERMISSION_DENIED') ||
//               e.message!.contains('permission-denied'))) {
//         return left(const UserFailure.insufficientPermission());
//       } else {
//         return left(const UserFailure.unexpected());
//       }
//     });
//   }

//   @override
//   Future<Either<UserFailure, Unit>> create() async {
//     final user = AppUser.empty();
//     try {
//       final userDocRef = await _firestore.userDocument();
//       final appUserDto = AppUserDto.fromDomain(user);

//       await userDocRef.set(appUserDto.toJson());

//       return right(unit);
//     } on PlatformException catch (e) {
//       if (e is FirebaseException &&
//           (e.message!.contains('PERMISSION_DENIED') ||
//               e.message!.contains('permission-denied'))) {
//         return left(const UserFailure.insufficientPermission());
//       } else {
//         return left(const UserFailure.unexpected());
//       }
//     }
//   }

//   @override
//   Future<Either<UserFailure, Unit>> update(AppUser user) async {
//     try {
//       final userDocRef = await _firestore.userDocument();
//       final appUserDto = AppUserDto.fromDomain(user);

//       await userDocRef.update(appUserDto.toJson());

//       return right(unit);
//     } on PlatformException catch (e) {
//       if (e is FirebaseException &&
//           (e.message!.contains('PERMISSION_DENIED') ||
//               e.message!.contains('permission-denied'))) {
//         return left(const UserFailure.insufficientPermission());
//       } else if (e is FirebaseException &&
//           (e.message!.contains('NOT_FOUND') ||
//               e.message!.contains('not-found'))) {
//         return left(const UserFailure.unableToUpdate());
//       } else {
//         return left(const UserFailure.unexpected());
//       }
//     }
//   }

//   @override
//   Future<Either<UserFailure, Unit>> delete(AppUser user) async {
//     try {
//       final userDocRef = await _firestore.userDocument();

//       await userDocRef.delete();

//       return right(unit);
//     } on PlatformException catch (e) {
//       if (e is FirebaseException &&
//           (e.message!.contains('PERMISSION_DENIED') ||
//               e.message!.contains('permission-denied'))) {
//         return left(const UserFailure.insufficientPermission());
//       } else if (e is FirebaseException &&
//           (e.message!.contains('NOT_FOUND') ||
//               e.message!.contains('not-found'))) {
//         return left(const UserFailure.unableToUpdate());
//       } else {
//         return left(const UserFailure.unexpected());
//       }
//     }
//   }
// }
