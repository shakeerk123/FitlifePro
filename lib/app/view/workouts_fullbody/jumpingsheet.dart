import 'package:flutter/material.dart';

import '../../../widgets/common_widgets/gif_container.dart';
import '../../../widgets/exercise_steps/steps.dart';

class JumpingJackDetails extends StatelessWidget {
  const JumpingJackDetails({Key? key}) : super(key: key);

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
            GifContainer(imagePath: 'https://www.icegif.com/wp-content/uploads/icegif-134.gif',),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jumping Jack",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Description:",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Jumping jacks are a full-body exercise that involves jumping to a position with the legs spread wide and the arms extending overhead, then returning to a position with the feet together and the arms at the sides.",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "How to Do:",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  ExerciseStep(
                    stepNumber: 1,
                    description:
                        "Stand up straight with your feet together and your arms at your sides.",
                  ),
                  ExerciseStep(
                    stepNumber: 2,
                    description:
                        "Jump into the air while spreading your legs out to the sides and raising your arms overhead.",
                  ),
                  ExerciseStep(
                    stepNumber: 3,
                    description:
                        "Land softly with your feet shoulder-width apart and your arms back at your sides.",
                  ),
                  ExerciseStep(
                    stepNumber: 4,
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


