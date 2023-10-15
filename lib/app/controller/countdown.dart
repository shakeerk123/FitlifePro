import 'package:fitness_app/app/view/description_workout/description_workout.dart';
import 'package:get/get.dart';
import 'dart:async';

class CountdownController extends GetxController {
  final countdown = 10.obs;
  bool isCountdownActive = false;
  late Timer _timer;

  void startCountdown() {
    if (!isCountdownActive) {
      isCountdownActive = true;
      final initialTime = countdown.value;
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        if (countdown.value > 0) {
          countdown.value--;
        } else {
          timer.cancel();
          isCountdownActive = false;

          // Automatically redirect to the next workout screen
          navigateToNextWorkout();
        }
      });
    }
  }

  void resetCountdown() {
    isCountdownActive = false;
    _timer.cancel();
    countdown.value = 10;
  }

  void navigateToNextWorkout() {
    // Perform actions to go to the next workout screen here
    // For example, you can use Get.to() or Navigator.push() to navigate.
    Get.to(WorkoutDescription());
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}
