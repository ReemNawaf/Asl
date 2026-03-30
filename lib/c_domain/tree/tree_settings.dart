import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/tree_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_settings.freezed.dart';

@freezed
abstract class TreeSettings implements _$TreeSettings {
  const TreeSettings._();

  const factory TreeSettings({
    UniqueId? treeId,
    required int numberOfGenerationOpt,
    required bool isDrawingPartner,
    required int langOpt,
    required bool isPublic,
    required bool isShowUnknown,
    @Default(<TreeGroup>[]) List<TreeGroup> groups,
  }) = _TreeSettings;

  factory TreeSettings.empty() => const TreeSettings(
        treeId: null,
        numberOfGenerationOpt: 0,
        langOpt: 0,
        isDrawingPartner: true,
        isPublic: false,
        isShowUnknown: false,
        groups: [],
      );
}
