
import 'package:flutter/material.dart';

import '../../../utils/text_constanst.dart';
import '../../../widgets/common_widgets/gif_container.dart';
import '../../../widgets/exercise_steps/steps.dart';

class SkippingDetails extends StatelessWidget {
  const SkippingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const SingleChildScrollView(
       physics:BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GifContainer(
              imagePath: 'https://i0.wp.com/post.healthline.com/wp-content/uploads/2022/06/HL-05.02.JumpRope.gif?w=1155&h=840', // Replace with the actual URL of your Skipping GIF
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Skipping",
                    style: FontConstants.name,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Description:",
                    style: FontConstants.name,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Skipping is a cardiovascular exercise that involves jumping over a rope as it swings over your body. It is a great way to improve your heart health, coordination, and endurance.",
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
                    description: "Hold a jump rope with both hands, one end in each hand.",
                  ),
                  ExerciseStep(
                    stepNumber: 2,
                    description: "Swing the rope over your body and jump over it as it comes under your feet.",
                  ),
                  ExerciseStep(
                    stepNumber: 3,
                    description: "Continue jumping over the rope in a rhythmic motion.",
                  ),
                  ExerciseStep(
                    stepNumber: 4,
                    description: "Repeat the motion for the desired duration.",
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
