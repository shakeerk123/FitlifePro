import 'package:fitness_app/utils/color.dart';
import 'package:fitness_app/utils/path_constants.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:fitness_app/widgets/home_widgets/homepagemaincard.dart';
import 'package:fitness_app/widgets/workout_details/workout_card.dart';
import 'package:flutter/material.dart';
import '../../../../widgets/workout_details/wdAppBar.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            const WorkoutDetailsAppBar(),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What do you Want to Train',
                      style: FontConstants.title3,
                    ),
                   
                    
                    const SizedBox(height: 16.0),
                    const Divider(color: FitnessAppColors.card2, height: 1.0),
                    const WorkoutCard(
                      subtitle: '5 workouts',
                      title: 'Beginner',
                      imagePath: AppPaths.gym4,
                    ),
                    const WorkoutCard(
                      subtitle: '5 workouts',
                      title: 'Intermediate',
                      imagePath: AppPaths.gym5,
                    ),
                    const WorkoutCard(
                      subtitle: '5 workouts',
                      title: 'Advanced',
                      imagePath: AppPaths.gym6,
                    ),
                     const WorkoutCard(
                      subtitle: '5 workouts',
                      title: 'Beginner',
                      imagePath: AppPaths.gym4,
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
