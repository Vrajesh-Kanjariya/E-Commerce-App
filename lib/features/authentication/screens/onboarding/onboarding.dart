import 'package:e_commerce_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/features/authentication/controller/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app/features/authentication/controller/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce_app/features/authentication/controller/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/controller/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app/util/constants/app_images.dart';
import 'package:e_commerce_app/util/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImages.onBoarding1,
                title: AppString.onBoardingTitle1,
                subtitle: AppString.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onBoarding2,
                title: AppString.onBoardingTitle2,
                subtitle: AppString.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onBoarding3,
                title: AppString.onBoardingTitle3,
                subtitle: AppString.onBoardingSubTitle3,
              ),
            ],
          ),
          // Skip button
          const OnBoardingSkip(),
          // Dot navigation smooth page indicator
          const OnBoardingDotNavigation(),
          // Circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}







