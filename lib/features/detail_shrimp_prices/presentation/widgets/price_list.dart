import 'package:flutter/material.dart';
import '../../../features.dart';

class PriceList extends StatelessWidget {
  const PriceList({
    super.key,
    required this.shrimpPrice,
  });

  final ShrimpPrice shrimpPrice;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> shrimpPriceJson = shrimpPrice.toJson();
    return SizedBox(
      height: context.getHeight * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DefaultText(
            'Daftar Harga',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          4.heightBox,
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, index) {
                final int jalaSize = (index + 2) * 10;
                final int jalaPrice = shrimpPriceJson['size_$jalaSize'] ?? 0;
                return Row(
                  children: [
                    DefaultText(
                      'Size $jalaSize',
                      fontSize: 16,
                      color: AppColors.black,
                    ),
                    10.widthBox,
                    DefaultText(
                      AppUtils.addCurrencyFormat('$jalaPrice'),
                      fontSize: 16,
                      color: AppColors.black,
                    )
                  ],
                );
              },
              separatorBuilder: (_, index) => 10.heightBox,
              itemCount: 19,
            ),
          )
        ],
      ),
    );
  }
}
