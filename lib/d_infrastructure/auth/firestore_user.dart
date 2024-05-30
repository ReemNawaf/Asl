// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dartz/dartz.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/services.dart';
// import 'package:asl/c_domain/app_user/user.dart';
// import 'package:asl/c_domain/app_user/user_failure.dart';
// import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
// import 'package:asl/d_infrastructure/user/app_user_dto.dart';

// Future<Either<UserFailure, Unit>> createNewUserInFirstore(
//     {required UserCredential userCredential}) async {
//   final _firestore = FirebaseFirestore.instance;
//   final user = AppUser.empty();
//   try {
//     final userDocRef = await _firestore.userDocument();
//     final appUserDto = AppUserDto.fromDomain(user);

//     await userDocRef.set(appUserDto.toJson());
//     //  SENDING a welcoming & verification Email
//     await userCredential.user?.sendEmailVerification();
//     return right(unit);
//   } on PlatformException catch (e) {
//     if (e is FirebaseException &&
//         (e.message!.contains('PERMISSION_DENIED') ||
//             e.message!.contains('permission-denied'))) {
//       return left(const UserFailure.insufficientPermission());
//     } else {
//       return left(const UserFailure.unexpected());
//     }
//   }
// }
