import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_scan_parser_application/domain/models/variable_model/variable_item.dart';
part 'criterion_items.g.dart';
@JsonSerializable()
class CriteriaItem {
  String? type;
  String? text;
  Map<String, VariableItem>? variable;

  CriteriaItem({this.type, this.text, this.variable});

  factory CriteriaItem.fromJson(Map<String, dynamic> json) => _$CriteriaItemFromJson(json);

  Map<String, dynamic> toJson() => _$CriteriaItemToJson(this);
}
