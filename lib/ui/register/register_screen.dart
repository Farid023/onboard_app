import 'package:flutter/material.dart';
import 'package:onboard_app/extensions/context_extensions.dart';
import 'package:onboard_app/extensions/navigation_extension.dart';
import 'package:onboard_app/extensions/padding_extension.dart';
import 'package:onboard_app/ui/login/login_screen.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../global_widgets/background_shapes_view.dart';
import '../global_widgets/continue_with_sosial_networks_view.dart';
import '../global_widgets/custom_input.dart';
import '../global_widgets/global_button.dart';
import '../global_widgets/global_text_button.dart';
import '../global_widgets/title_description_box.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                      title: AppStrings.create_account,
                      description: AppStrings.create_an_account_description,
                      titleColor: AppColors.blue,
                      titleFontSize: 30,
                      titleFontWeight: FontWeight.w700,
                      descriptionFontWeight: FontWeight.w500,
                      descriptionFontSize: 14,
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
                        16.height,
                        const CustomInput(
                          hintText: AppStrings.password,
                          labelText: AppStrings.password,
                          obscureText: true,
                        ),
                        16.height,
                        const CustomInput(
                          hintText: AppStrings.confirm_password,
                          labelText: AppStrings.confirm_password,
                          obscureText: true,
                        ),
                        40.height,
                        GlobalButton(
                          text: AppStrings.sign_in,
                          onPressed: () {},
                          elevation: 20,
                          fixedSize: Size(context.fullWidth, 60),
                        ),
                        30.height,
                        Center(
                          child: GlobalTextButton(
                            text: AppStrings.already_have_an_account,
                            textColor: AppColors.gray,
                            onClick: () {
                              context.pushReplacement(const LoginScreen());
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
