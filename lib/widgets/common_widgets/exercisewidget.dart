import 'package:fitness_app/data/exercise_sets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/controller/exercise_controller.dart';
import '../../model/exercise_set.dart';
import 'exercise_set_widget.dart';

class ExercisesWidget extends StatelessWidget {
  final ExercisesController controller = Get.put(ExercisesController());

  ExercisesWidget({super.key}); // Initialize the GetX controller

  @override
  Widget build(BuildContext context) => Column(children: [
        // Obx(() => buildDifficultyLevel()),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child:  buildWorkouts(), // Observe selectedType
        ),
      ]);

  Widget buildWorkouts() => GestureDetector(
        child: Column(
          children: exerciseSets
              .where((element) => element.exerciseType == ExerciseType.low)
              .map(
                (exerciseSet) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ExerciseSetWidget(exerciseSet: exerciseSet),
                ),
              )
              .toList(),
        ),
      );

//   Widget buildDifficultyLevel() => Row(
//         children: ExerciseType.values.map(
//           (type) {
//             final name = getExerciseName(type);
//             final fontWeight = controller.selectedType.value == type
//                 ? FontWeight.bold
//                 : FontWeight.normal;

//             return Expanded(
//               child: Center(
//                 child: GestureDetector(
//                   behavior: HitTestBehavior.opaque,
//                   onTap: () => controller.selectedType.value = type,
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(vertical: 8),
//                     child: Text(
//                       name,
//                       style: TextStyle(fontWeight: fontWeight, fontSize: 16),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ).toList(),
//       );
 }
