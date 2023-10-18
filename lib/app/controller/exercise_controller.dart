import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

import '../../model/exercise_set.dart';

class ExercisesController extends GetxController {
  var selectedType = ExerciseType.low.obs; // Observe selectedType

  void swipeFunction(DragEndDetails dragEndDetails) {
    final selectedIndex = ExerciseType.values.indexOf(selectedType.value);
    final hasNext = selectedIndex < ExerciseType.values.length - 1;
    final hasPrevious = selectedIndex > 0;

    if (dragEndDetails.primaryVelocity! < 0 && hasNext) {
      final nextType = ExerciseType.values[selectedIndex + 1];
      selectedType.value = nextType;
    } else if (dragEndDetails.primaryVelocity! > 0 && hasPrevious) {
      final previousType = ExerciseType.values[selectedIndex - 1];
      selectedType.value = previousType;
    }
  }
}
