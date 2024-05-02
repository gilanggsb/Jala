import 'package:flutter/material.dart';

import '../../../features.dart';

class NewPriceCreator extends StatelessWidget {
  const NewPriceCreator({
    super.key,
    required this.shrimpPrice,
  });

  final ShrimpPrice shrimpPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Avatar(avatar: shrimpPrice.creator?.avatar ?? ''),
        8.widthBox,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DefaultText(
              'Supplier',
              color: AppColors.dustBlue,
              fontSize: 12,
            ),
            DefaultText(
              shrimpPrice.creator?.name ?? '',
            ),
          ],
        ),
        const Spacer(),
        BadgeVerified(shrimpPrice: shrimpPrice),
      ],
    );
  }
}
