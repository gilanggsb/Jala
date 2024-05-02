import 'package:flutter/material.dart';
import 'package:jalatest/features/features.dart';

final anotherFeatureDatas = [
  AnotherFeature(id: 1, imageUrl: 'ask_jala'.toPng, name: 'Ask Jala'),
  AnotherFeature(id: 2, imageUrl: 'quiz_jala'.toPng, name: 'Quiz Jala')
];

class TryAnotherFeature extends StatelessWidget {
  const TryAnotherFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 172,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DefaultText(
            'Coba Fitur Lainnya',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final anotherFeature = anotherFeatureDatas[index];
                return GestureDetector(
                  onTap: () {
                    NativeChannelServices.showNativeDialog(
                      anotherFeature.name,
                      'Hello From Native',
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox.fromSize(
                      child: DefaultImage(
                        imageUrl: anotherFeature.imageUrl,
                        imageType: ImageType.asset,
                        width: context.getWidth * 0.75,
                        height: 100,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => 16.heightBox,
              itemCount: anotherFeatureDatas.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
