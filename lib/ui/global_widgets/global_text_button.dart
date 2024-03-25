import 'package:flutter/material.dart';
import 'package:onboard_app/extensions/material_state_property_all_extension.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';

class GlobalTextButton extends StatelessWidget {
  const GlobalTextButton({
    super.key,
    required this.text,
    this.textFontSize = 14,
    this.textFontWeight = FontWeight.w600,
    this.textColor = AppColors.black,
    this.fixedSize,
    this.onClick,
  });

  final String text;
  final double textFontSize;
  final FontWeight? textFontWeight;
  final Color? textColor;
  final void Function()? onClick;
  final Size? fixedSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      style: ButtonStyle(
        fixedSize: fixedSize.toMspAll,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            .toMspAll,
      ),
      child: Text(
        text,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: textColor,
          fontSize: textFontSize,
          fontWeight: textFontWeight,
        ),
      ),
    );
  }
}
