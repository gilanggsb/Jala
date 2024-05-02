import 'package:freezed_annotation/freezed_annotation.dart';

part 'region.freezed.dart';
part 'region.g.dart';

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Region with _$Region {
  const factory Region({
    String? id,
    String? name,
    dynamic type,
    String? latitude,
    String? longitude,
    String? countryId,
    String? countryName,
    String? countryNameUppercase,
    String? provinceId,
    String? provinceName,
    String? regencyId,
    String? regencyName,
    dynamic districtId,
    dynamic districtName,
    dynamic villageId,
    dynamic villageName,
    String? fullName,
    String? nameTranslated,
    String? countryNameTranslated,
    String? countryNameTranslatedUppercase,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}
