// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: (json['id'] as num?)?.toInt(),
      authorId: (json['author_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      image: json['image'] as String?,
      status: json['status'] as String?,
      featured: json['featured'] as bool?,
      advertisement: json['advertisement'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      title: json['title'] as String?,
      seoTitle: json['seo_title'] as String?,
      excerpt: json['excerpt'] as String?,
      body: json['body'] as String?,
      slug: json['slug'] as String?,
      metaDescription: json['meta_description'] as String?,
      metaKeywords: json['meta_keywords'] as String?,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'author_id': instance.authorId,
      'category_id': instance.categoryId,
      'image': instance.image,
      'status': instance.status,
      'featured': instance.featured,
      'advertisement': instance.advertisement,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'title': instance.title,
      'seo_title': instance.seoTitle,
      'excerpt': instance.excerpt,
      'body': instance.body,
      'slug': instance.slug,
      'meta_description': instance.metaDescription,
      'meta_keywords': instance.metaKeywords,
    };

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'categoryId': instance.categoryId,
      'image': instance.image,
      'status': instance.status,
      'featured': instance.featured,
      'advertisement': instance.advertisement,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'title': instance.title,
      'seoTitle': instance.seoTitle,
      'excerpt': instance.excerpt,
      'body': instance.body,
      'slug': instance.slug,
      'metaDescription': instance.metaDescription,
      'metaKeywords': instance.metaKeywords,
    };
