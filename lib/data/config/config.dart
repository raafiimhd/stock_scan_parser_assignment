import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_scan_parser_application/data/config/config.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
  getIt.init(environment: Environment.prod);
}