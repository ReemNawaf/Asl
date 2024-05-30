import 'package:dartz/dartz.dart';
import 'package:asl/c_domain/auth/auth_failure.dart';
import 'package:asl/c_domain/auth/user.dart';
import 'package:asl/c_domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<IdUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
