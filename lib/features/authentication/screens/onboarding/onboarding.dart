import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palventure/features/authentication/screens/onboarding/controllers_onboarding/onboarding_controller.dart';
import 'package:palventure/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:palventure/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:palventure/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:palventure/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/text_strings.dart';


class onboardingScreen extends StatelessWidget {
  const onboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
              ),

              OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
              ),

              OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator

          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}




