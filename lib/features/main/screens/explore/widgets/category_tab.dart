import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/brands/brand_show_case.dart';
import 'package:palventure/common/widgets/layout/grid_layout.dart';
import 'package:palventure/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:palventure/common/widgets/texts/section_heading.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';

class AppCategoryTab extends StatelessWidget {
  const AppCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [

            /// Brands
            const AppBrandShowCase(images: [AppImages.onBoardingImage1,AppImages.onBoardingImage2,AppImages.onBoardingImage3]),

            AppSectionHeading(title: 'You might like', showActionButton: true, onPressed: (){},),
            const SizedBox(height: AppSizes.spaceBtwItems),

            AppGridLayout(itemCount: 4, itemBuilder: (_,  index) => AppProductCardVertical())
          ],
        ),

      ),
    ],
    );

  }
}
