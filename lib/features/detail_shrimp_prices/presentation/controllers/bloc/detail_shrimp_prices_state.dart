part of 'detail_shrimp_prices_bloc.dart';

@freezed
class DetailShrimpPricesState with _$DetailShrimpPricesState {
  const factory DetailShrimpPricesState.initial() = _Initial;
  const factory DetailShrimpPricesState.loading() = _Loading;
  const factory DetailShrimpPricesState.success(ShrimpPrice? shrimpPrice) =
      _Success;
  const factory DetailShrimpPricesState.failed(String message) = _Error;
}
