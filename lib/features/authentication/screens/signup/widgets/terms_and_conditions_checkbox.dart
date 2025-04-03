import 'package:flutter/material.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/constants/text_strings.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class AppTermsAndConditionsCheckBox extends StatelessWidget {
  const AppTermsAndConditionsCheckBox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        ///Check Box
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),

        const SizedBox(width: AppSizes.spaceBtwItems),

        ///Agree To Text
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${AppTexts.agreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: AppTexts.privacyPolicy,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(
                  color:
                  dark
                      ? AppColors.white
                      : AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                  dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
              ),

              TextSpan(
                text: ' ${AppTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${AppTexts.termsOfUse} ',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(
                  color:
                  dark
                      ? AppColors.white
                      : AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                  dark
                      ? AppColors.white
                      : AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
