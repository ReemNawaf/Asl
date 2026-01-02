// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TreeSettingsDtoImpl _$$TreeSettingsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TreeSettingsDtoImpl(
      numberOfGenerationOpt: (json['numberOfGenerationOpt'] as num).toInt(),
      langOpt: (json['langOpt'] as num).toInt(),
      isPublic: json['isPublic'] as bool,
      isShowUnknown: json['isShowUnknown'] as bool,
    );

Map<String, dynamic> _$$TreeSettingsDtoImplToJson(
        _$TreeSettingsDtoImpl instance) =>
    <String, dynamic>{
      'numberOfGenerationOpt': instance.numberOfGenerationOpt,
      'langOpt': instance.langOpt,
      'isPublic': instance.isPublic,
      'isShowUnknown': instance.isShowUnknown,
    };
