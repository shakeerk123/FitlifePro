import 'package:fitness_app/app/view/workouts_fullbody/fullbody_tile.dart';
import 'package:fitness_app/utils/color.dart';
import 'package:fitness_app/utils/path_constants.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:fitness_app/widgets/workout_details/workout_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widgets/workout_details/wdAppBar.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics:const BouncingScrollPhysics(),
          slivers: <Widget>[
            const WorkoutDetailsAppBar(
              imagePath: AppPaths.gymhead,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What do you Want to Train',
                      style: FontConstants.title3,
                    ),
                  const  SizedBox(height: 16.0),
                  const   Divider(color: FitnessAppColors.card2, height: 1.0),
                    _buildWorkoutCard('Fullbody',"8 Workouts", AppPaths.gym4, context),
                    _buildWorkoutCard('Upperbody',"5 Workouts", AppPaths.gym5, context),
                    _buildWorkoutCard('Advanced',"8", AppPaths.gym6, context),
                    _buildWorkoutCard('Beginner',"8", AppPaths.gym4, context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleCardTap(BuildContext context, String title) {
    // Handle the tap event for the specific card here.
   if (title == 'Fullbody') {
    Get.to(const FullbodyOptions());
  } else if (title == 'Upperbody') {
   Get.to(const FullbodyOptions());
  } else if (title == 'Advanced') {
    Get.to(const FullbodyOptions());
  }
  
  }

  Widget _buildWorkoutCard(String title,String subtitle, String imagePath, BuildContext context) {
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
