import 'package:flutter/material.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/device/device_utility.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Material(
      color: dark? AppColors.black : AppColors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primary,
        labelColor: AppHelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,

      ),


    );



  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());


}
