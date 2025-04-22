import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/appbar/appbar.dart';
import 'package:palventure/common/widgets/appbar/tabbar.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:palventure/common/widgets/layout/grid_layout.dart';
import 'package:palventure/common/widgets/texts/section_heading.dart';
import 'package:palventure/features/main/screens/explore/widgets/category_tab.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/constants/text_strings.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/brands/brand_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = AppHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: dark ? AppColors.black : AppColors.white ,
        appBar:

        MyAppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTexts.appbarTitle,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color:  dark ? AppColors.grey : AppColors.darkerGrey),
              ),
              Text(
                AppTexts.exploreAppbarSubTitle,
                style: Theme.of(context).textTheme.headlineSmall!
                    .apply(color: dark ? AppColors.white :  AppColors.black),
              ),
            ],
          ),
        ),

        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: AppHelperFunctions.isDarkMode(context) ? AppColors.black : AppColors.white,
                expandedHeight: 400,                 /// Actually 480



                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
      
                      /// -- Searchbar --
                      const SizedBox(height: AppSizes.spaceBtwItems / 2),
                      const AppSearchContainer(
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                      ),

                      const SizedBox(height: AppSizes.spaceBtwItems*1.5),
      
                      /// -- Our Partners Text --
                      AppSectionHeading(title: 'Top Partners', onPressed: () {},),
                      const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
      
                      /// -- Our Top Partners Grid --
                      AppGridLayout(itemCount: 2, mainAxisExtent: 80 , itemBuilder: (_, index) {
                        return const AppBrandCard();
      
      
                      })
                    ],
                  ),
                ),
      
                /// -- Tabs --
      
                bottom:  const AppTabBar(
                  tabs: [
                  Tab(child: Text('Jobs')),
                  Tab(child: Text('Jobs')),
                  Tab(child: Text('Jobs')),
                  Tab(child: Text('Jobs')),
                  Tab(child: Text('Jobs')),

                ],)

              ),
            ];
          },
      

          body: TabBarView(

              children: [

                AppCategoryTab(),
                AppCategoryTab(),
                AppCategoryTab(),
                AppCategoryTab(),
                AppCategoryTab(),


          ]

          ),
        ),
      ),
    );
  }
}





