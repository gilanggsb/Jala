part of 'shrimp_prices_bloc.dart';

@freezed
class ShrimpPricesEvent with _$ShrimpPricesEvent {
  const factory ShrimpPricesEvent.started() = _Started;
  const factory ShrimpPricesEvent.getData() = _GetData;
  const factory ShrimpPricesEvent.nextPage() = _NextPage;
  const factory ShrimpPricesEvent.prevPage() = _PrevPage;
}
