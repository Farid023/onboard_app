import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onboard_app/extensions/navigation_extension.dart';
import 'package:onboard_app/ui/welcome/welcome_screen.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../functions/sp_functions.dart';

class RoundedButton extends StatefulWidget {
  const RoundedButton({
    super.key,
    required this.pageController,
    required this.isLastPage,
    required this.currentIndex,
  });

  final PageController pageController;
  final bool isLastPage;
  final int currentIndex;

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  int get currentIndex => widget.currentIndex;

  bool get isLastPage => widget.isLastPage;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (!isLastPage) {
          widget.pageController.jumpToPage(currentIndex + 1);
        } else {
          SharedPrefFunctions().setOnboardCompleted(context);
          context.pushReplacement(const WelcomeScreen());
        }
        setState(() {});
      },
      style: IconButton.styleFrom(
        backgroundColor: AppColors.white,
        fixedSize: const Size.square(62),
      ),
      icon: isLastPage
          ? const Icon(Icons.check)
          : SvgPicture.asset(
              AppAssets.arrow_right,
            ),
    );
  }
}
