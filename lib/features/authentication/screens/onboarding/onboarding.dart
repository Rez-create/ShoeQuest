import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_quest/features/authentication/controllers/onboarding_controller.dart';
import 'package:shoe_quest/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:shoe_quest/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:shoe_quest/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shoe_quest/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:shoe_quest/utils/constants/image_strings.dart';
import 'package:shoe_quest/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onboardingImage1,
                title: TTexts.onboardingTitle1,
                subTitle: TTexts.onboardingSubtitle1,
              ),
              OnBoardingPage(
                image: TImages.onboardingImage2,
                title: TTexts.onboardingTitle3,
                subTitle: TTexts.onboardingSubtitle3,
              ),
              OnBoardingPage(
                image: TImages.onboardingImage3,
                title: TTexts.onboardingTitle2,
                subTitle: TTexts.onboardingSubtitle2,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Smooth Page Indicator
          const OnBoardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton(), 
        ],
      ),
    );
  }
}

