import 'package:flutter/material.dart';
import 'package:onboard_app/constants/app_assets.dart';
import 'package:onboard_app/constants/app_colors.dart';
import 'package:onboard_app/constants/app_sizes.dart';
import 'package:onboard_app/constants/app_strings.dart';
import 'package:onboard_app/extensions/padding_extension.dart';
import 'package:onboard_app/ui/global_widgets/global_button.dart';

class ContinueWithSosialNetworksView extends StatelessWidget {
  const ContinueWithSosialNetworksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            AppStrings.or_continue_with,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.blue,
            ),
          ),
          20.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GlobalButton.svg(
                onPressed: () {},
                fixedSize: AppSizes.sosialNetworkBtnSize,
                svgAssetName: AppAssets.google,
                backgroundColor: AppColors.sosialBgColor,
                foregroundColor: AppColors.black,
              ),
              10.width,
              GlobalButton.icon(
                onPressed: () {},
                icon: Icons.facebook,
                fixedSize: AppSizes.sosialNetworkBtnSize,
                backgroundColor: AppColors.sosialBgColor,
                foregroundColor: AppColors.black,
              ),
              10.width,
              GlobalButton.icon(
                onPressed: () {},
                icon: Icons.apple,
                fixedSize: AppSizes.sosialNetworkBtnSize,
                backgroundColor: AppColors.sosialBgColor,
                foregroundColor: AppColors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}
