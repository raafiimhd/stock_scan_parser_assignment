// import 'dart:convert';

// import 'package:stock_scan_parser_application/domain/core/constant/api_url/api_url.dart';
// import 'package:stock_scan_parser_application/domain/models/stock_market_model/stock_market_model.dart';
// import 'package:http/http.dart' as http;
// class getStockDataProvider {
//   Future<List<StockMarketModel>> getall() async {
//     final response = await http.get(Uri.parse(getApiUrl));
//     if (response.statusCode == 200) {
//       final responseData = jsonDecode(response.body) as List;
//       return responseData.map((data) => StockMarketModel.fromJson(data)).toList();
//     } else {
//       throw Exception('Error');
//     }
//   }
// }
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_scan_parser_application/domain/core/constant/api_url/api_url.dart';
import 'package:stock_scan_parser_application/domain/core/constant/const.dart';
import 'package:stock_scan_parser_application/domain/models/test_model/test_model.dart';
import 'package:stock_scan_parser_application/domain/repositery/get_stock_data_repositery/get_stock_data_repositery.dart';

@LazySingleton(as: GetStockDataRepositery)
@injectable
class GetStockDataProvider implements GetStockDataRepositery {
  final Dio dio;

  GetStockDataProvider(this.dio);
  @override
  Future<Either<ErrorMsg, List<TestModel>>> getStockData() async {
    try {
      final response = await dio.get(getApiUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> responseData = response.data as List<dynamic>;
        final List<TestModel> stockList = responseData
            .map((data) => TestModel.fromJson(data))
            .toList();
        return Right(stockList);
      } else {
        return Left(ErrorMsg(message: response.toString()));
      }
    } on DioException catch (dioError) {
      log('Requested URL: ${dioError.requestOptions.uri}');
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }
}
