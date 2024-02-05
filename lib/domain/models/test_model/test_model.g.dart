// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestModel _$TestModelFromJson(Map<String, dynamic> json) => TestModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      tag: json['tag'] as String?,
      color: json['color'] as String?,
      criteria: (json['criteria'] as List<dynamic>?)
          ?.map((e) => Criterion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TestModelToJson(TestModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tag': instance.tag,
      'color': instance.color,
      'criteria': instance.criteria,
    };
