import 'package:asl/c_domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_group.freezed.dart';

/// User-defined group for a single tree (max 6 per tree). [id] is stable;
/// [colorKey] / [iconKey] index into curated presentation lists.
@freezed
abstract class TreeGroup with _$TreeGroup {
  const factory TreeGroup({
    required UniqueId id,
    required String name,
    required String colorKey,
    required String iconKey,
  }) = _TreeGroup;
}
