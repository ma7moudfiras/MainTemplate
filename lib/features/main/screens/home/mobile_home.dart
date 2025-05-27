import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:palventure/common/widgets/layout/grid_layout.dart';
import 'package:palventure/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:palventure/features/main/screens/home/widgets/home_appbar.dart';
import 'package:palventure/features/main/screens/home/widgets/promo_slider.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHomeAppBar(),

      /// --- Color of the Stacked Widget
      backgroundColor:
          AppHelperFunctions.isDarkMode(context)
              ? AppColors.black
              : AppColors.white,

      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// -- Header --
                AppPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      /// -- App Bar --
                      //   SizedBox(height: AppSizes.spaceBtwItems / 2),

                      /// -- Searchbar --
                      //    AppSearchContainer(),       //        SizedBox(height: AppSizes.spaceBtwItems / 2),

                      /*
          
                      /// -- Section Heading --
                      Padding(
                        padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                        child: Column(
                          children: [
                            AppSectionHeading(
                              title: 'Main Categories',
                              showActionButton: false,
                              textColor: AppColors.white,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: AppSizes.spaceBtwItems),
          
                      /// --- Categories --
                      AppHomeCategories(),
          */
                      /// --- Promo Slider --
                      Padding(
                        padding: const EdgeInsets.only(bottom: AppSizes.lg),
                        child: const AppPromoSlider(
                          banners: [
                            AppImages.promoBanner1,
                            AppImages.promoBanner1,
                            AppImages.promoBanner2,
                            AppImages.promoBanner3,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                /// --- Bottom Body --
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    AppSizes.defaultSpace,
                    AppSizes.spaceBtwItems / 2,
                    AppSizes.defaultSpace,
                    AppSizes.defaultSpace,
                  ),
                  child: Column(
                    children: [
                   
                      /// --- Products --- ///
                      AppGridLayout(
                        itemCount: 4,
                        itemBuilder:
                            (_, index) => const AppProductCardVertical(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
