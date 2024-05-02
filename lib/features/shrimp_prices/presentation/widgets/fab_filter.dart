import 'package:flutter/material.dart';

import '../../../features.dart';

class FABFilter extends StatelessWidget {
  const FABFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultButton(
            height: 52,
            width: context.getWidth * 0.37,
            padding: const EdgeInsets.only(left: 18, top: 4, bottom: 4),
            boxDecoration: const BoxDecoration(
              color: AppColors.darkBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                bottomLeft: Radius.circular(60),
              ),
            ),
            onPress: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.scale,
                  color: AppColors.white,
                ),
                12.widthBox,
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      'Size',
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    DefaultText(
                      '100',
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          DefaultButton(
            onPress: () {},
            height: 52,
            width: context.getWidth * 0.53,
            padding: const EdgeInsets.only(left: 18, top: 4, bottom: 4),
            boxDecoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_on,
                  color: AppColors.white,
                ),
                12.widthBox,
                const DefaultText(
                  'Indonesia',
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
