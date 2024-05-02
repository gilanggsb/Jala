import 'package:freezed_annotation/freezed_annotation.dart';
part 'another_feature.freezed.dart';
part 'another_feature.g.dart';

@freezed
class AnotherFeature with _$AnotherFeature {
  const factory AnotherFeature({
    required final int id,
    required final String imageUrl,
    required final String name,
  }) = _AnotherFeature;

  factory AnotherFeature.fromJson(Map<String, dynamic> json) =>
      _$AnotherFeatureFromJson(json);
}
