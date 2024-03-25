import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboard_app/constants/app_assets.dart';
import 'package:onboard_app/constants/app_colors.dart';
import 'package:onboard_app/extensions/padding_extension.dart';
import 'package:onboard_app/ui/onboard/widgets/onboard_page_view.dart';
import 'package:onboard_app/ui/onboard/widgets/page_indicator.dart';
import 'package:onboard_app/ui/onboard/widgets/rounded_button.dart';
import 'package:onboard_app/ui/onboard/widgets/skip_text_button.dart';

import '../../model/onboard_model.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  late final PageController _pageController;
  int _currentPageIndex = 0;
  bool _isLastPage = false;

  // late final _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(_pageChangeListener);
  }

  @override
  void dispose() {
    _pageController.removeListener(_pageChangeListener);
    _pageController.dispose();
    super.dispose();
  }

  void _pageChangeListener() {
    setState(() {
      _currentPageIndex = _pageController.page?.toInt() ?? 0;
      _isLastPage = _currentPageIndex == OnboardModel.onboardItems.length - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        actions: const [
          SkipTextButton(),
        ],
      ),
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          OnboardPageView(pageController: _pageController),
          24.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PageIndicator(
                  pageController: _pageController,
                ),
                RoundedButton(
                  pageController: _pageController,
                  isLastPage: _isLastPage,
                  currentIndex: _currentPageIndex,
                ),
              ],
            ),
          ),
          24.height
        ],
      ),
    );
  }
}
