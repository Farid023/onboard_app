import 'package:flutter/material.dart';
import 'package:onboard_app/extensions/material_state_property_all_extension.dart';
import 'package:onboard_app/extensions/padding_extension.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_strings.dart';
import '../../global_widgets/global_button.dart';

class LoginRegisterButtonsView extends StatelessWidget {
  const LoginRegisterButtonsView({
    super.key,
    required this.loginOnClick,
    required this.registerOnClick,
  });

  final void Function() loginOnClick;
  final void Function() registerOnClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: GlobalButton(
            text: AppStrings.login,
            onPressed: loginOnClick,
            elevation: 10,
          ),
        ),
        30.width,
        Expanded(
          child: TextButton(
            onPressed: registerOnClick,
            style: ButtonStyle(
                fixedSize: const Size.fromHeight(60).toMspAll,
                shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))
                    .toMspAll),
            child: const Text(
              AppStrings.register,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
