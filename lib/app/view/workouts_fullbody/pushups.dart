
import 'package:flutter/material.dart';

import '../../../utils/text_constanst.dart';
import '../../../widgets/common_widgets/gif_container.dart';
import '../../../widgets/exercise_steps/steps.dart';

class PushUpDetails extends StatelessWidget {
  const PushUpDetails({Key? key}) : super(key: key);

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
            GifContainer(imagePath: 'https://www.verywellfit.com/thmb/QbzJaBojLh1tGjw7hI6bQZi-1tk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/basicpushup-6d55a2fb6179471494e8fa9a04d8615a.gif'),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Push-Up",
                    style: FontConstants.name,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Description:",
                    style: FontConstants.onBoarding,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Push-Up is a classic bodyweight exercise that targets the chest, triceps, and shoulders. It is performed by lowering your body to the ground and pushing it back up with your arms.",
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
                    description: "Start in a plank position with your hands placed shoulder-width apart.",
                  ),
                  ExerciseStep(
                    stepNumber: 2,
                    description: "Lower your body by bending your elbows while keeping your body in a straight line.",
                  ),
                  ExerciseStep(
                    stepNumber: 3,
                    description: "Lower yourself until your chest touches the ground or as far as you can comfortably go.",
                  ),
                  ExerciseStep(
                    stepNumber: 4,
                    description: "Push your body back up to the starting position by extending your arms.",
                  ),
                  ExerciseStep(
                    stepNumber: 5,
                    description: "Repeat push-ups for the desired number of repetitions.",
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
