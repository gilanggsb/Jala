import 'package:flutter/material.dart';

import '../../../features.dart';

class UserMark extends StatelessWidget {
  const UserMark({
    super.key,
    required this.shrimpPrice,
  });
  final ShrimpPrice shrimpPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DefaultText(
          'Catatan',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        4.heightBox,
        DefaultText(
          shrimpPrice.remark ?? '',
          color: AppColors.grey,
        ),
      ],
    );
  }
}
