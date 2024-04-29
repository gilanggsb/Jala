import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'models.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

BaseResponse baseResponseFromJson(String str) =>
    BaseResponse.fromJson(json.decode(str));

String baseResponseToJson(BaseResponse data) => json.encode(data.toJson());

@freezed
class BaseResponse with _$BaseResponse {
  const factory BaseResponse({
    List<dynamic>? data,
    Links? links,
    Meta? meta,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}
