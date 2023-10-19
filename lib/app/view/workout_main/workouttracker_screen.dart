import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color.dart';
import '../../../utils/path_constants.dart';
import '../../../utils/text_constanst.dart';
import '../../../widgets/exercise_steps/exercise_widgetTwo.dart';
import '../../../widgets/workout_details/wdAppBar.dart';
import '../../../widgets/workout_details/workout_card.dart';
import '../workouts_fullbody/fullbody_tile.dart';

class WorkoutScreen extends StatelessWidget {
   WorkoutScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> workoutData = [
    {
      'title': 'Fullbody',
      'subtitle': '8 Workouts',
      'imagePath': AppPaths.gym4,
    },
    {
      'title': 'Upperbody',
      'subtitle': '5 Workouts',
      'imagePath': AppPaths.gym5,
    },
    {
      'title': 'Advanced',
      'subtitle': '8 workouts',
      'imagePath': AppPaths.gym6,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            const WorkoutDetailsAppBar(
              imagePath: AppPaths.gymhead,
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What do you Want to Train',
                      style: FontConstants.title3,
                    ),
                    const SizedBox(height: 16.0),
                    const Divider(color: FitnessAppColors.card2, height: 1.0),
                    _buildWorkoutCards(context),
                    SizedBox(height: 10),
                    ExercisesWidgetTwo(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkoutCards(BuildContext context) {
    return Container(
      height: 250, // Adjust the height as needed
      child: PageView.builder(
        itemCount: workoutData.length,
        itemBuilder: (context, index) {
          final workout = workoutData[index];
          return _buildWorkoutCard(workout['title']!, workout['subtitle']!, workout['imagePath']!, context);
        },
      ),
    );
  }

  void _handleCardTap(BuildContext context, String title) {
    if (title == 'Fullbody') {
      Get.to(const FullbodyOptions());
    } else if (title == 'Upperbody') {
      Get.to(const FullbodyOptions());
    } else if (title == 'Advanced') {
      Get.to(const FullbodyOptions());
    }
  }

  Widget _buildWorkoutCard(String title, String subtitle, String imagePath, BuildContext context) {
    return InkWell(
      onTap: () {
        _handleCardTap(context, title);
      },
      child: WorkoutCard(
        subtitle: subtitle,
        title: title,
        imagePath: imagePath,
      ),
    );
  }
}
