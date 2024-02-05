import 'package:json_annotation/json_annotation.dart';
import 'package:stock_scan_parser_application/domain/models/variable_model/variable_item.dart';


part 'criterion.g.dart';

@JsonSerializable()
class Criterion {
  String? type;
  String? text;
  Map<String,VariableItem>? variable;
  Criterion({this.type, this.text,this.variable});

  factory Criterion.fromJson(Map<String, dynamic> json) {
    return _$CriterionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CriterionToJson(this);
}
