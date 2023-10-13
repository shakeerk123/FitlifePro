import 'package:fitness_app/utils/color.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';
import '../../../../widgets/workout_details/wdAppBar.dart';

class WorkoutDetailstwoo extends StatelessWidget {
  const WorkoutDetailstwoo({Key? key}) : super(key: key);

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
                      'Workouts',
                      style: FontConstants.title3,
                    ),
                    const SizedBox(height: 8.0),
                    DefaultTextStyle(
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: FitnessAppColors.card2),
                      child: Row(
                        children: [
                          const Text('Fullbody'),
                          const SizedBox(width: 8.0),
                          Container(
                            height: 5.0,
                            width: 5.0,
                            decoration: const BoxDecoration(
                              color: FitnessAppColors.card2,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          const Text('60 mins'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Divider(color: FitnessAppColors.card2, height: 1.0),
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
