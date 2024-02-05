// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'criterion_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CriteriaItem _$CriteriaItemFromJson(Map<String, dynamic> json) => CriteriaItem(
      type: json['type'] as String?,
      text: json['text'] as String?,
      variable: (json['variable'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, VariableItem.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$CriteriaItemToJson(CriteriaItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'variable': instance.variable,
    };
