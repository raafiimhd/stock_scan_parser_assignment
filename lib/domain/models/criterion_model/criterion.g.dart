// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'criterion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Criterion _$CriterionFromJson(Map<String, dynamic> json) => Criterion(
      type: json['type'] as String?,
      text: json['text'] as String?,
      variable: (json['variable'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, VariableItem.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$CriterionToJson(Criterion instance) => <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'variable': instance.variable,
    };
