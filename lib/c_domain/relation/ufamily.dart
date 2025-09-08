import 'package:asl/c_domain/core/failures.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:asl/c_domain/relation/half_siblings.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ufamily.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class Ufamily implements _$Ufamily {
  const Ufamily._();

  factory Ufamily({
    required UniqueId treeId,
    required TNode father,
    required TNode mother,
    required TNode person,
    required List<TNode> siblings,
    required List<HalfSiblings> fatherHalfSiblings,
    required List<HalfSiblings> motherHalfSiblings,
  }) = _Ufamily;

  //  dynamic; the failure already handled, we just want to know if there is a failure
  //  when validating the whole entity
  Option<ValueFailure<dynamic>> get failureOption {
    return treeId.failureOrUnit.fold((f) => some(f), (r) => none());
  }
}
