import 'package:asl/c_domain/auth/i_auth_facade.dart';
import 'package:asl/c_domain/core/errors.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/tree/i_tree_repository.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_failure.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/node/node_dto.dart';
import 'package:asl/d_infrastructure/trees/tree_dtos.dart';
import 'package:asl/d_infrastructure/user/user_repository.dart';
import 'package:asl/injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

const String cTrees = 'trees';
const String cNodes = 'nodes';
const String cPermissionDeniedCp = 'PERMISSION_DENIED';
const String cPermissionDeniedSm = 'permission-denied';

const String cNotFoundSm = 'not-found';
const String cNotFoundCp = 'NOT_FOUND';

@LazySingleton(as: ITreeRepository)
class TreeRepository implements ITreeRepository {
  final FirebaseFirestore _firestore;

  TreeRepository(this._firestore);

  @override
  Future<Either<TreeFailure, List<Tree>>> watchAll() async {
    try {
      UserRepository userRepository = UserRepository(_firestore);
      final eitherAppUser = await userRepository.get();
      final appUser = eitherAppUser.fold((l) => null, (r) => r);

      final treeCol = _firestore.treesCollection();

      return right(appUser!.trees.map((treeId) {
        //
        final tree = treeCol.doc(treeId.getOrCrash()).get()
            as DocumentSnapshot<Map<String, dynamic>>;

        return TreeDto.fromFirestore(tree).toDomain();
      }).toList());
    } catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains(cPermissionDeniedCp) ||
              e.message!.contains(cPermissionDeniedSm))) {
        return left(const TreeFailure.insufficientPermission());
      } else {
        // log.error(e.toString());

        return left(const TreeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TreeFailure, Unit>> create(
      {required Tree tree, required TNode root}) async {
    try {
      final userOption = await getIt<IAuthFacade>().getSignedInUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());

      final userDoc = await _firestore.userDocument();
      final treesCol = _firestore.treesCollection();

      final treeDto = TreeDto.fromDomain(tree.copyWith(creatorId: user.id));
      final rootDto = NodeDto.fromDomain(root);

      //  Create Tree Doc
      await treesCol.doc(treeDto.treeId).set(treeDto.toJson());

      //  Create Root node doc
      await treesCol
          .doc(treeDto.treeId)
          .collection(cNodes)
          .doc(rootDto.nodeId)
          .set(rootDto.toJson());

      // Update user Doc with the new tree id
      await userDoc.update({
        cTrees: FieldValue.arrayUnion([tree.treeId.getOrCrash()])
      });

      return right(unit);
    } catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains(cPermissionDeniedCp) ||
              e.message!.contains(cPermissionDeniedSm))) {
        return left(const TreeFailure.insufficientPermission());
      } else {
        return left(const TreeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TreeFailure, Unit>> update(Tree tree) async {
    try {
      // final userDoc = await _firestore.userDocument();
      final treeDto = TreeDto.fromDomain(tree);
      await _firestore
          .treesCollection()
          .doc(treeDto.treeId)
          .update(treeDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains(cPermissionDeniedCp) ||
              e.message!.contains(cPermissionDeniedSm))) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e is FirebaseException &&
          (e.message!.contains(cNotFoundCp) ||
              e.message!.contains(cNotFoundSm))) {
        return left(const TreeFailure.unableToUpdate());
      } else {
        return left(const TreeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TreeFailure, Unit>> delete(
      {required UniqueId treeId, required UniqueId userId}) async {
    try {
      // TODO: Delete the tree id from th user doc
      // final userDoc = await _firestore.userDocument();

      await _firestore.treesCollection().doc(treeId.getOrCrash()).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains(cPermissionDeniedCp) ||
              e.message!.contains(cPermissionDeniedSm))) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e is FirebaseException &&
          (e.message!.contains(cNotFoundCp) ||
              e.message!.contains(cNotFoundSm))) {
        return left(const TreeFailure.unableToUpdate());
      } else {
        return left(const TreeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TreeFailure, Tree>> getTree(UniqueId treeId) async {
    try {
      final tree = await _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .get() as DocumentSnapshot<Map<String, dynamic>>;
      return right(TreeDto.fromFirestore(tree).toDomain());
    } catch (e) {
      if (e is FirebaseException &&
          (e.message!.contains(cPermissionDeniedCp) ||
              e.message!.contains(cPermissionDeniedSm))) {
        return left(const TreeFailure.insufficientPermission());
      } else {
        // log.error(e.toString());

        return left(const TreeFailure.unexpected());
      }
    }
  }
}
