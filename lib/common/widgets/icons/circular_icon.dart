import 'package:flutter/material.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class AppCircularIcon extends StatelessWidget {
  const AppCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = AppSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,

  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null ? backgroundColor !: AppHelperFunctions.isDarkMode(context)?AppColors.black.withOpacity(0.9):AppColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100)
      ),

      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),



    );
  }
}
