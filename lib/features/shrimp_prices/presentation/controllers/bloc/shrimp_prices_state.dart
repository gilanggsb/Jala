part of 'shrimp_prices_bloc.dart';

@freezed
class ShrimpPricesState with _$ShrimpPricesState {
  const factory ShrimpPricesState.initial() = _Initial;
  const factory ShrimpPricesState.loading() = _Loading;
  const factory ShrimpPricesState.success(List<ShrimpPrice> shrimpPrices,
      {bool? isLoading, bool? hasReachedEnd}) = _Success;
  const factory ShrimpPricesState.failed(String message,
      {List<ShrimpPrice>? shrimpPrices}) = _Error;
}
