import 'package:fitness_app/utils/color.dart';
import 'package:flutter/material.dart';

class TextConstants {
  static const String appTitle = "FitLife Pro";
  static const String appTitle2 = "Get Fit, Stay Fit, Love Life";
  static const String getStarted = "Get Started";
  static const String onboarding1 = "Unleash Your Potential";
  static const String onboarding2 = "Elevate, Conquer, Thrive";
  static const String onboarding3 = "Achieve More, Together";
  static const String onboardingMessage = "Join our FitLife Pro community and unlock your full potential with the support of like-minded individuals. Together, we'll reach new heights in fitness and well-being, making progress a shared journey";
  static const String onboardingMessage3 = "Elevate your strength, endurance, and well-being as you embark on a path to unlock your true potential. Embrace the transformation today.if you give up now you will be in pain forever";
  static const String onboardingMessage2 = "Elevate your fitness levels, conquer your goals, and thrive in a healthier, happier lifestyle.Transform your life one step at a time, and embrace the journey towards a stronger, more vibrant you.";
  static const String welcomeMessage = "Welcome Back,";
  static const String registerMessage = "It will help us to know more about you!";
  static const String exerciseTitle = "Exercises";
  static const String workoutTitle = "Workouts";
  static const String nutritionTitle = "Nutrition";
  static const String settingsTitle = "Settings";
  static const String startWorkoutButton = "Start Your Journey";
  static const String exerciseListTitle = "Choose an Exercise";
  static const String workoutListTitle = "Select a Workout";
  static const String nutritionPlanTitle = "Your Nutrition Plan";
  static const String settingsLabel = "Settings and Preferences";
  static const String aboutAppTitle = "About Our Supercalifragilisticexpialidocious App";
  static const String aboutAppMessage = "This app was crafted with love and a spoonful of sugar!";
  static const String feedbackLabel = "Share Your Feedback";
  static const String feedbackPlaceholder = "Share your thoughts...";

  // Add more text constants as needed for your app
}


// Font Constants

class FontConstants {
  static const TextStyle headline1 = TextStyle(
    fontFamily:"Poppins-Light" ,
    fontSize: 50,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle onBoarding = TextStyle(
    fontFamily:"Poppins" ,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle name = TextStyle(
    fontFamily:"Poppins" ,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle namesmallSize = TextStyle(
    fontFamily:"Poppins" ,
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle bigNumber = TextStyle(
    fontFamily:"Poppins" ,
    fontSize: 60,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle thinBold = TextStyle(
    fontFamily:"Poppins" ,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const TextStyle headline2 = TextStyle(
    fontFamily:"Poppins-Light" ,
    fontSize:17 ,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
    letterSpacing:0.5
  );
  static const TextStyle  thickThin = TextStyle(
    fontFamily:"Poppins" ,
    fontSize:19 ,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    letterSpacing:0.5
  );

  static const TextStyle onBoardingPara = TextStyle(
    fontFamily:"Poppins" ,
    fontSize:14 ,
    fontWeight: FontWeight.normal,
    color: FitnessAppColors.textSecondaryColor,
    letterSpacing:0.5
  );

  static const TextStyle skip = TextStyle(
    fontFamily:"Poppins" ,
    fontSize:14,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 102, 99, 99),
    letterSpacing:0.5
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  // You can define more text styles as needed

  // Example of a custom text style
  static const TextStyle customTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.blue,
    
  );

   static const TextStyle title = TextStyle(
    fontFamily:"Poppins" ,
    fontSize:14,
    fontWeight: FontWeight.w400,
    color: Color.fromARGB(255, 34, 30, 30),
    letterSpacing:0.2
  );

  static const TextStyle title2 = TextStyle(
    fontFamily:"Poppins" ,
    fontSize:14,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    letterSpacing:0.2
  );

  static const TextStyle title3 = TextStyle(
    fontFamily:"Poppins" ,
    fontSize:16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    letterSpacing:0.2
  );
  static const TextStyle small = TextStyle(
    fontFamily:"Poppins" ,
    fontSize:9,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    letterSpacing:0.2
  );
  static const TextStyle smallthin = TextStyle(
    fontFamily:"Poppins" ,
    fontSize:11,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
    letterSpacing:0.2
  );
   static const TextStyle smallthinBold = TextStyle(
    fontFamily:"Poppins" ,
    fontSize:20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    letterSpacing:0.2
  );
   static const TextStyle subTitle = TextStyle(
    fontFamily:"Poppins" ,
    fontSize:12,
    fontWeight: FontWeight.w600,
    color: Color.fromARGB(255, 34, 30, 30),
    letterSpacing:0.6
  );
}
