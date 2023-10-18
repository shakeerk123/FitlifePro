import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';

import '../../../widgets/common_widgets/gif_container.dart';
import '../../../widgets/exercise_steps/steps.dart';

class ArmRaisesDetails extends StatelessWidget {
  const ArmRaisesDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GifContainer(imagePath: 'https://i.pinimg.com/originals/91/17/78/9117786d904abf22b54c0ff21d905405.gif'),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Arm Raises",
                    style: FontConstants.name,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Description:",
                    style: FontConstants.onBoarding,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Arm Raises is an exercise that involves raising your arms in various directions to work on your shoulder muscles and upper body strength.",
                    style: FontConstants.onBoardingPara,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "How to Do:",
                    style: FontConstants.onBoarding,
                  ),
                  SizedBox(height: 8.0),
                  ExerciseStep(
                    stepNumber: 1,
                    description: "Stand with your feet shoulder-width apart.",
                  ),
                  ExerciseStep(
                    stepNumber: 2,
                    description: "Extend your arms straight in front of you at shoulder height.",
                  ),
                  ExerciseStep(
                    stepNumber: 3,
                    description: "Lower your arms back to your sides.",
                  ),
                  ExerciseStep(
                    stepNumber: 4,
                    description: "Raise your arms to the sides at shoulder level.",
                  ),
                  ExerciseStep(
                    stepNumber: 5,
                    description: "Lower your arms to your sides again.",
                  ),
                  ExerciseStep(
                    stepNumber: 6,
                    description: "Repeat the arm raises for the desired number of repetitions.",
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
