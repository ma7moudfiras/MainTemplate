import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/images/circular_image.dart';
import 'package:palventure/features/main/screens/profile/widget/profile_appbar.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      backgroundColor: dark ? Colors.black : Colors.white,
      appBar: const ProfileAppBar(),

      body: Center(
        
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: SingleChildScrollView(            
            child: Column(
              
              children: [
                AppCircularImage(image: AppImages.darkAppLogo),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Level', style: Theme.of(context).textTheme.labelSmall), 
                    Text('Level', style: Theme.of(context).textTheme.labelSmall), 
                    Text('Level', style: Theme.of(context).textTheme.labelSmall), 
                  ] 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
