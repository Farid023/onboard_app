import 'package:flutter/material.dart';
import 'package:onboard_app/extensions/navigation_extension.dart';
import 'package:onboard_app/functions/sp_functions.dart';
import 'package:onboard_app/ui/welcome/welcome_screen.dart';

import '../../../constants/app_colors.dart';

class SkipTextButton extends StatelessWidget {
  const SkipTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
      SharedPrefFunctions().setOnboardCompleted(context);
      context.pushReplacement(const WelcomeScreen());
      },
      style: TextButton.styleFrom(
        foregroundColor: AppColors.white,
      ),
      child: const Text(
        "Skip",
        style: TextStyle(
          color: AppColors.white,
        ),
      ),
    );
  }
}
