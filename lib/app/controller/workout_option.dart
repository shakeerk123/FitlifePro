import 'package:fitness_app/app/view/workouts_fullbody/armraises.dart';
import 'package:fitness_app/app/view/workouts_fullbody/cobra_stretch.dart';
import 'package:fitness_app/app/view/workouts_fullbody/inclinepushups.dart';
import 'package:fitness_app/app/view/workouts_fullbody/jumpingsheet.dart';
import 'package:fitness_app/app/view/workouts_fullbody/pushups.dart';
import 'package:fitness_app/app/view/workouts_fullbody/skipping.dart';
import 'package:fitness_app/app/view/workouts_fullbody/squats.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class WorkoutOptionsController extends GetxController {
  void showWorkoutDetails(Widget workoutDetails) {
    Get.bottomSheet(
      Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        height: Get.height * 0.85, // 3/4 of the screen height
        child: workoutDetails,
      ),
      elevation: 5.0,
      isScrollControlled: true, // Make the bottom sheet full-screen
    );
  }

  void onTapJumpingJack() {
    showWorkoutDetails(const JumpingJackDetails());
  }

  void onTapSkipping() {
    showWorkoutDetails(const SkippingDetails());
  }

  void onTapingSqarts() {
    showWorkoutDetails(const SquatsDetails());
  }

  void onTapArm() {
    showWorkoutDetails(const ArmRaisesDetails());
  }

  void onTapInlined() {
    showWorkoutDetails(const InclinedPushUpsDetails());
  }

  void onTapPushup() {
    showWorkoutDetails(const PushUpDetails());
  }

  void onTapCobra() {
    showWorkoutDetails(const CobraStretchDetails());
  }

  // Define more functions for other workouts as needed
}
