import 'package:asl/c_domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_group.freezed.dart';

/// User-defined group for a single tree (max 6 per tree). [id] is stable;
/// [colorKey] indexes the curated color list in presentation.
@freezed
abstract class TreeGroup with _$TreeGroup {
  const factory TreeGroup({
    required UniqueId id,
    required String name,
    required String colorKey,
  }) = _TreeGroup;
}
