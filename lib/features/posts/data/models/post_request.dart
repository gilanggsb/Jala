// To parse this JSON data, do
//
//     final postRequest = postRequestFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_request.freezed.dart';
part 'post_request.g.dart';

@Freezed(toJson: true)
class PostRequest with _$PostRequest {
  const factory PostRequest({
    final int? page,
    @JsonKey(name: 'per_page') final int? perPage,
    @JsonKey(name: 'with') String? postRequestWith,
  }) = _PostRequest;
}
