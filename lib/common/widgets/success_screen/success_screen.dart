import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palventure/common/styles/spacing_styles.dart';
import 'package:palventure/features/authentication/screens/login/login.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/constants/text_strings.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarWeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(AppImages.onBoardingImage1),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Text
              Text(
                AppTexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: AppSizes.spaceBtwItems),

              Text(
                AppTexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text(AppTexts.$continue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
