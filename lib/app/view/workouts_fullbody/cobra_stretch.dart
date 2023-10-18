import 'package:flutter/material.dart';
import '../../../utils/text_constanst.dart';
import '../../../widgets/common_widgets/gif_container.dart';
import '../../../widgets/exercise_steps/steps.dart';

class CobraStretchDetails extends StatelessWidget {
  const CobraStretchDetails({Key? key}) : super(key: key);

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
            GifContainer(
              imagePath: 'https://media.tenor.com/bHvaGEjp7PcAAAAC/workout-working-out.gif', // Replace with the actual URL of your Cobra Stretch GIF
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cobra Stretch",
                    style: FontConstants.name,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Description:",
                    style: FontConstants.onBoarding,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "The Cobra Stretch is a yoga pose that stretches the muscles in the chest, shoulders, and abdomen. It also helps improve flexibility and relieve back pain.",
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
                        "Lie face down on the floor with your legs extended and your palms placed next to your shoulders.",
                  ),
                  ExerciseStep(
                    stepNumber: 2,
                    description:
                        "Press your palms into the floor and lift your chest off the ground, keeping your lower body relaxed.",
                  ),
                  ExerciseStep(
                    stepNumber: 3,
                    description: "Arch your back and look upward, keeping your elbows slightly bent.",
                  ),
                  ExerciseStep(
                    stepNumber: 4,
                    description: "Hold the stretch for a few seconds and then lower your chest back to the floor.",
                  ),
                  ExerciseStep(
                    stepNumber: 5,
                    description:
                        "Repeat the Cobra Stretch as needed to improve flexibility and relieve tension.",
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
