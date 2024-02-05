part of 'stock_bloc.dart';

@freezed
class StockEvent with _$StockEvent {
  const factory StockEvent.getAllStockEvent() = GetAllStockEvent;
  const factory StockEvent.toggleClick() = ToggleClickEvent;
}