import 'package:flutter/material.dart';

import '../../../features.dart';

class NewPriceCard extends StatelessWidget {
  final VoidCallback onPressDetail;
  final ShrimpPrice shrimpPrice;

  const NewPriceCard({
    super.key,
    required this.shrimpPrice,
    required this.onPressDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColors.grey200),
        boxShadow: const [
          BoxShadow(
            blurRadius: 8,
            offset: Offset(0, 4),
            color: Color(0x15000000),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NewPriceCreator(shrimpPrice: shrimpPrice),
          8.heightBox,
          NewPriceDetail(
            shrimpPrice: shrimpPrice,
            onPressDetail: onPressDetail,
          )
        ],
      ).paddingAll(12),
    );
  }
}
