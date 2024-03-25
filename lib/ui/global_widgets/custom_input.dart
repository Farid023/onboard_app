import 'package:flutter/material.dart';
import 'package:onboard_app/constants/app_borders.dart';
import 'package:onboard_app/constants/app_colors.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.labelText,
    //  this.textController,
  });

  final String? hintText;
  final String? labelText;
  final bool obscureText;

  // final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: obscureText,
          // controller: textController,
          decoration: InputDecoration(
              fillColor: AppColors.whiteFieldBG,
              filled: true,
              focusedBorder: AppBorders.focusedInputBorder,
              border: AppBorders.defaultInputBorder,
              hintText: hintText,
              labelText: labelText,
              hintStyle: const TextStyle(

                  color: AppColors.hintColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16)),
        )
      ],
    );
  }
}



