import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_scan_parser_application/domain/models/test_model/test_model.dart';
import 'package:stock_scan_parser_application/domain/repositery/get_stock_data_repositery/get_stock_data_repositery.dart';

part 'stock_event.dart';
part 'stock_state.dart';
part 'stock_bloc.freezed.dart';

@injectable
class StockBloc extends Bloc<StockEvent, StockState> {
  final GetStockDataRepositery getStockDataRepositery;
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StockBloc(this.getStockDataRepositery) : super(StockState.initial()) {
    on<GetAllStockEvent>((event, emit) async {
      final result = await getStockDataRepositery.getStockData();

      result.fold(
          (failure) => null, (resp) => emit(state.copyWith(stock: resp)));
    });
   on<ToggleClickEvent>((event, emit) {
      emit(state.copyWith(isClick: !state.isClick));
    });
  }
}
