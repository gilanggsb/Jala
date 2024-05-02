// To parse this JSON data, do
//
//     final shrimpPrice = shrimpPriceFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features.dart';

part 'shrimp_price.freezed.dart';
part 'shrimp_price.g.dart';

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ShrimpPrice with _$ShrimpPrice {
  const factory ShrimpPrice({
    int? id,
    int? speciesId,
    DateTime? date,
    @JsonKey(name: "size_20") int? size20,
    @JsonKey(name: "size_30") int? size30,
    @JsonKey(name: "size_40") int? size40,
    @JsonKey(name: "size_50") int? size50,
    @JsonKey(name: "size_60") int? size60,
    @JsonKey(name: "size_70") int? size70,
    @JsonKey(name: "size_80") int? size80,
    @JsonKey(name: "size_90") int? size90,
    @JsonKey(name: "size_100") int? size100,
    @JsonKey(name: "size_110") int? size110,
    @JsonKey(name: "size_120") int? size120,
    @JsonKey(name: "size_130") int? size130,
    @JsonKey(name: "size_140") int? size140,
    @JsonKey(name: "size_150") int? size150,
    @JsonKey(name: "size_160") int? size160,
    @JsonKey(name: "size_170") int? size170,
    @JsonKey(name: "size_180") int? size180,
    @JsonKey(name: "size_190") int? size190,
    @JsonKey(name: "size_200") int? size200,
    dynamic remark,
    int? createdBy,
    int? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? regionId,
    String? contact,
    String? countryId,
    String? currencyId,
    dynamic private,
    int? week,
    String? dateRegionFullName,
    String? provinceId,
    String? regencyId,
    dynamic districtId,
    dynamic villageId,
    Region? region,
    Creator? creator,
  }) = _ShrimpPrice;

  factory ShrimpPrice.fromJson(Map<String, dynamic> json) =>
      _$ShrimpPriceFromJson(json);
}
