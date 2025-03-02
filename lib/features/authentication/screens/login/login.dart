import 'package:flutter/material.dart';
import 'package:shoe_quest/common/styles/spacing_styles.dart';
import 'package:shoe_quest/common/widgets/login_signup/form_divider.dart';
import 'package:shoe_quest/common/widgets/login_signup/social_buttons.dart';
import 'package:shoe_quest/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shoe_quest/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shoe_quest/utils/constants/sizes.dart';
import 'package:shoe_quest/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: TSpacingStyle.paddingWithAppBarHeight,
      child: Column(
        children: [
          // Logo Title Subtitle
          TLoginHeader(dark: dark),

          // Form
          const TLoginForm(),
          // Divider
          TFormDivider(dark: dark),
          SizedBox(height: TSizes.spaceBtwSections),

          // Footer ----Social Media Icons
          const TSocialButtons(),
        ],
      ),
    )));
  }
}



