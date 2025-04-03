import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/constants/text_strings.dart';

import 'reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          /// For make the alignment to the left
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Title
            Text(
              AppTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: AppSizes.spaceBtwItems),

            /// Sub Title
            Text(
              AppTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),

            const SizedBox(height: AppSizes.spaceBtwSections * 2),

            /// Text Field
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                      labelText: AppTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppSizes.spaceBtwInputFields),

            ///Button
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: const Text(AppTexts.submit),
                  ),
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
