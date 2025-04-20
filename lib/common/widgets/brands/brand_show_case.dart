import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:palventure/common/widgets/brands/brand_card.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class AppBrandShowCase extends StatelessWidget {
  const AppBrandShowCase({
    super.key,

    required this.images
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(AppSizes.sm),

      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Column(
        children: [

          const AppBrandCard(showBorder: false,),
          const SizedBox(height: AppSizes.spaceBtwItems /2 ),

          Row(
            children:
              images.map((image) => brandTopProductImageWidget(image, context)).toList())

        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context){
    return Expanded(
        child: AppRoundedContainer(
          height: 100,
          margin: const EdgeInsets.fromLTRB(AppSizes.sm,0,AppSizes.sm,0),
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: AppHelperFunctions.isDarkMode(context)  ? AppColors.darkerGrey : AppColors.light,
          child:  Image(fit: BoxFit.contain, image: AssetImage(image)),
        )
    );
  }
}
