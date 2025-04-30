import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:palventure/common/styles/shadows.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:palventure/common/widgets/images/rounded_image.dart';
import 'package:palventure/common/widgets/texts/product_title_text.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class AppProductCardVertical extends StatelessWidget {
  const AppProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [AppShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: dark ? AppColors.darkerGrey : AppColors.white,
        ),

        /// Image
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Iconsax.add_circle,
                        color: AppColors.white,
                        size: AppSizes.iconMd,
                      ),

                      const SizedBox(width: AppSizes.xs),

                      Text(
                        'Sharek Youth Forum',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),

                  const SizedBox(width: AppSizes.xs),

                  const Icon(
                    Iconsax.verify5,
                    color: AppColors.primary,
                    size: AppSizes.iconXs,
                  ),
                ],
              ),

              const SizedBox(height: AppSizes.spaceBtwItems / 2),

              AppRoundedContainer(
             //   height: 200,
            //    padding: const EdgeInsets.all(AppSizes.sm),
             //   backgroundColor: dark ? AppColors.dark : AppColors.light,
                child: Stack(
                  children: [
                    const AppRoundedImage(
                      imageUrl: AppImages.promoBanner1,
                      applyImageRadius: true,
                    ),

/*
                    /// --- Discount Badge --- ///
                    Positioned(
                      top: 6,
                      left: 6,
                      child: AppRoundedContainer(
                        radius: AppSizes.sm,
                        backgroundColor: AppColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.sm,
                          vertical: AppSizes.xs,
                        ),
                        child: Text(
                          '25%',
                          style: Theme.of(
                            context,
                          ).textTheme.labelLarge!.apply(color: AppColors.black),
                        ),
                      ),
                    ),

                    /// --- Favorite Icon Button --- ///
                    Positioned(
                      top: 6,
                      right: 6,
                      child: const AppCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ),
                    ),

 */     

                  ],
                ),
              ),

              /// --- Details --- ///
              Padding(
                padding: EdgeInsets.all(AppSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const AppProductTitleText(title: 'Join Us In MUN'),

                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Share Share Share Share Share Share Share Share Share Share Share Share Share Share Share Share Share Share Share Share ',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ),

                          
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Iconsax.like,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: AppSizes.iconMd,
                      ),

                      const SizedBox(width: AppSizes.xs),

                      const Icon(
                        Iconsax.direct5,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: AppSizes.iconMd,
                      ),

                      const SizedBox(width: AppSizes.xs),

                      const Icon(
                        Iconsax.add_circle,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: AppSizes.iconMd,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
