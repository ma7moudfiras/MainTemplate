import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Padding(

        /// -- Custom
        padding: const EdgeInsets.fromLTRB(AppSizes.defaultSpace/2 ,0 ,AppSizes.defaultSpace ,0 ),
        /// -- Custom

        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder:( _, index){
              return AppVerticalImageText(image: AppImages.google, onTap: (){}, title: 'anything',);

            }


        ),
      ),
    );
  }
}
