import 'package:flutter/material.dart';

class RectangleShape extends StatelessWidget {
  const RectangleShape(
      {super.key,
      required this.borderColor,
      this.fillColor,
      required this.borderWidth,
      required this.width,
      required this.height});

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
        shape: BoxShape.rectangle,
        border: Border.all(
          width: borderWidth,
          color: borderColor,
        ),
        // color: AppColors.primary,
      ),
    );
  }
}
