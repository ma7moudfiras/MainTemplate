import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:palventure/features/authentication/screens/signup/verify_email.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/constants/text_strings.dart';

import 'terms_and_conditions_checkbox.dart';

class AppSignupForm extends StatelessWidget {
   const AppSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {


    return Form(
      child: Column(
        children: [

          ///First Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: AppTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///UserName
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: AppTexts.username,
                    prefixIcon: Icon(Iconsax.user_edit),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///E-mail
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: AppTexts.email,
                    prefixIcon: Icon(Iconsax.direct),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Phone Number
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: AppTexts.phoneNo,
                    prefixIcon: Icon(Iconsax.call),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Password
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: AppTexts.password,
                    prefixIcon: Icon(Iconsax.key),
                    suffixIcon: Icon(Iconsax.eye_slash),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Check Box + Agree To Text
          AppTermsAndConditionsCheckBox(),

          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Button
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const VerifyEmailScreen()),
                  child: const Text(AppTexts.createAccount),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

