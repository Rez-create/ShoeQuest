import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_quest/features/authentication/screens/signup/verify_email.dart';
import 'package:shoe_quest/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:shoe_quest/utils/constants/sizes.dart';
import 'package:shoe_quest/utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputField),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputField),
        // Username
        TextFormField(
          decoration: InputDecoration(
            labelText: TTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputField),

        // Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct),
            labelText: TTexts.email,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputField),

        // Phone Number
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.call),
            labelText: TTexts.phoneNumber,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputField),

        // Password
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: TTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        // Terms and conditions
        TTermsAndConditionsCheckbox(dark: dark),
        const SizedBox(height: TSizes.spaceBtwSections),

        // Create Account Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen()),
              child: Text(TTexts.createAccount)),
        ),
      ],
    ));
  }
}
