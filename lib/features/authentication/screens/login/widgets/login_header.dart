import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/images/circular_image.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/constants/text_strings.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class AppLoginHeader extends StatelessWidget {
  const AppLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
    
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppCircularImage(
          fit: BoxFit.scaleDown,

          image: dark ? AppImages.lightAppLogo : AppImages.darkAppLogo,
          
        ),

        Text(
          AppTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),

        const SizedBox(height: AppSizes.sm),

        Text(
          AppTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
