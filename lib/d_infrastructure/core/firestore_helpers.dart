import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:asl/c_domain/auth/i_auth_facade.dart';
import 'package:asl/c_domain/core/errors.dart';
import 'package:asl/injection.dart';
// In order to access the user id form IAuthFacade

// give the user Doc
extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  // for calling collection('categories') as better way of doing
  CollectionReference get treesCollection => collection('trees');
}
