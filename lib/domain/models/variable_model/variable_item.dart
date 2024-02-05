import 'package:freezed_annotation/freezed_annotation.dart';
part 'variable_item.g.dart';
@JsonSerializable()
class VariableItem {
  String? type;
  List<dynamic>? values;
  @JsonKey(name: "study_type")
  String? studyType;
  @JsonKey(name: "parameter_name")
  String? parmaterName;
  @JsonKey(name: "min_value")
  int? minValue;
  @JsonKey(name: "max_value")
  int? maxValue;
  @JsonKey(name: "default_value")
  int? defaultValue;
  VariableItem({this.type, this.values,this.defaultValue,this.maxValue,this.minValue,this.parmaterName,this.studyType});

  factory VariableItem.fromJson(Map<String, dynamic> json) => _$VariableItemFromJson(json);

  Map<String, dynamic> toJson() => _$VariableItemToJson(this);
}