import 'package:fitness_app/app/view/workouts/skipping.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/workouts/jumpingsheet.dart';

class WorkoutOptionsController extends GetxController {
  void onTapJumpingJack() {
    Get.bottomSheet(
      Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), // Adjust the radius as needed
            topRight: Radius.circular(20.0), // Adjust the radius as needed
          ),
          color: Colors.white,
        ),
        height: Get.height * 0.80, // 3/4 of the screen height
        child: const JumpingJackDetails(),
      ),
      
      elevation: 5.0,
      isScrollControlled: true, // Make the bottom sheet full-screen
    );
  }
  void onTapSkipping() {
    Get.bottomSheet(
      Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), // Adjust the radius as needed
            topRight: Radius.circular(20.0), // Adjust the radius as needed
          ),
          color: Colors.white,
        ),
        height: Get.height * 0.80, // 3/4 of the screen height
        child: const SkippingDetails
        (),
      ),
      
      elevation: 5.0,
      isScrollControlled: true, // Make the bottom sheet full-screen
    );
  }

  // Define more functions for other workouts as needed
}
