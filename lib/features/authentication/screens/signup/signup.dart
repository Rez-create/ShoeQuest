import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_quest/common/widgets/login_signup/form_divider.dart';
import 'package:shoe_quest/common/widgets/login_signup/social_buttons.dart';
import 'package:shoe_quest/features/authentication/screens/signup/widgets/signup_form.dart';

import 'package:shoe_quest/utils/constants/sizes.dart';
import 'package:shoe_quest/utils/constants/text_strings.dart';
import 'package:shoe_quest/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpaces),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              TSignupForm(
                dark: dark,
              ),

              const SizedBox(height: TSizes.spaceBtwSections),
              // Divider
              TFormDivider(
                dividerText: TTexts.orSignUpWith.capitalize!,
                dark: dark,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Social Media Buttons
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
