import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/tree.dart';
import 'package:asl/c_domain/tree/tree_failure.dart';
import 'package:asl/c_domain/tree/value_objects.dart';
import 'package:dartz/dartz.dart';

abstract class ITreeRepository {
  Stream<Either<TreeFailure, List<Tree>>> watchAll();
  Future<Either<TreeFailure, Unit>> create({required Tree tree});
  Future<Either<TreeFailure, Unit>> changeName(
      {required UniqueId treeId, required TreeName treeName});
  Future<Either<TreeFailure, Unit>> delete({required UniqueId treeId});

  Future<Either<TreeFailure, Tree>> getTree({required UniqueId treeId});
}
