import 'package:flutter/material.dart';
import 'package:palventure/common/styles/spacing_styles.dart';
import 'package:palventure/common/widgets/login_signup/form_divider.dart';
import 'package:palventure/common/widgets/login_signup/social_buttons.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/constants/text_strings.dart';

import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarWeight,
          child: Column(
            children: [
              ///Logo, Title and sub-title
              AppLoginHeader(),

              ///Form
              AppLoginForm(),

              /// Divider
              AppFormDivider(dividerText: AppTexts.orContinueWith),

              const SizedBox(height: AppSizes.spaceBtwSections),

              ///Footer
              AppSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}




