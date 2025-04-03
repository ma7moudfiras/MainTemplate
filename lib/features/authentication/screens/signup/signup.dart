import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palventure/common/widgets/login_signup/form_divider.dart';
import 'package:palventure/common/widgets/login_signup/social_buttons.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/constants/text_strings.dart';

import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(

            /// For make the alignment to the left
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Title
              Text(
                AppTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: AppSizes.spaceBtwSections),

              ///Form
              AppSignupForm(),

              const SizedBox(height: AppSizes.spaceBtwSections),
              
              /// Divider
              AppFormDivider(dividerText: AppTexts.orSignUpWith.capitalize!),

              const SizedBox(height: AppSizes.spaceBtwSections),

              ///Social Buttons
              const AppSocialButtons()

            ],
          ),
        ),
      ),
    );
  }
}

