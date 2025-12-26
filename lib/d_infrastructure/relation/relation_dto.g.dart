// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelationDtoImpl _$$RelationDtoImplFromJson(Map<String, dynamic> json) =>
    _$RelationDtoImpl(
      relationId: json['relationId'] as String?,
      treeId: json['treeId'] as String,
      partnerTreeId: json['partnerTreeId'] as String,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      marriageStatus: json['marriageStatus'] as String,
      mother: json['mother'] as String,
      father: json['father'] as String,
      children:
          (json['children'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RelationDtoImplToJson(_$RelationDtoImpl instance) =>
    <String, dynamic>{
      'relationId': instance.relationId,
      'treeId': instance.treeId,
      'partnerTreeId': instance.partnerTreeId,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'marriageStatus': instance.marriageStatus,
      'mother': instance.mother,
      'father': instance.father,
      'children': instance.children,
    };
