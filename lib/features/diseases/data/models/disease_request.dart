// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'disease_request.freezed.dart';
part 'disease_request.g.dart';

@Freezed(toJson: true)
class DiseasesRequest with _$DiseasesRequest {
  const factory DiseasesRequest({
    @JsonKey(name: 'per_page') final int? perPage,
    final int? page,
  }) = _DiseasesRequest;
}
