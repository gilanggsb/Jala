part of 'detail_shrimp_prices_bloc.dart';

@freezed
class DetailShrimpPricesEvent with _$DetailShrimpPricesEvent {
  const factory DetailShrimpPricesEvent.started() = _Started;
  const factory DetailShrimpPricesEvent.getData() = _GetData;
}
