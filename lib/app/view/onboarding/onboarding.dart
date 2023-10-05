import 'package:fitness_app/utils/text_constanst.dart';
import 'package:fitness_app/app/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import '../../../utils/color.dart';

class OnBoardingScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      
        imageUrl: 'assets/images/Frame1.png',
        titleTextStyle: FontConstants.onBoarding,
        title: TextConstants.onboarding1,
        subTitleTextStyle: FontConstants.onBoardingPara,
        subTitle: TextConstants.onboardingMessage),
    Introduction(
        imageUrl: 'assets/images/Frame2.png',
        titleTextStyle: FontConstants.onBoarding,
        title: TextConstants.onboarding2,
        subTitleTextStyle: FontConstants.onBoardingPara,
        subTitle: TextConstants.onboardingMessage2),
    Introduction(
        imageUrl: 'assets/images/Frame3.png',
        titleTextStyle: FontConstants.onBoarding,
        title: TextConstants.onboarding3,
        subTitleTextStyle: FontConstants.onBoardingPara,
        subTitle: TextConstants.onboardingMessage3),
  ];

   OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Colors.white,
      foregroundColor: FitnessAppColors.progressIndicator,
      introductionList: list,
      skipTextStyle: FontConstants.skip,
      onTapSkipButton: () {
        Get.to(const SplashScreen());
      },
    );
  }
}
