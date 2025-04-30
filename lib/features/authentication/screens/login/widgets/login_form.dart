import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:palventure/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:palventure/features/authentication/screens/signup/signup.dart';
import 'package:palventure/features/navigation_bar/navigation_menu.dart';
import 'package:palventure/utils/constants/sizes.dart';
import 'package:palventure/utils/constants/text_strings.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.spaceBtwItems,
        ),
        child: Column(
          children: [
            /// --- Username --- ///
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTexts.username,
              ),
            ),

            const SizedBox(height: AppSizes.spaceBtwInputFields),

            /// --- Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.key),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: AppTexts.password,
              ),
            ),

            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

            /// --- Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(
                      AppTexts.rememberMe,
                      style: Theme.of(context).textTheme.labelLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: Text(
                    AppTexts.forgetPassword,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const NavigationMenu()),
                child: const Text(AppTexts.signIn),
              ), 
            ),

            const SizedBox(height: AppSizes.spaceBtwItems),

            /// Create account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(AppTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
