import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:onboard_app/constants/app_colors.dart';
import 'package:onboard_app/extensions/padding_extension.dart';
import 'package:onboard_app/model/onboard_model.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.onboardModel});

  final OnboardModel onboardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              onboardModel.image,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
          12.height,
          FadeInRight(
            child: Text(
              onboardModel.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
          12.height,
          FadeInUp(
            child: Text(
              onboardModel.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
