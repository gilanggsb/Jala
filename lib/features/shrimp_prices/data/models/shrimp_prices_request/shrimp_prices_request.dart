// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'shrimp_prices_request.freezed.dart';
part 'shrimp_prices_request.g.dart';

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class ShrimpPricesRequest with _$ShrimpPricesRequest {
  const factory ShrimpPricesRequest({
    @JsonKey(name: 'per_page') int? perPage,
    int? page,
    @JsonKey(name: 'with') List<String>? shrimpWith,
    @JsonKey(name: 'region_id') String? regionId,
  }) = _ShrimpPricesRequest;

  factory ShrimpPricesRequest.fromJson(Map<String, dynamic> json) =>
      _$ShrimpPricesRequestFromJson(json);
}
