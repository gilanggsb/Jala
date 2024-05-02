// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shrimp_prices_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShrimpPricesRequest _$ShrimpPricesRequestFromJson(Map<String, dynamic> json) =>
    ShrimpPricesRequest(
      perPage: (json['per_page'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      shrimpWith:
          (json['with'] as List<dynamic>?)?.map((e) => e as String).toList(),
      regionId: json['region_id'] as String?,
    );

Map<String, dynamic> _$ShrimpPricesRequestToJson(
        ShrimpPricesRequest instance) =>
    <String, dynamic>{
      'per_page': instance.perPage,
      'page': instance.page,
      'with': instance.shrimpWith,
      'region_id': instance.regionId,
    };

Map<String, dynamic> _$$ShrimpPricesRequestImplToJson(
        _$ShrimpPricesRequestImpl instance) =>
    <String, dynamic>{
      'per_page': instance.perPage,
      'page': instance.page,
      'with': instance.shrimpWith,
      'region_id': instance.regionId,
    };
