import 'package:flutter/material.dart';
import '../../../utils/text_constanst.dart';
import '../../../widgets/common_widgets/gif_container.dart';
import '../../../widgets/exercise_steps/steps.dart';

class InclinedPushUpsDetails extends StatelessWidget {
  const InclinedPushUpsDetails({Key? key}) : super(key: key);

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
            GifContainer(imagePath: 'https://www.verywellfit.com/thmb/GG7EXAUxQvwxiu4QAzDBPu6yy44=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/90-3120038--Incline-PushupsGIF-d321334ec54849539010832028d5635a.gif'),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Inclined Push-Ups",
                    style: FontConstants.name,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Description:",
                    style: FontConstants.onBoarding,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Inclined Push-Ups is an exercise that targets the chest and triceps. It is a modification of traditional push-ups and is performed with your hands elevated on an incline, making it slightly easier for beginners.",
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
                        "Place your hands on an elevated surface, like a bench or step, with your arms extended and shoulder-width apart.",
                  ),
                  ExerciseStep(
                    stepNumber: 2,
                    description:
                        "Keep your body in a straight line from head to heels.",
                  ),
                  ExerciseStep(
                    stepNumber: 3,
                    description: "Lower your chest toward the surface by bending your elbows.",
                  ),
                  ExerciseStep(
                    stepNumber: 4,
                    description: "Push your body back up to the starting position by extending your arms.",
                  ),
                  ExerciseStep(
                    stepNumber: 5,
                    description:
                        "Repeat the inclined push-ups for the desired number of repetitions.",
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
