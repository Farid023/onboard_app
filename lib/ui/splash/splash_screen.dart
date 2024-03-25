import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:onboard_app/constants/app_assets.dart';
import 'package:onboard_app/extensions/navigation_extension.dart';
import 'package:onboard_app/functions/sp_functions.dart';
import 'package:onboard_app/ui/login/login_screen.dart';
import 'package:onboard_app/ui/onboard/onboard_screen.dart';

import '../../constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1200)).whenComplete(() {
      context.pushReplacement(const OnboardScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: FadeIn(
        child: Center(
          child: Image.asset(
            AppAssets.ob_2,
          ),
          //SvgPicture.asset(AppAssets.image2),
        ),
      ),
    );
  }
}
