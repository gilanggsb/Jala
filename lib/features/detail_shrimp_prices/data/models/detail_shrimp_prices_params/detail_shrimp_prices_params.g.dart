// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_shrimp_prices_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailShrimpPricesParamsImpl _$$DetailShrimpPricesParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailShrimpPricesParamsImpl(
      id: (json['id'] as num).toInt(),
      shrimpPricesRequest: ShrimpPricesRequest.fromJson(
          json['shrimpPricesRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailShrimpPricesParamsImplToJson(
        _$DetailShrimpPricesParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shrimpPricesRequest': instance.shrimpPricesRequest,
    };
