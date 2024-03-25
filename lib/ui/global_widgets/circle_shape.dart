import 'package:flutter/material.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({
    super.key,
    required this.borderColor,
    this.fillColor,
    this.borderWidth = 0,
    required this.width,
    required this.height,
  });

  final Color borderColor;
  final Color? fillColor;
  final double borderWidth;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: fillColor,
        shape: BoxShape.circle,
        border: Border.all(
          width: borderWidth,
          color: borderColor,
        ),
        // color: AppColors.primary,
      ),
    );
  }
}
