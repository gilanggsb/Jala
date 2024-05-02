import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jalatest/features/features.dart';
part 'detail_shrimp_prices_params.freezed.dart';
part 'detail_shrimp_prices_params.g.dart';

@freezed
class DetailShrimpPricesParams with _$DetailShrimpPricesParams {
  const factory DetailShrimpPricesParams({
    required final int id,
    required final ShrimpPricesRequest shrimpPricesRequest,
  }) = _DetailShrimpPricesParams;

  factory DetailShrimpPricesParams.fromJson(Map<String, dynamic> json) =>
      _$DetailShrimpPricesParamsFromJson(json);
}
