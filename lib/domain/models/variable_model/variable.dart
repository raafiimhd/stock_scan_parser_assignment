import 'package:json_annotation/json_annotation.dart';
import 'package:stock_scan_parser_application/domain/models/variable_model/variable_item.dart';

part 'variable.g.dart';

@JsonSerializable()
class Variable {
  Map<String, VariableItem>? variables;

  Variable({this.variables});

  factory Variable.fromJson(Map<String, dynamic> json) => _$VariableFromJson(json);

  Map<String, dynamic> toJson() => _$VariableToJson(this);
}
