import 'package:flutter/material.dart';

import '../../../features.dart';

class RegionInfo extends StatelessWidget {
  final ShrimpPrice shrimpPrice;
  const RegionInfo({
    super.key,
    required this.shrimpPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultText(
            shrimpPrice.region?.provinceName ?? '',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          DefaultText(
            shrimpPrice.region?.name ?? '',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
          ),
        ],
      ).paddingAll(12),
    );
  }
}
