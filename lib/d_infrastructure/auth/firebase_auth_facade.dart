import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:asl/c_domain/auth/auth_failure.dart';

import 'package:asl/c_domain/auth/i_auth_facade.dart';
import 'package:asl/c_domain/auth/user.dart';
import 'package:asl/c_domain/auth/value_objects.dart';
import 'package:asl/d_infrastructure/auth/firebase_user_mapper.dart';
import 'package:asl/d_infrastructure/auth/firestore_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

// to register IAuthFacade
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth? firebaseAuth;
  final GoogleSignIn? googleSignIn;
  // it's must be passed to it
  FirebaseAuthFacade({
    this.firebaseAuth,
    this.googleSignIn,
  });

  @override
  Future<Option<IdUser>> getSignedInUser() async {
    await Future.delayed(const Duration(milliseconds: 500));
    var firebaseUser = optionOf(firebaseAuth!.currentUser?.toDomain());
    // Another solution
    // final completer = Completer<firebase.User>();
    // firebase.auth().onAuthStateChanged.listen((firebase.User user) {
    //   completer.complete(user);
    // });
    // return completer.future;

    // if (firebaseUser == null) {
    //   final user = await firebaseAuth!.authStateChanges().first;
    //   firebaseUser = optionOf(user!.toDomain());
    // }
    return firebaseUser;
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      final authUserCredential =
          await firebaseAuth!.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      //  Adding a new user
      await createNewUserInFirstore(userCredential: authUserCredential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE' ||
          e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        // the general one
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await firebaseAuth!.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('auth', true);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      // For security purposes || or is used to check email and password as a compenation
      if ((e.code == 'wrong-password' ||
          e.code == 'invalid-credential' ||
          e.code == 'user-not-found')) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        // the general one
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithGoogle() async {
    try {
      final googleUser = await googleSignIn!.signIn();
      if (googleUser == null) {
        googleSignIn!.disconnect();
        return left(const AuthFailure.cancelledByUser());
      }
      GoogleAuthProvider googleProvider = GoogleAuthProvider();
      final UserCredential authUserCredential =
          await firebaseAuth!.signInWithPopup(googleProvider);

      if (!authUserCredential.additionalUserInfo!.isNewUser) {
        googleSignIn!.disconnect();
        return left(const AuthFailure.accountDoesExist());
      }
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('id', authUserCredential.user!.uid);
      prefs.setBool('auth', true);

      //  Adding a new user
      await createNewUserInFirstore(userCredential: authUserCredential);
      googleSignIn!.disconnect();
      return right(unit);
    } on FirebaseAuthException catch (_) {
      googleSignIn!.disconnect();
      return left(const AuthFailure.serverError());
    } catch (e) {
      googleSignIn!.disconnect();
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await googleSignIn!.signIn();
      if (googleUser == null) {
        googleSignIn!.disconnect();
        return left(const AuthFailure.cancelledByUser());
      }

      final email = googleUser.email;

      final signInMethods =
          await firebaseAuth!.fetchSignInMethodsForEmail(email);
      if (signInMethods.isEmpty) {
        googleSignIn!.disconnect();
        return left(const AuthFailure.accountDoesNotExist());
      }

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      final authUserCredential =
          await firebaseAuth!.signInWithCredential(credential);

      final prefs = await SharedPreferences.getInstance();
      prefs.setString('id', authUserCredential.user!.uid);
      prefs.setBool('auth', true);

      googleSignIn!.disconnect();
      return right(unit);
    } on FirebaseAuthException catch (_) {
      googleSignIn!.disconnect();
      return left(const AuthFailure.serverError());
    } catch (e) {
      googleSignIn!.disconnect();
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      googleSignIn!.signOut(),
      firebaseAuth!.signOut(),
    ])
      ..then((_) async {
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool('auth', false);
      });
  }
}
