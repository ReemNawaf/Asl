import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/tree_settings.dart';
import 'package:asl/d_infrastructure/trees/tree_group_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_settings_dto.freezed.dart';
part 'tree_settings_dto.g.dart';

@freezed
abstract class TreeSettingsDto with _$TreeSettingsDto {
  const TreeSettingsDto._();

  const factory TreeSettingsDto({
    required int numberOfGenerationOpt,
    required int langOpt,
    required bool isPublic,
    required bool isShowUnknown,
    bool? isDrawingPartner,
    @Default(<TreeGroupDto>[]) List<TreeGroupDto> groups,
  }) = _TreeSettingsDto;

  factory TreeSettingsDto.fromDomain(TreeSettings settings) {
    return TreeSettingsDto(
      numberOfGenerationOpt: settings.numberOfGenerationOpt,
      langOpt: settings.langOpt,
      isPublic: settings.isPublic,
      isShowUnknown: settings.isShowUnknown,
      isDrawingPartner: settings.isDrawingPartner,
      groups: settings.groups.map(TreeGroupDto.fromDomain).toList(),
    );
  }

  TreeSettings toDomain({required UniqueId treeId}) {
    return TreeSettings(
      isDrawingPartner: isDrawingPartner ?? true,
      treeId: treeId,
      numberOfGenerationOpt: numberOfGenerationOpt,
      langOpt: langOpt,
      isPublic: isPublic,
      isShowUnknown: isShowUnknown,
      groups: groups.map((g) => g.toDomain()).toList(),
    );
  }

  factory TreeSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$TreeSettingsDtoFromJson(json);
}
