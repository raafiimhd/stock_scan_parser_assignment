// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stock_scan_parser_application/application/bussiness_logic/bloc/stock_bloc.dart'
    as _i7;
import 'package:stock_scan_parser_application/application/bussiness_logic/cubit/hover_cubit.dart'
    as _i6;
import 'package:stock_scan_parser_application/data/get/get_stock_data_provider/get_stock_data_provider.dart'
    as _i5;
import 'package:stock_scan_parser_application/data/module/module.dart' as _i8;
import 'package:stock_scan_parser_application/domain/repositery/get_stock_data_repositery/get_stock_data_repositery.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.lazySingleton<_i3.Dio>(() => dioModule.dioInstance);
    gh.lazySingleton<_i4.GetStockDataRepositery>(
        () => _i5.GetStockDataProvider(gh<_i3.Dio>()));
    gh.factory<_i6.HoverCubit>(() => _i6.HoverCubit());
    gh.factory<_i7.StockBloc>(
        () => _i7.StockBloc(gh<_i4.GetStockDataRepositery>()));
    return this;
  }
}

class _$DioModule extends _i8.DioModule {}
