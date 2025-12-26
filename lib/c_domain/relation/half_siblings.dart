import 'package:asl/c_domain/core/failures.dart';
import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/node/t_node.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'half_siblings.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class HalfSiblings implements _$HalfSiblings {
  const HalfSiblings._();

  factory HalfSiblings({
    required UniqueId treeId,
    required UniqueId person,
    required TNode partner,
    required List<TNode> halfSiblings,
  }) = _HalfSiblings;

  //  dynamic; the failure already handled, we just want to know if there is a failure
  //  when validating the whole entity
  Option<ValueFailure<dynamic>> get failureOption {
    return treeId.failureOrUnit.fold((f) => some(f), (r) => none());
  }
}
