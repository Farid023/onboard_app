import 'package:flutter/material.dart';
import 'package:onboard_app/constants/app_colors.dart';

class TitleDescriptionBox extends StatelessWidget {
  const TitleDescriptionBox({
    super.key,
    required this.title,
    required this.description,
    this.titleFontSize = 28,
    this.titleFontWeight = FontWeight.w600,
    this.titleColor = AppColors.black,
    this.descriptionFontSize = 14,
    this.descriptionColor = AppColors.black,
    this.descriptionFontWeight = FontWeight.w400,
    this.paddingHorizontal = 0,
  });

  final String title;
  final String description;
  final double? titleFontSize;
  final Color? titleColor;
  final FontWeight? titleFontWeight;
  final double? descriptionFontSize;
  final FontWeight? descriptionFontWeight;
  final Color? descriptionColor;
  final double paddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.5,
              fontSize: titleFontSize,
              color: titleColor,
              fontWeight: titleFontWeight,
            ),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.5,
              fontSize: descriptionFontSize,
              color: descriptionColor,
              fontWeight: descriptionFontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
