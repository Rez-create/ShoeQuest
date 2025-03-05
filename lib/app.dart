import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_quest/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shoe_quest/utils/theme/theme.dart';

//Use this class to set up themes, initial bidings and any animations
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}