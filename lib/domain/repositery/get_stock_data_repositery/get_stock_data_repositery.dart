import 'package:dartz/dartz.dart';
import 'package:stock_scan_parser_application/domain/core/constant/const.dart';
import 'package:stock_scan_parser_application/domain/models/test_model/test_model.dart';

abstract class GetStockDataRepositery {
  Future<Either<ErrorMsg, List<TestModel>>> getStockData();
}
