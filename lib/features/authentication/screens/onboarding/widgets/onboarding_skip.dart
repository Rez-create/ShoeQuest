import 'package:flutter/material.dart';
import 'package:shoe_quest/features/authentication/controllers/onboarding_controller.dart';
import 'package:shoe_quest/utils/constants/sizes.dart';
import 'package:shoe_quest/utils/device/device_utility.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpaces,
        child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('Skip')));
  }
}