import 'package:flutter/material.dart';

import '../../../features.dart';

class NewPriceDetail extends StatelessWidget {
  final ShrimpPrice shrimpPrice;
  final VoidCallback onPressDetail;
  const NewPriceDetail({
    super.key,
    required this.shrimpPrice,
    required this.onPressDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultText(
          shrimpPrice.createdAt?.format('dd MMMM yyyy'),
          fontSize: 12,
          color: AppColors.dustBlue,
        ),
        4.heightBox,
        DefaultText(
          shrimpPrice.region?.provinceName ?? '',
          fontSize: 12,
        ),
        DefaultText(
          shrimpPrice.region?.name ?? '',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        4.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DefaultText(
                  'size 100',
                  fontSize: 12,
                  color: AppColors.dustBlue,
                ),
                DefaultText(
                  AppUtils.addCurrencyFormat('${shrimpPrice.size100}'),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            DefaultButton(
              height: 38,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              onPress: onPressDetail,
              borderRadius: 4,
              child: const DefaultText(
                'LIHAT DETAIL',
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ],
    );
  }
}
