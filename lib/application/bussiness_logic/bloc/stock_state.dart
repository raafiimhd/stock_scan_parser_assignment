part of 'stock_bloc.dart';

@freezed
class StockState with _$StockState {
  const factory StockState({

    required List<TestModel> stock,
    required bool isClick
  }) = _Initial;

  factory StockState.initial() =>
      const StockState(stock: [],isClick: false);
}