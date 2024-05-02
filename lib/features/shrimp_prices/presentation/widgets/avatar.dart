import 'package:flutter/material.dart';

import '../../../features.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.avatar,
  });

  final String avatar;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox.fromSize(
        size: const Size.fromRadius(
          24,
        ), // Image radius
        child: DefaultImage(
          imageUrl: URL.avatar(avatar),
          width: 24,
          height: 24,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
