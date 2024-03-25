import 'package:flutter/material.dart';
import 'package:onboard_app/constants/app_colors.dart';
import 'package:onboard_app/model/onboard_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    const items = OnboardModel.onboardItems;
    return SmoothPageIndicator(
      controller: pageController,
      count: items.length,
      effect: const ExpandingDotsEffect(
        dotHeight: 6,
        dotWidth: 6,
        spacing: 4,
        dotColor: AppColors.white30,
        activeDotColor: AppColors.white,
        expansionFactor: 4



      ),
    );
  }
}
