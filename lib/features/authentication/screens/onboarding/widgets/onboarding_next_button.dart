import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:palventure/features/authentication/screens/onboarding/controllers_onboarding/onboarding_controller.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/device/device_utility.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: ()=> OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? Colors.green : Colors.white),
        child: const Icon(Iconsax.arrow_right_3),

      ),
    );
  }
}
