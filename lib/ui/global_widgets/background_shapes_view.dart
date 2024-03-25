import 'package:flutter/material.dart';
import 'package:onboard_app/extensions/context_extensions.dart';

import '../../constants/app_colors.dart';
import 'circle_shape.dart';
import 'rectangle_shape.dart';

class BackgroundShapesView extends StatelessWidget {
  const BackgroundShapesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.fullHeight,
      width: context.fullWidth,
      child: Stack(
        children: [
          const Positioned(
            left: 114,
            top: -406,
            child: CircleShape(
              borderColor: AppColors.objectColorCircle,
              width: 635,
              height: 635,
              fillColor: AppColors.objectColorCircle,
            ),
          ),
          const Positioned(
            left: 23,
            top: -171,
            child: CircleShape(
              borderColor: AppColors.objectColorCircle,
              width: 496,
              height: 496,
              borderWidth: 3,
            ),
          ),
          const Positioned(
            bottom: -130,
            left: -265,
            child: RectangleShape(
                borderColor: AppColors.objectColorRectangle,
                borderWidth: 3,
                width: 372,
                height: 372),
          ),
          Positioned(
            left: -155,
            bottom: -200,
            child: Transform.rotate(
              angle: -28,
              child: const RectangleShape(
                  borderColor: AppColors.objectColorRectangle,
                  borderWidth: 3,
                  width: 372,
                  height: 372),
            ),
          ),
        ],
      ),
    );
  }
}
