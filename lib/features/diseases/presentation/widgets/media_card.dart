import 'package:flutter/material.dart';

import '../../../features.dart';

class MediaCard extends StatelessWidget {
  final Disease disease;
  final VoidCallback? onPressShare;
  final VoidCallback? onPress;
  const MediaCard(
      {super.key, required this.disease, this.onPress, this.onPressShare});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.grey200,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultImage(
              imageUrl: URL.avatar(disease.image ?? ''),
              cacheKey: disease.image ?? '',
              width: double.infinity,
              height: 160,
              fit: BoxFit.cover,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(
                  '${disease.fullName} (${disease.shortName})',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
                4.heightBox,
                DefaultText(
                  '${disease.metaDescription}',
                  color: AppColors.grey,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                8.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultText(
                      disease.createdAt?.format('dd MMMM yyyy'),
                      color: AppColors.grey,
                      fontSize: 12,
                    ),
                    IconButton(
                      onPressed: onPressShare,
                      icon: const Icon(
                        Icons.share,
                        color: AppColors.black,
                      ),
                    )
                  ],
                )
              ],
            ).paddingAll(8)
          ],
        ),
      ),
    );
  }
}
