import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: Scaffold(
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
      
                const SizedBox(height: AppSizes.spaceBtwItems),
      
                ///Footer
                AppSocialButtons(),
              ],
            ),
=======
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
>>>>>>> dfa50593abfb55628a700872fac268c3278da747
          ),
        ),
      ),
    );
  }
}




