import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';

import '../../../widgets/common_widgets/gif_container.dart';
import '../../../widgets/exercise_steps/steps.dart';

class SquatsDetails extends StatelessWidget {
  const SquatsDetails({Key? key}) : super(key: key);

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
            GifContainer(imagePath: 'https://images-prod.healthline.com/hlcmsresource/images/topic_centers/Fitness-Exercise/GIFs/400x400_5_Exercises_for_Anterior_Pelvic_Tilt_Squats.gif'),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Squats",
                    style: FontConstants.name,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Description:",
                    style: FontConstants.onBoarding,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Squats are a lower body exercise that involves bending your knees and hips while keeping your back straight. It's an effective exercise for working your quadriceps, hamstrings, and glutes.",
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
                    description:
                        "Stand up straight with your feet shoulder-width apart.",
                  ),
                  ExerciseStep(
                    stepNumber: 2,
                    description:
                        "Lower your body by bending your knees and pushing your hips back, as if you're sitting in a chair.",
                  ),
                  ExerciseStep(
                    stepNumber: 3,
                    description:
                        "Keep your back straight and your knees behind your toes.",
                  ),
                  ExerciseStep(
                    stepNumber: 4,
                    description:
                        "Lower yourself until your thighs are parallel to the ground or as far as you can comfortably go.",
                  ),
                  ExerciseStep(
                    stepNumber: 5,
                    description:
                        "Push through your heels to return to the starting position.",
                  ),
                  ExerciseStep(
                    stepNumber: 6,
                    description:
                        "Repeat the motion for the desired number of repetitions.",
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
