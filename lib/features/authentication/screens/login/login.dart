import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/common/widgets/custom_image.dart';
import 'package:e_commerce_app/util/constants/app_colors.dart';
import 'package:e_commerce_app/util/constants/app_images.dart';
import 'package:e_commerce_app/util/constants/app_sizes.dart';
import 'package:e_commerce_app/util/constants/app_strings.dart';
import 'package:e_commerce_app/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: SpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// Logo, Title & Sub-Title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage.svgImage(
                  dark ? AppImages.appLogos : AppImages.appLogos,
                  height: 80,
                ),
                const SizedBox(height: AppSizes.sm),
                Text(
                  AppString.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: AppSizes.sm),
                Text(
                  AppString.loginSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),

            /// Form
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
                child: Column(
                  children: [
                    /// Email
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline_rounded),
                        labelText: AppString.email,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),

                    /// Password
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        labelText: AppString.password,
                        suffixIcon: Icon(Icons.visibility_off_rounded),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

                    /// Remember Me & Forget Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Remember Me
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text(AppString.rememberMe),
                          ],
                        ),

                        /// Forget Password
                        TextButton(
                          onPressed: () {},
                          child: const Text(AppString.forgetPassword),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),

                    /// Sign In Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(AppString.signIn),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),

                    /// Create Account Button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(AppString.createAccount),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),
                  ],
                ),
              ),
            ),

            /// Divider
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Divider(
                    color: dark ? AppColors.darkerGrey : AppColors.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  ),
                ),
                Text(
                  AppString.orSignInWith.capitalize!,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Flexible(
                  child: Divider(
                    color: dark ? AppColors.darkerGrey : AppColors.grey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  ),
                ),
              ],
            ),

            /// Footer
          ],
        ),
      ),
    );
  }
}
