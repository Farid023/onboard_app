import 'package:flutter/material.dart';
import 'package:onboard_app/constants/app_colors.dart';
import 'package:onboard_app/constants/app_strings.dart';
import 'package:onboard_app/extensions/context_extensions.dart';
import 'package:onboard_app/extensions/navigation_extension.dart';
import 'package:onboard_app/extensions/padding_extension.dart';
import 'package:onboard_app/ui/global_widgets/continue_with_sosial_networks_view.dart';
import 'package:onboard_app/ui/global_widgets/custom_input.dart';
import 'package:onboard_app/ui/global_widgets/global_button.dart';
import 'package:onboard_app/ui/global_widgets/global_text_button.dart';
import 'package:onboard_app/ui/global_widgets/title_description_box.dart';
import 'package:onboard_app/ui/register/register_screen.dart';

import '../global_widgets/background_shapes_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.fullWidth,
        height: context.fullHeight,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const BackgroundShapesView(),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: TitleDescriptionBox(
                      title: AppStrings.login_here,
                      description: AppStrings.welcome_back,
                      titleColor: AppColors.blue,
                      titleFontSize: 30,
                      titleFontWeight: FontWeight.w700,
                      descriptionFontWeight: FontWeight.w600,
                      descriptionFontSize: 20,
                      paddingHorizontal: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        50.height,
                        const CustomInput(
                          hintText: AppStrings.email,
                          labelText: AppStrings.email,
                        ),
                        30.height,
                        const CustomInput(
                          hintText: AppStrings.password,
                          labelText: AppStrings.password,
                          obscureText: true,
                        ),
                        10.height,
                        GlobalTextButton(
                          text: AppStrings.forgot_your_password,
                          fixedSize: const Size.fromHeight(21),
                          textColor: AppColors.blue,
                          onClick: () {},
                        ),
                        30.height,
                        GlobalButton(
                          text: AppStrings.sign_in,
                          onPressed: () {},
                          fixedSize: Size(context.fullWidth, 60),
                        ),
                        30.height,
                        Center(
                          child: GlobalTextButton(
                            text: AppStrings.create_new_account,
                            textColor: AppColors.gray,
                            onClick: () {
                              context.pushReplacement(const RegisterScreen());
                            },
                          ),
                        ),
                        30.height,
                        const ContinueWithSosialNetworksView()
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
