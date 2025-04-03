import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palventure/common/widgets/success_screen/success_screen.dart';
import 'package:palventure/features/authentication/screens/login/login.dart';
import 'package:palventure/utils/constants/image_strings.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/constants/text_strings.dart';
import 'package:palventure/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(children: [

            /// Image
            Image(image: AssetImage(AppImages.onBoardingImage1), width: AppHelperFunctions.screenWidth() * 0.6),
            const SizedBox(height: AppSizes.spaceBtwSections),

            /// Text
            Text(AppTexts.confirmEmailTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text('support@palventure.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(AppTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: AppSizes.spaceBtwSections),

            /// Continue Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen()), child: const Text(AppTexts.$continue))),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(AppTexts.resendEmail))),






          ],

          ),
        ),
      ),
    );
  }
}
