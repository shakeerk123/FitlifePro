import 'package:get/get.dart';
import 'package:fitness_app/model/exercise.dart';
import 'package:fitness_app/model/exercise_set.dart';

class ExercisePageController extends GetxController {
  final RxInt currentPage = 0.obs;
  final Rx<Exercise> currentExercise;
  final ExerciseSet exerciseSet;

  ExercisePageController(Exercise initialExercise, this.exerciseSet)
      : currentExercise = initialExercise.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
    currentExercise.value = exerciseSet.exercises[index];
  }

  void togglePlaying(bool isPlaying) {
    if (isPlaying) {
      currentExercise.value.controller?.play();
    } else {
      currentExercise.value.controller?.pause();
    }
  }

  void nextVideo() {
    currentPage.value = (currentPage.value + 1) % exerciseSet.exercises.length;
  }

  void rewindVideo() {
    currentPage.value = (currentPage.value - 1).clamp(0, exerciseSet.exercises.length - 1);
  }
}
