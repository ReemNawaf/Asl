import 'package:asl/a_presentation/a_shared/strings.dart';
import 'package:asl/c_domain/auth/i_auth_facade.dart';
import 'package:asl/c_domain/core/errors.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/local_tree_views/tree_graph_data.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/node/t_node_failure.dart';
import 'package:asl/c_domain/relation/relation.dart';
import 'package:asl/c_domain/tree/i_tree_repository.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_failure.dart';
import 'package:asl/c_domain/tree/tree_settings.dart';
import 'package:asl/d_infrastructure/core/firestore_helpers.dart';
import 'package:asl/d_infrastructure/node/node_dto.dart';
import 'package:asl/d_infrastructure/relation/relation_dto.dart';
import 'package:asl/d_infrastructure/trees/tree_dtos.dart';
import 'package:asl/d_infrastructure/user/user_repository.dart';
import 'package:asl/injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

const String NODES_COLLECTION = 'nodes';
const String RELATIONS_COLLECTION = 'relations';

@LazySingleton(as: ITreeRepository)
class TreeRepository implements ITreeRepository {
  final FirebaseFirestore _firestore;

  TreeRepository(this._firestore);

  @override
  Future<Either<TreeFailure, List<Tree>>> getAll() async {
    try {
      final userRepository = UserRepository(_firestore);

      final appUserEither = await userRepository.get();

      return await appUserEither.fold(
        (failure) async => left(const TreeFailure.unexpected()),
        (appUser) async {
          final treeCol = _firestore.treesCollection();

          // Fetch all trees in parallel
          final treeDocs = await Future.wait(
            appUser.trees.map(
              (treeId) => treeCol.doc(treeId.getOrCrash()).get(),
            ),
          );

          final trees = treeDocs
              .where((doc) => doc.exists)
              .map((doc) => TreeDto.fromFirestore(
                    doc as DocumentSnapshot<Map<String, dynamic>>,
                  ).toDomain())
              .toList();

          print('trees $trees');
          return right(trees);
        },
      );
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TreeFailure.unableToUpdate());
      }
      return left(const TreeFailure.unexpected());
    } catch (_) {
      return left(const TreeFailure.unexpected());
    }
  }

  @override
  Future<Either<TNodeFailure, TNode>> getNode({
    required UniqueId treeId,
    required UniqueId nodeId,
  }) async {
    try {
      final doc = await _firestore
          .treesCollection()
          .doc(treeId.getOrCrash())
          .collection(NODES_COLLECTION)
          .doc(nodeId.getOrCrash())
          .get();

      if (!doc.exists || doc.data() == null) {
        return left(const TNodeFailure.nodeNotExist());
      }

      return right(TNodeDto.fromFirestore(doc).toDomain());
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TNodeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TNodeFailure.unableToUpdate());
      }
      return left(const TNodeFailure.unexpected());
    } catch (_) {
      return left(const TNodeFailure.unexpected());
    }
  }

  @override
  Future<Either<TreeFailure, TreeGraphData>> getTreeGraph({
    required UniqueId treeId,
  }) async {
    try {
      final treeDoc = _firestore.treesCollection().doc(treeId.asKey());

      // Fetch both subcollections in parallel
      final results = await Future.wait([
        treeDoc.collection(NODES_COLLECTION).get(),
        treeDoc.collection(RELATIONS_COLLECTION).get(),
      ]);

      final nodesSnap = results[0];
      final relationsSnap = results[1];

      // Convert Firestore docs -> DTO -> Domain
      final nodes = nodesSnap.docs
          .map((d) => TNodeDto.fromFirestore(d).toDomain())
          .toList();

      final relations = relationsSnap.docs
          .map((d) => RelationDto.fromFirestore(d).toDomain())
          .toList();

      return right((nodes: nodes, relations: relations));
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TreeFailure.unableToUpdate());
      }
      return left(const TreeFailure.unexpected());
    } catch (_) {
      return left(const TreeFailure.unexpected());
    }
  }

  @override
  Future<Either<TNodeFailure, TNode>> getTreeNodes({
    required UniqueId treeId,
    required UniqueId rootId,
  }) async {
    try {
      final visited = <String>{};

      final result = await _loadNodeRecursively(
        treeId: treeId,
        nodeId: rootId,
        visited: visited,
      );

      return right(result);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TNodeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TNodeFailure.unableToUpdate());
      }
      return left(const TNodeFailure.unexpected());
    } catch (_) {
      return left(const TNodeFailure.unexpected());
    }
  }

  //  RECURSIVE LOADER FUNCTION
  Future<TNode> _loadNodeRecursively({
    required UniqueId treeId,
    required UniqueId nodeId,
    required Set<String> visited,
  }) async {
    final nodeKey = nodeId.getOrCrash();

    // Prevent infinite loops
    if (visited.contains(nodeKey)) {
      return (await getNode(treeId: treeId, nodeId: nodeId))
          .getOrElse(() => throw Exception("Node not found"));
    }

    visited.add(nodeKey);

    // Load this node
    final eitherNode = await getNode(treeId: treeId, nodeId: nodeId);
    final node = eitherNode.getOrElse(() => throw Exception("Node not found"));

    // Load relations
    final relations = await _loadRelations(treeId, node.relations);

    final updatedRelations = <Relation>[];

    for (final relation in relations) {
      // Partner
      final partnerId =
          relation.father == node.nodeId ? relation.mother : relation.father;

      final partner = await _loadPartnerSafely(
        treeId,
        relation.partnerTreeId,
        partnerId,
      );

      // Children
      final children = <TNode>[];

      for (final childId in relation.children) {
        final childNode = await _loadNodeRecursively(
          treeId: treeId,
          nodeId: childId,
          visited: visited,
        );
        children.add(childNode);
      }

      updatedRelations.add(
        relation.copyWith(
          partnerNode: partner,
          childrenNodes: children,
        ),
      );
    }

    return node.copyWith(relationsObject: updatedRelations);
  }

  //  HELPERS
  Future<List<Relation>> _loadRelations(
      UniqueId treeId, List<UniqueId> relationIds) async {
    final col = _firestore.treesCollection();
    final list = <Relation>[];
    for (final id in relationIds) {
      final doc = await col
          .doc(treeId.getOrCrash())
          .collection(RELATIONS_COLLECTION)
          .doc(id.getOrCrash())
          .get();
      list.add(RelationDto.fromFirestore(doc).toDomain());
    }
    return list;
  }

  Future<TNode?> _loadPartnerSafely(
      UniqueId rootTreeId, UniqueId partnerTreeId, UniqueId partnerId) async {
    final either = await getNode(treeId: partnerTreeId, nodeId: partnerId);
    return either.fold((_) => null, (r) => r);
  }

  @override
  Future<Either<TreeFailure, Unit>> create({
    required Tree tree,
    required TNode root,
  }) async {
    try {
      final authFacade = getIt<IAuthFacade>();
      final userOption = await authFacade.getSignedInUser();
      final user = userOption.getOrElse(
        () => throw NotAuthenticatedError(),
      );

      final userDoc = await _firestore.userDocument();
      final treeDto = TreeDto.fromDomain(
        tree.copyWith(creatorId: user.id),
      );

      final treesCol = _firestore.treesCollection();
      final rootDto = TNodeDto.fromDomain(root);

      // Create Tree document
      await treesCol.doc(treeDto.treeId).set(treeDto.toJson());

      // Create Root Node document
      await treesCol
          .doc(treeDto.treeId)
          .collection(NODES)
          .doc(rootDto.nodeId)
          .set(rootDto.toJson());

      // Update User document with treeId
      await userDoc.update({
        TREES: FieldValue.arrayUnion([treeDto.treeId]),
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TreeFailure.unableToUpdate());
      }
      return left(const TreeFailure.unexpected());
    } catch (_) {
      return left(const TreeFailure.unexpected());
    }
  }

  @override
  Future<Either<TreeFailure, Tree>> get(UniqueId treeId) async {
    try {
      final doc =
          await _firestore.treesCollection().doc(treeId.getOrCrash()).get();

      if (!doc.exists || doc.data() == null) {
        return left(const TreeFailure.unableToUpdate());
      }

      final tree = TreeDto.fromFirestore(
        doc as DocumentSnapshot<Map<String, dynamic>>,
      ).toDomain();

      return right(tree);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TreeFailure.unableToUpdate());
      }
      return left(const TreeFailure.unexpected());
    } catch (_) {
      return left(const TreeFailure.unexpected());
    }
  }

  @override
  Future<Either<TreeFailure, Unit>> update(Tree tree) async {
    try {
      final treeDto = TreeDto.fromDomain(tree);

      await _firestore
          .treesCollection()
          .doc(treeDto.treeId)
          .update(treeDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TreeFailure.unableToUpdate());
      }
      return left(const TreeFailure.unexpected());
    } catch (_) {
      return left(const TreeFailure.unexpected());
    }
  }

  @override
  Future<Either<TreeFailure, Unit>> delete({required UniqueId treeId}) async {
    try {
      final userDoc = await _firestore.userDocument();
      await _firestore.treesCollection().doc(treeId.getOrCrash()).delete();
      await userDoc.update({
        'trees': FieldValue.arrayRemove([treeId.getOrCrash()])
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TreeFailure.unableToUpdate());
      }
      return left(const TreeFailure.unexpected());
    } catch (_) {
      return left(const TreeFailure.unexpected());
    }
  }

  @override
  Future<Either<TreeFailure, Unit>> updateNumberOfGeneration({
    required UniqueId treeId,
    required int option,
  }) async {
    try {
      await _firestore.treesCollection().doc(treeId.getOrCrash()).update({
        'treeSettings.numberOfGenerationOpt': option,
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TreeFailure.unableToUpdate());
      }
      return left(const TreeFailure.unexpected());
    } catch (_) {
      return left(const TreeFailure.unexpected());
    }
  }

  @override
  Future<Either<TreeFailure, Unit>> updateShareSettings({
    required UniqueId treeId,
    required int option,
  }) async {
    try {
      await _firestore.treesCollection().doc(treeId.getOrCrash()).update({
        'treeSettings.shareOpt': option,
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TreeFailure.unableToUpdate());
      }
      return left(const TreeFailure.unexpected());
    } catch (_) {
      return left(const TreeFailure.unexpected());
    }
  }

  @override
  Future<Either<TreeFailure, Unit>> updateIsShowUnknown({
    required UniqueId treeId,
    required bool isShowUnknown,
  }) async {
    try {
      await _firestore.treesCollection().doc(treeId.getOrCrash()).update({
        'treeSettings.isShowUnknown': isShowUnknown,
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TreeFailure.unableToUpdate());
      }
      return left(const TreeFailure.unexpected());
    } catch (_) {
      return left(const TreeFailure.unexpected());
    }
  }

  @override
  Future<Either<TreeFailure, TreeSettings>> loadSettings(
    UniqueId treeId,
  ) async {
    try {
      final doc =
          await _firestore.treesCollection().doc(treeId.getOrCrash()).get();

      final data = doc.data() as Map?;

      if (data == null) {
        return right(TreeSettings.empty());
      }

      final settings = TreeSettings(
        numberOfGenerationOpt:
            data['treeSettings']['numberOfGenerationOpt'] as int,
        isShowUnknown: data['treeSettings']['isShowUnknown'] as bool? ?? true,
        shareOpt: data['treeSettings']['shareOpt'] as int,
        langOpt: 0,
      );

      return right(settings);
    } on FirebaseException catch (e) {
      if (e.message!.contains(PERMISSION_DENIED_CP) ||
          e.message!.contains(PERMISSION_DENIED_SM)) {
        return left(const TreeFailure.insufficientPermission());
      } else if (e.message!.contains(NOT_FOUND_CP) ||
          e.message!.contains(NOT_FOUND_SM)) {
        return left(const TreeFailure.unableToUpdate());
      }
      return left(const TreeFailure.unexpected());
    } catch (_) {
      return left(const TreeFailure.unexpected());
    }
  }
}
