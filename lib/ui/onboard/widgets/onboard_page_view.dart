import 'package:flutter/material.dart';
import 'package:onboard_app/model/onboard_model.dart';
import 'package:onboard_app/ui/onboard/widgets/page_view_item.dart';

class OnboardPageView extends StatelessWidget {
  const OnboardPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    var onboardItems = OnboardModel.onboardItems;
    return Expanded(
      child: SizedBox(
        child: PageView.builder(
            controller: pageController,
            itemCount: onboardItems.length,
            itemBuilder: (_, index) {
              return PageViewItem(onboardModel: onboardItems[index]);
            }),
      ),
    );
  }
}
