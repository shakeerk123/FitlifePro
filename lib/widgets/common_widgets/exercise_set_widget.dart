
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/exercise_set.dart';
import 'exercise_page.dart';

class ExerciseSetWidget extends StatelessWidget {
  final ExerciseSet exerciseSet;

  const ExerciseSetWidget({super.key, 
    required this.exerciseSet,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: (){
          Get.to(ExercisePage(exerciseSet : exerciseSet));
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 100,
          decoration: BoxDecoration(
            color: exerciseSet.color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Expanded(flex: 3, child: buildText()),
              Expanded(child: Image.asset(exerciseSet.imageUrl))
            ],
          ),
        ),
      );

  Widget buildText() {
    final exercises = exerciseSet.exercises.length;
    final minutes = exerciseSet.totalDuration;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          exerciseSet.name,
          style: FontConstants.title3,
        ),
        const SizedBox(height: 15),
        Text('$exercises Exercises $minutes Mins',style: FontConstants.subTitle,),
      ],
    );
  }
}
