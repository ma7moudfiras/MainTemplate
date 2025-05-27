import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/appbar/appbar.dart';
import 'package:palventure/common/widgets/direct_messages/direct_message_icon.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/text_strings.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class MyHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return MyAppBar(
      elevation: 8,

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
            AppTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: dark ? AppColors.white : AppColors.black,
            ),
          ),
        ],
      ),

      actions: [
        AppDirectCounterIcon(
          onPressed: () {},
          iconColor: dark ? AppColors.white : AppColors.black,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
