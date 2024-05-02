import 'package:flutter/material.dart';

import '../../../features.dart';

class BadgeVerified extends StatelessWidget {
  const BadgeVerified({
    super.key,
    required this.shrimpPrice,
  });

  final ShrimpPrice shrimpPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: shrimpPrice.creator?.buyer ?? false
            ? AppColors.lightYellow
            : AppColors.grey,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        children: [
          if (shrimpPrice.creator?.buyer ?? false)
            DefaultImage(
              imageUrl: 'star_badge'.toPng,
              width: 20,
              height: 20,
              imageType: ImageType.asset,
            ),
          4.widthBox,
          DefaultText(
            shrimpPrice.creator?.buyer ?? false
                ? 'Terverifikasi'
                : 'Belum terverifikasi',
            fontSize: 12,
          )
        ],
      ).paddingSymmetric(
        vertical: 4,
        horizontal: 6,
      ),
    );
  }
}
