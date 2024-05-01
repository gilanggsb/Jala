import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import './../utils/utils.dart';
import 'default_circular_progress_indicator.dart';

class DefaultImage extends StatelessWidget {
  final String imageUrl, cacheKey;
  final String? cacheManagerKey;
  final Duration? staleImagePeriod;
  final Alignment? alignment;
  final double? width, height;
  final Widget Function(BuildContext, ImageProvider<Object>)? imageBuilder;
  final Color? color;
  final BoxFit? fit;
  final Widget? errorWidget;
  final bool isFromNetwork;
  final BoxDecoration? decoration;

  const DefaultImage({
    super.key,
    required this.imageUrl,
    required this.cacheKey,
    required this.width,
    required this.height,
    this.cacheManagerKey,
    this.staleImagePeriod,
    this.alignment,
    this.imageBuilder,
    this.color,
    this.fit,
    this.errorWidget,
    this.isFromNetwork = true,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return !isFromNetwork
        ? Image.file(
            File(imageUrl),
            width: width,
            height: height,
            alignment: alignment ?? Alignment.center,
            color: color,
            fit: fit,
            cacheHeight: height?.toInt(),
            cacheWidth: width?.toInt(),
            errorBuilder: (context, error, stackTrace) =>
                errorWidget ?? const Icon(Icons.error),
          )
        : CachedNetworkImage(
            cacheKey: cacheKey,
            imageUrl: imageUrl,
            height: height,
            width: width,
            alignment: alignment ?? Alignment.center,
            color: color,
            fit: fit,
            imageBuilder: imageBuilder ??
                (context, imageProvider) => Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        border: decoration?.border,
                        borderRadius: decoration?.borderRadius,
                        shape: decoration?.shape ?? BoxShape.rectangle,
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
            cacheManager: CacheManager(
              Config(
                cacheManagerKey ?? "image-cache-key",
                stalePeriod: staleImagePeriod ?? const Duration(days: 1),
              ),
            ),
            progressIndicatorBuilder: (context, url, progress) => CircleAvatar(
              backgroundColor: Colors.transparent,
              child: DefaultCircularProgressIndicator(
                value: progress.progress,
                color: AppColors.primary,
              ),
            ),
            errorWidget: (context, url, error) =>
                errorWidget ?? const Icon(Icons.error),
          );
  }
}
