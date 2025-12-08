import 'package:asl/c_domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_settings.freezed.dart';

@freezed
abstract class TreeSettings implements _$TreeSettings {
  const TreeSettings._();

  const factory TreeSettings({
    UniqueId? treeId,
    int? numberOfGeneration,
    required bool isShowUnknown,
  }) = _TreeSettings;

  factory TreeSettings.empty() => const TreeSettings(
        treeId: null,
        numberOfGeneration: null,
        isShowUnknown: false,
      );
}
