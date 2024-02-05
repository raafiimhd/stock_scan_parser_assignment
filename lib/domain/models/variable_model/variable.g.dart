// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variable _$VariableFromJson(Map<String, dynamic> json) => Variable(
      variables: (json['variables'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, VariableItem.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$VariableToJson(Variable instance) => <String, dynamic>{
      'variables': instance.variables,
    };
