import 'package:flutter/material.dart';

import '../../../features.dart';

class UserInfo extends StatelessWidget {
  final ShrimpPrice shrimpPrice;
  final VoidCallback onPressContactUs;
  const UserInfo({
    super.key,
    required this.shrimpPrice,
    required this.onPressContactUs,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DefaultText(
              shrimpPrice.createdAt?.format('dd MMMM yyyy') ?? '',
              color: AppColors.grey,
            ),
            12.widthBox,
            BadgeVerified(shrimpPrice: shrimpPrice),
          ],
        ),
        6.heightBox,
        Row(
          children: [
            Avatar(
              avatar: shrimpPrice.creator?.avatar ?? '',
            ),
            8.widthBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DefaultText(
                  'Supplier',
                  color: AppColors.grey300,
                  fontSize: 12,
                ),
                DefaultText(
                  shrimpPrice.creator?.name ?? '',
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ],
        ),
        4.heightBox,
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DefaultText(
                  'Kontak',
                  color: AppColors.grey300,
                  fontSize: 12,
                ),
                DefaultText(
                  shrimpPrice.creator?.phone ?? '',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ],
            ),
            const Spacer(),
            DefaultButton(
              height: 38,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              onPress: onPressContactUs,
              borderRadius: 4,
              child: const DefaultText(
                'Hubungi',
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )
      ],
    );
  }
}
