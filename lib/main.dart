
import 'package:fitness_app/view/onboarding/onboarding1/onboarding_one.dart';
import 'package:fitness_app/view/onboarding/onboarding2/onboarding2_two.dart';
import 'package:fitness_app/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/onboarding/onboarding3/onboarding_three.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingThree(),
    );
  }
}

