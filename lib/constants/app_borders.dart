import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppBorders {
  AppBorders._();

  static final defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
  );

  static final focusedInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.blue,
      width: 2,
    ),
  );


}
