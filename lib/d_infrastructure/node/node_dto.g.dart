// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NodeDtoImpl _$$NodeDtoImplFromJson(Map<String, dynamic> json) =>
    _$NodeDtoImpl(
      nodeId: json['nodeId'] as String?,
      treeId: json['treeId'] as String,
      firstName: json['firstName'] as String,
      birthDate: json['birthDate'] as String?,
      deathDate: json['deathDate'] as String?,
      isAlive: json['isAlive'] as bool,
      gender: json['gender'] as String,
      mother: json['mother'] as String,
      father: json['father'] as String,
      partners:
          (json['partners'] as List<dynamic>).map((e) => e as String).toList(),
      children:
          (json['children'] as List<dynamic>).map((e) => e as String).toList(),
      fosterChildren: (json['fosterChildren'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$NodeDtoImplToJson(_$NodeDtoImpl instance) =>
    <String, dynamic>{
      'nodeId': instance.nodeId,
      'treeId': instance.treeId,
      'firstName': instance.firstName,
      'birthDate': instance.birthDate,
      'deathDate': instance.deathDate,
      'isAlive': instance.isAlive,
      'gender': instance.gender,
      'mother': instance.mother,
      'father': instance.father,
      'partners': instance.partners,
      'children': instance.children,
      'fosterChildren': instance.fosterChildren,
    };
