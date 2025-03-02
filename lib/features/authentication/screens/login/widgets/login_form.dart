import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_quest/utils/constants/sizes.dart';
import 'package:shoe_quest/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding:
          const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          // Email
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputField),
    
          // Password
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffix: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputField / 2),
    
          // Remember Me and Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(TTexts.rememberMe),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(TTexts.forgotPassword),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwSections),
    
          // Login Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(TTexts.signIn),
            ),
          ),
    
          SizedBox(height: TSizes.spaceBtwItems),
    
          // Register
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    ));
  }
}

