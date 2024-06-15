import 'package:asl/c_domain/core/failures.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree.freezed.dart';

@freezed
abstract class Tree implements _$Tree {
  const Tree._();

  const factory Tree({
    required UniqueId id,
    required TreeName treeName,
    required FullName fullName,
    DateTime? birthDate,
    DateTime? deathDate,
    required bool isAlive,
  }) = _Tree;

  factory Tree.empty() => Tree(
      id: UniqueId(),
      treeName: TreeName(''),
      fullName: FullName(''),
      isAlive: true);

  //  dynamic; the failure already handled, we just want to know if there is a failure
  //  when validating the whole entity
  Option<ValueFailure<dynamic>> get failureOption {
    return treeName.failureOrUnit
        .andThen(fullName.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
