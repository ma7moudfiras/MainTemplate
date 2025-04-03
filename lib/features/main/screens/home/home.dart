import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:palventure/common/widgets/texts/section_heading.dart';
import 'package:palventure/features/main/screens/home/widgets/home_appbar.dart';
import 'package:palventure/features/main/screens/home/widgets/home_categories.dart';
import 'package:palventure/features/main/screens/home/widgets/promo_slider.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header --
             AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- App Bar --
                  MyHomeAppBar(),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  /// -- Searchbar --
                  SizedBox(child: AppSearchContainer(text: 'Search')),
                  SizedBox(height: AppSizes.spaceBtwSections * 1.5),

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


                ],
              ),
            ),

            /// --- Promo Slider --
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultSpace),
              child: AppPromoSlider(banners: [ AppImages.promoBanner1, AppImages.promoBanner1, AppImages.promoBanner2, AppImages.promoBanner3],

              ),
            ),
          ],
        ),
      ),
    );
  }
}

