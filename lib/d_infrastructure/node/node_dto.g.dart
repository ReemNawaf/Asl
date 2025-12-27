// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TNodeDtoImpl _$$TNodeDtoImplFromJson(Map<String, dynamic> json) =>
    _$TNodeDtoImpl(
      nodeId: json['nodeId'] as String?,
      treeId: json['treeId'] as String,
      firstName: json['firstName'] as String,
      birthDate: json['birthDate'] as String?,
      deathDate: json['deathDate'] as String?,
      isAlive: json['isAlive'] as bool,
      gender: json['gender'] as String,
      upperFamily: json['upperFamily'] as String?,
      relations:
          (json['relations'] as List<dynamic>).map((e) => e as String).toList(),
      fosterChildren: (json['fosterChildren'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$TNodeDtoImplToJson(_$TNodeDtoImpl instance) =>
    <String, dynamic>{
      'nodeId': instance.nodeId,
      'treeId': instance.treeId,
      'firstName': instance.firstName,
      'birthDate': instance.birthDate,
      'deathDate': instance.deathDate,
      'isAlive': instance.isAlive,
      'gender': instance.gender,
      'upperFamily': instance.upperFamily,
      'relations': instance.relations,
      'fosterChildren': instance.fosterChildren,
      'notes': instance.notes,
    };
