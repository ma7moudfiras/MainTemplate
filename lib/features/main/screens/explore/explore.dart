import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palventure/common/widgets/appbar/appbar.dart';
import 'package:palventure/common/widgets/appbar/tabbar.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:palventure/common/widgets/direct_messages/direct_message_icon.dart';
import 'package:palventure/common/widgets/images/circular_image.dart';
import 'package:palventure/common/widgets/layout/grid_layout.dart';
import 'package:palventure/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:palventure/common/widgets/texts/section_heading.dart';
import 'package:palventure/utils/constants/colors.dart';
import 'package:palventure/utils/constants/enums.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

import 'widgets/brand_cards.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: AppHelperFunctions.isDarkMode(context) ? AppColors.black : AppColors.white ,
        appBar: MyAppBar(
          title: Text(
            'Explore',
            style: Theme.of(context).textTheme.headlineMedium,
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
                          text: 'Search',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                      ),

                      const SizedBox(height: AppSizes.spaceBtwSections),
      
                      /// -- Our Partners Text --
                      AppSectionHeading(title: 'Our Top Partners', onPressed: () {}),
                      const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
      
                      /// -- Our Top Partners Grid --
                      AppGridLayout(itemCount: 4, mainAxisExtent: 80 , itemBuilder: (_, index) {
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
      
      
      
          body: TabBarView(children: [
            Padding(padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [



                  AppRoundedContainer(
                    showBorder: false,
                    borderColor: AppColors.darkGrey,
                    backgroundColor: Colors.transparent,
                    margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
                    child: Column(
                      children: [

                        const AppBrandCard(),
                        const SizedBox(height: AppSizes.spaceBtwItems),
                        const AppBrandCard(),
                      ],
                    ),
                  ),



                ],
              ),

            ),
          ]

          ),
        ),
      ),
    );
  }
}


