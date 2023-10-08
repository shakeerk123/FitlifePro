import 'package:fitness_app/app/view/profile/profile_screen.dart';
import 'package:fitness_app/app/view/workout_tracker/workouttracker_screen.dart';
import 'package:get/get.dart';
import 'package:fitness_app/app/view/home/homepage.dart';

void navigateToHomeScreen() {
  Get.to(const HomeScreen());
}

// Define other navigation functions for different screens as needed
// For example:
 void navigateToProfileScreen() {
   Get.to(const ProfileScreen());
 }

 void navigateToWorkoutScreen() {
   Get.to(const WorkoutScreen());
 }