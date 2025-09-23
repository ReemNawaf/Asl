import 'package:firebase_auth/firebase_auth.dart';
import 'package:asl/c_domain/auth/user.dart';
import 'package:asl/c_domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  IdUser toDomain() {
    return IdUser(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
