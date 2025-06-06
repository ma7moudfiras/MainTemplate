import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/device/device_utility.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key,
    this.text = 'Search',
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace)
  });

  final String? text;
  final IconData icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: AppDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color:
            showBackground
                ? dark
                ? AppColors.dark
                : AppColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
            border:
            showBorder
                ? dark
                ? Border.all(color: AppColors.darkGrey)
                : Border.all(color: AppColors.grey)
                : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: AppColors.darkGrey),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text(text!, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
