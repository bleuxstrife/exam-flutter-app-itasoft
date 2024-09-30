import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_filter_state.freezed.dart';

@freezed
class StockFilterState with _$StockFilterState {
  const factory StockFilterState.idle() = Idle;

  const factory StockFilterState.filter(
      {required String search, required String sort}) = Filter;

  const factory StockFilterState.loading() = Loading;
}
