// import 'package:dartz/dartz.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:injectable/injectable.dart';
// import 'package:asl/c_domain/auth/auth_failure.dart';

// import 'package:asl/c_domain/auth/i_auth_facade.dart';
// import 'package:asl/c_domain/auth/user.dart';
// import 'package:asl/c_domain/auth/value_objects.dart';
// import 'package:asl/d_infrastructure/auth/firebase_user_mapper.dart';
// import 'package:asl/d_infrastructure/auth/firestore_user.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// // to register IAuthFacade
// @LazySingleton(as: IAuthFacade)
// class FirebaseAuthFacade implements IAuthFacade {
//   final FirebaseAuth? firebaseAuth;
//   final GoogleSignIn? googleSignIn;
//   // it's must be passed to it
//   FirebaseAuthFacade({
//     this.firebaseAuth,
//     this.googleSignIn,
//   });

//   @override
//   Future<Option<IdUser>> getSignedInUser() async {
//     await Future.delayed(const Duration(milliseconds: 500));
//     var firebaseUser = optionOf(firebaseAuth!.currentUser?.toDomain());
//     // Another solution
//     // final completer = Completer<firebase.User>();
//     // firebase.auth().onAuthStateChanged.listen((firebase.User user) {
//     //   completer.complete(user);
//     // });
//     // return completer.future;

//     // if (firebaseUser == null) {
//     //   final user = await firebaseAuth!.authStateChanges().first;
//     //   firebaseUser = optionOf(user!.toDomain());
//     // }
//     return firebaseUser;
//   }

//   @override
//   Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
//     required EmailAddress emailAddress,
//     required Password password,
//   }) async {
//     final emailAddressStr = emailAddress.getOrCrash();
//     final passwordStr = password.getOrCrash();

//     try {
//       final authUserCredential =
//           await firebaseAuth!.createUserWithEmailAndPassword(
//         email: emailAddressStr,
//         password: passwordStr,
//       );

//       //  Adding a new user
//       await createNewUserInFirstore(userCredential: authUserCredential);

//       return right(unit);
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE' ||
//           e.code == 'email-already-in-use') {
//         return left(const AuthFailure.emailAlreadyInUse());
//       } else {
//         // the general one
//         return left(const AuthFailure.serverError());
//       }
//     }
//   }

//   @override
//   Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
//     required EmailAddress emailAddress,
//     required Password password,
//   }) async {
//     final emailAddressStr = emailAddress.getOrCrash();
//     final passwordStr = password.getOrCrash();

//     try {
//       await firebaseAuth!.signInWithEmailAndPassword(
//         email: emailAddressStr,
//         password: passwordStr,
//       );

//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setBool('auth', true);

//       return right(unit);
//     } on FirebaseAuthException catch (e) {
//       print(e.code);
//       // For security purposes || or is used to check email and password as a compenation
//       if ((e.code == 'invalid-credential')) {
//         return left(const AuthFailure.invalidEmailAndPasswordCombination());
//       } else {
//         // the general one
//         return left(const AuthFailure.serverError());
//       }
//     }
//   }

//   @override
//   Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
//     try {
//       // 1.
//       final googleUser = await googleSignIn!.signIn();

//       if (googleUser == null) {
//         return left(const AuthFailure.cancelledByUser());
//       }
//       // 2. For FirebaseAuth,
//       final googleAuthentication = await googleUser.authentication;
//       // 3. For FirebaseFirestore (credential),
//       final authCredential = GoogleAuthProvider.credential(
//         idToken: googleAuthentication.idToken,
//         accessToken: googleAuthentication.accessToken,
//       );
//       // 4.
//       final authUserCredential =
//           await firebaseAuth!.signInWithCredential(authCredential);
//       if (authUserCredential.additionalUserInfo!.isNewUser) {
//         //  Adding a new user
//         await createNewUserInFirstore(userCredential: authUserCredential);
//       }

//       final prefs = await SharedPreferences.getInstance();
//       prefs.setString('id', authUserCredential.user!.uid);
//       prefs.setBool('auth', true);
//       return right(unit);
//     } on FirebaseAuthException catch (_) {
//       return left(const AuthFailure.serverError());
//     } catch (e) {
//       return left(const AuthFailure.serverError());
//     }
//   }

//   @override
//   Future<void> signOut() {
//     return Future.wait([
//       googleSignIn!.signOut(),
//       firebaseAuth!.signOut(),
//     ])
//       ..then((_) async {
//         final prefs = await SharedPreferences.getInstance();
//         prefs.setBool('auth', false);
//       });
//   }
// }
