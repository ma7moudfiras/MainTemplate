import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:palventure/common/widgets/images/circular_image.dart';
import 'package:palventure/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/enums.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class AppBrandCard extends StatelessWidget {
  const AppBrandCard({
    super.key,
    this.onTap,
    this.showBorder = true

  });

  final bool showBorder;
  final void Function ()? onTap;


  @override
  Widget build(BuildContext context) {

    final dark = AppHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: AppRoundedContainer(
        padding: const EdgeInsets.all(AppSizes.xs),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(

              /// --- Icon ---
              child: AppCircularImage(
                  isNetworkImage: false,
                  image: AppImages.google,
                  backgroundColor: Colors.transparent,
                  overlayColor: dark ? AppColors.white : AppColors.black),
            ),

            const SizedBox(width: AppSizes.sm/4),


            /// -- Text --

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBrandTitleWithVerifiedIcon(title: 'Y-Peer' , brandTextSize: TextSizes.medium),
                  Text('Ramallah',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
