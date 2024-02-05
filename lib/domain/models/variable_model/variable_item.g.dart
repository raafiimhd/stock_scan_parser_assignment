// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariableItem _$VariableItemFromJson(Map<String, dynamic> json) => VariableItem(
      type: json['type'] as String?,
      values: json['values'] as List<dynamic>?,
      defaultValue: json['default_value'] as int?,
      maxValue: json['max_value'] as int?,
      minValue: json['min_value'] as int?,
      parmaterName: json['parameter_name'] as String?,
      studyType: json['study_type'] as String?,
    );

Map<String, dynamic> _$VariableItemToJson(VariableItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'values': instance.values,
      'study_type': instance.studyType,
      'parameter_name': instance.parmaterName,
      'min_value': instance.minValue,
      'max_value': instance.maxValue,
      'default_value': instance.defaultValue,
    };
