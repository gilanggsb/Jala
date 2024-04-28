import 'package:flutter/material.dart';
import '../utils/utils.dart';

class DefaultCircularProgressIndicator extends StatelessWidget {
  final double? value;
  final Color? backgroundColor;
  final Color? color;
  final Animation<Color?>? valueColor;
  final String? semanticsLabel;
  final String? semanticsValue;
  final double strokeWidth;
  const DefaultCircularProgressIndicator({
    super.key,
    this.value,
    this.backgroundColor,
    this.valueColor,
    this.semanticsLabel,
    this.strokeWidth = 4.0,
    this.semanticsValue,
    this.color = AppColors.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: backgroundColor,
      color: color,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
      strokeWidth: strokeWidth,
      value: value,
      valueColor: valueColor,
    );
  }
}
