import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/appbar/appbar.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/text_strings.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class MyAlertsAppBar extends StatelessWidget {
   const MyAlertsAppBar({
    super.key,

  });


  @override
  Widget build(BuildContext context) {

    final dark = AppHelperFunctions.isDarkMode(context);

    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.appbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
              color: dark ? AppColors.grey : AppColors.darkerGrey,
            ),
          ),

          Text(
            AppTexts.alertsAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: dark ? AppColors.white : AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
