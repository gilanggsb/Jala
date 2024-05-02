import 'package:flutter/material.dart';

import '../../../features.dart';

class DetailPrice extends StatelessWidget {
  const DetailPrice({
    super.key,
    required this.shrimpPrice,
  });
  final ShrimpPrice shrimpPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RegionInfo(
          shrimpPrice: shrimpPrice,
        ),
        const Divider(
          color: AppColors.grey200,
          thickness: 4,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserInfo(
              shrimpPrice: shrimpPrice,
              onPressContactUs: () {
                AppUtils.openTelephone(shrimpPrice.creator?.phone ?? '');
              },
            ),
            16.heightBox,
            PriceList(shrimpPrice: shrimpPrice),
            18.heightBox,
            UserMark(
              shrimpPrice: shrimpPrice,
            )
          ],
        ).paddingAll(16)
      ],
    );
  }
}
