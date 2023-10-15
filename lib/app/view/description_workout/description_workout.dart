import 'package:fitness_app/app/view/workout_details/workout_options.dart';
import 'package:fitness_app/utils/color.dart';
import 'package:fitness_app/utils/path_constants.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:fitness_app/widgets/workout_details/workout_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import '../../../../widgets/workout_details/wdAppBar.dart';
import '../../controller/countdown.dart';

class WorkoutDescription extends StatelessWidget {
  const WorkoutDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountdownController controller = Get.put(CountdownController());
    return   SafeArea(
      child: Scaffold(
        body: CustomScrollView(physics:BouncingScrollPhysics(),
          slivers: <Widget>[
             WorkoutDetailsAppBar(iconButton: IconButton(onPressed: (){Get.to(WorkoutOptions());}, icon: Icon(IconlyLight.arrow_left_2)),
              imagePath: AppPaths.gymhead,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
              "Jumping Jack",
              style:FontConstants.namesmallSize ,
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Description:",
              style:FontConstants.namesmallSize2,
            ),
            const SizedBox(height: 8.0),
            const Text(
              "Jumping jacks are a full-body exercise that involves jumping to a position with the legs spread wide and the arms extending overhead, then returning to a position with the feet together and the arms at the sides.",
              style:FontConstants.onBoardingPara ,),
            const SizedBox(height: 16.0),

            // Exercise Timeline
            const Text(
              "How to Do:",
              style:FontConstants.namesmallSize2 ,
            ),
            const SizedBox(height: 8.0),
            const ExerciseStep(
              stepNumber: 1,
              description: "Stand up straight with your feet together and your arms at your sides.",
            ),
            const ExerciseStep(
              stepNumber: 2,
              description: "Jump into the air while spreading your legs out to the sides and raising your arms overhead.",
            ),
            const ExerciseStep(
              stepNumber: 3,
              description: "Land softly with your feet shoulder-width apart and your arms back at your sides.",
            ),
            const ExerciseStep(
              stepNumber: 4,
              description: "Repeat the motion for the desired number of repetitions.",
            ),
            const SizedBox(height: 16.0),
           
              
            Obx(() => Text(
                          'Next workout in: ${controller.countdown.value} seconds',
                          style: FontConstants.namesmallSize2,
                        )),

                    // Add a button to start the countdown
                    ElevatedButton(
                      onPressed: () {
                        controller.startCountdown();
                      },
                      child: Text('Start Countdown'),
                    ),

                    // Add a button to reset the countdown
                    ElevatedButton(
                      onPressed: () {
                        controller.resetCountdown();
                      },
                      child: Text('Reset Countdown'),
                    ),

            
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ExerciseStep extends StatelessWidget {
  final int stepNumber;
  final String description;

  const ExerciseStep({super.key, required this.stepNumber, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$stepNumber.",
            style:FontConstants.onBoardingPara ,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              description,
              style: FontConstants.onBoardingPara,
            ),
          ),
        ],
      ),
    );
  }
}