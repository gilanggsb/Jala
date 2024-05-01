// To parse this JSON data, do
//
//     final disease = diseaseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'disease.freezed.dart';
part 'disease.g.dart';

Disease diseaseFromJson(String str) => Disease.fromJson(json.decode(str));

String diseaseToJson(Disease data) => json.encode(data.toJson());

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Disease with _$Disease {
  const factory Disease({
    int? id,
    String? fullName,
    String? shortName,
    String? image,
    String? slug,
    String? metaDescription,
    String? metaKeywords,
    String? status,
    String? indication,
    String? pathogen,
    String? effect,
    String? stabilityViability,
    String? handling,
    String? regulation,
    String? reference,
    int? createdBy,
    int? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Disease;

  factory Disease.fromJson(Map<String, dynamic> json) =>
      _$DiseaseFromJson(json);
}
