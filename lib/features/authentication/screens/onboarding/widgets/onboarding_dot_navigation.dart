import 'package:flutter/material.dart';
import 'package:palventure/features/authentication/screens/onboarding/controllers_onboarding/onboarding_controller.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/device/device_utility.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: AppDeviceUtils.getBottomNavigationBarHeight() +15,
        left: AppSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: dark?  AppColors.light : AppColors.dark, dotHeight: 6)
        )
    );
  }
}
