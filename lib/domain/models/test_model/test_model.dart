import 'package:json_annotation/json_annotation.dart';
import 'package:stock_scan_parser_application/domain/models/criterion_model/criterion.dart';


part 'test_model.g.dart';

@JsonSerializable()
class TestModel {
  int? id;
  String? name;
  String? tag;
  String? color;
  List<Criterion>? criteria;

  TestModel({
    this.id,
    this.name,
    this.tag,
    this.color,
    this.criteria,
  });

  factory TestModel.fromJson(Map<String, dynamic> json) {
    return _$TestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TestModelToJson(this);
}
