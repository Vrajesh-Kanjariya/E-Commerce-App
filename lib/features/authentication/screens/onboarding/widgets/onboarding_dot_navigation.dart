import 'package:e_commerce_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/util/constants/app_colors.dart';
import 'package:e_commerce_app/util/constants/app_sizes.dart';
import 'package:e_commerce_app/util/device/device_utility.dart';
import 'package:e_commerce_app/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = HelperFunction.isDarkMode(context);

    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(
            activeDotColor: dark ? AppColors.primary : AppColors.primary,
            dotHeight: 6.0,
          ),
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3),
    );
  }
}
