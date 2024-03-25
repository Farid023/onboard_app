import 'package:flutter/material.dart';
import 'package:onboard_app/constants/app_assets.dart';
import 'package:onboard_app/constants/app_colors.dart';
import 'package:onboard_app/constants/app_strings.dart';
import 'package:onboard_app/extensions/navigation_extension.dart';
import 'package:onboard_app/extensions/padding_extension.dart';
import 'package:onboard_app/ui/global_widgets/background_shapes_view.dart';
import 'package:onboard_app/ui/global_widgets/title_description_box.dart';
import 'package:onboard_app/ui/login/login_screen.dart';
import 'package:onboard_app/ui/register/register_screen.dart';
import 'package:onboard_app/ui/welcome/widgets/login_register_buttons_view.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          const BackgroundShapesView(),
          Column(
            children: [
              50.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Image.asset(
                  AppAssets.work_from_home,
                  height: 422,
                  width: 385,
                ),
              ),
              const TitleDescriptionBox(
                  title: AppStrings.welcome_title,
                  description: AppStrings.welcome_description,
                  titleColor: AppColors.blue,
                  titleFontWeight: FontWeight.w600,
                  titleFontSize: 35,
                  descriptionFontWeight: FontWeight.w400,
                  descriptionFontSize: 14,
                  paddingHorizontal: 42.0),
              48.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child: LoginRegisterButtonsView(
                  loginOnClick: () {
                    context.pushReplacement(const LoginScreen());
                  },
                  registerOnClick: () {
                    context.pushReplacement(const RegisterScreen());
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
