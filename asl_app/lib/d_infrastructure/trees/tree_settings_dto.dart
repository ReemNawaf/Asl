import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/tree_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_settings_dto.freezed.dart';
part 'tree_settings_dto.g.dart';

@freezed
abstract class TreeSettingsDto with _$TreeSettingsDto {
  const TreeSettingsDto._();

  const factory TreeSettingsDto({
    required int numberOfGenerationOpt,
    required int langOpt,
    required int shareOpt,
    required bool isShowUnknown,
  }) = _TreeSettingsDto;

  factory TreeSettingsDto.fromDomain(TreeSettings settings) {
    return TreeSettingsDto(
      numberOfGenerationOpt: settings.numberOfGenerationOpt,
      langOpt: settings.langOpt,
      shareOpt: settings.shareOpt,
      isShowUnknown: settings.isShowUnknown,
    );
  }

  TreeSettings toDomain({required UniqueId treeId}) {
    return TreeSettings(
      treeId: treeId,
      numberOfGenerationOpt: numberOfGenerationOpt,
      langOpt: langOpt,
      shareOpt: shareOpt,
      isShowUnknown: isShowUnknown,
    );
  }

  factory TreeSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$TreeSettingsDtoFromJson(json);
}
