import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onboard_app/constants/app_colors.dart';
import 'package:onboard_app/extensions/material_state_property_all_extension.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.blue,
    this.textColor = AppColors.white,
    this.foregroundColor = AppColors.white,
    this.fixedSize = const Size(200, 60),
    this.borderRadius = 10,
    this.elevation = 0,
  })  : icon = null,
        svgAssetName = null,
        isChildText = true,
        isChildSvg = false;

  const GlobalButton.icon({
    super.key,
    required this.onPressed,
    this.backgroundColor = AppColors.blue,
    this.textColor = AppColors.white,
    this.foregroundColor = AppColors.white,
    required this.icon,
    this.fixedSize = const Size(45, 45),
    this.borderRadius = 10,
    this.elevation = 1,
  })  : text = null,
        svgAssetName = null,
        isChildText = false,
        isChildSvg = false;

  const GlobalButton.svg({
    super.key,
    required this.onPressed,
    this.backgroundColor = AppColors.blue,
    this.textColor = AppColors.white,
    this.foregroundColor = AppColors.white,
    required this.svgAssetName,
    this.fixedSize = const Size(45, 45),
    this.borderRadius = 10,
    this.elevation = 1,
  })  : text = null,
        isChildText = false,
        icon = null,
        isChildSvg = true;

  final String? text;
  final void Function() onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? textColor;
  final IconData? icon;
  final String? svgAssetName;
  final bool isChildText;
  final bool isChildSvg;
  final Size fixedSize;
  final double borderRadius;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: AppColors.white30.toMspAll,
        foregroundColor: foregroundColor.toMspAll,
        backgroundColor: backgroundColor.toMspAll,
        fixedSize: fixedSize.toMspAll,
        padding: EdgeInsets.zero.toMspAll,
        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)))
            .toMspAll,
        shadowColor: AppColors.shadowColor.toMspAll,
        elevation: elevation.toMspAll,
      ),
      child: isChildText
          ? Text(
              text!,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )
          : isChildSvg
              ? SvgPicture.asset(svgAssetName!)
              : Icon(icon),
    );
  }
}
