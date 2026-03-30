import 'package:asl/c_domain/core/value_objects.dart';
import 'package:asl/c_domain/tree/tree_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_group_dto.freezed.dart';
part 'tree_group_dto.g.dart';

@freezed
abstract class TreeGroupDto with _$TreeGroupDto {
  const TreeGroupDto._();

  const factory TreeGroupDto({
    required String id,
    required String name,
    required String colorKey,
    required String iconKey,
  }) = _TreeGroupDto;

  factory TreeGroupDto.fromDomain(TreeGroup g) => TreeGroupDto(
        id: g.id.getOrCrash(),
        name: g.name,
        colorKey: g.colorKey,
        iconKey: g.iconKey,
      );

  TreeGroup toDomain() => TreeGroup(
        id: UniqueId.fromUniqueString(id),
        name: name,
        colorKey: colorKey,
        iconKey: iconKey,
      );

  factory TreeGroupDto.fromJson(Map<String, dynamic> json) =>
      _$TreeGroupDtoFromJson(json);
}
