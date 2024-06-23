// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TreeDtoImpl _$$TreeDtoImplFromJson(Map<String, dynamic> json) =>
    _$TreeDtoImpl(
      treeId: json['treeId'] as String,
      creatorId: json['creatorId'] as String,
      rootId: json['rootId'] as String,
      treeName: json['treeName'] as String,
      fullName: json['fullName'] as String,
    );

Map<String, dynamic> _$$TreeDtoImplToJson(_$TreeDtoImpl instance) =>
    <String, dynamic>{
      'treeId': instance.treeId,
      'creatorId': instance.creatorId,
      'rootId': instance.rootId,
      'treeName': instance.treeName,
      'fullName': instance.fullName,
    };
