// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'post.freezed.dart';
part 'post.g.dart';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

@Freezed(fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class Post with _$Post {
  const factory Post({
    int? id,
    int? authorId,
    int? categoryId,
    String? image,
    String? status,
    bool? featured,
    dynamic advertisement,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? title,
    String? seoTitle,
    String? excerpt,
    String? body,
    String? slug,
    String? metaDescription,
    String? metaKeywords,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
