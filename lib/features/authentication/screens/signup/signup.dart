import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_quest/utils/constants/colors.dart';
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
            children: [
              // Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              Form(
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
                  Row(
                    children: [
                      SizedBox(
                          height: 24,
                          width: 24,
                          child: Checkbox(value: true, onChanged: (value) {})),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: TTexts.iAgreeTo,
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                            text: TTexts.privacyPolicy,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                    color:
                                        dark ? TColors.white : TColors.primary),
                            // decoration: TextDecoration.underline,
                            // decorationColor:
                            //     dark ? TColors.white : TColors.primary
                          ),
                          TextSpan(
                              text: TTexts.and,
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                            text: TTexts.termsAndConditions,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                    color:
                                        dark ? TColors.white : TColors.primary),
                            // decoration: TextDecoration.underline,
                            // decorationColor:
                            //     dark ? TColors.white : TColors.primary
                          ),
                        ]),
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
