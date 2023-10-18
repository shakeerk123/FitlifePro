import 'package:fitness_app/app/view/Gnav/gnav_navigation.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import '../../../../widgets/workout_details/wdAppBar.dart';
import '../../../widgets/workouts/workouts_tile.dart';
import '../../controller/gnav_controller.dart';
import '../../controller/workout_option.dart';

class UpperbodyOptions extends StatelessWidget {
  const UpperbodyOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WorkoutOptionsController());
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            WorkoutDetailsAppBar(
              iconButton: IconButton(
                  onPressed: () {
                    Get.find<GnavController>().changeTabIndex(1);
                    Get.offAll(const GnavNavigation());
                  },
                  icon: const Icon(IconlyLight.arrow_left_2)),
              imagePath: "assets/images/chest.jpg",
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Upperbody Workouts',
                      style: FontConstants.thinBold,
                    ),
                    const SizedBox(height: 16.0),
                    InkWell(
                      onTap: controller.onTapJumpingJack,
                      child: const WorkoutsListtile(
                        image: 'assets/images/Vector-Exercises.png',
                        title: 'Jumping Jack',
                        subtitle: '12x',
                      ),
                    ),
                    // ListTile for Skipping Exercise
                    InkWell(
                      onTap:controller.onTapSkipping,
                      child: const WorkoutsListtile(
                        image: 'assets/images/Vector (5).png',
                        title: 'Skipping',
                        subtitle: '15x',
                      ),
                    ),

                    InkWell(
                      onTap:controller.onTapingSqarts,
                      child: const WorkoutsListtile(
                        image: 'assets/images/Vector (6).png',
                        title: 'Squats',
                        subtitle: '20x',
                      ),
                    ),

                    InkWell(
                      onTap:controller.onTapArm,
                      child: const WorkoutsListtile(
                        image: 'assets/images/Vector (7).png',
                        title: 'Arm Raises',
                        subtitle: '01:00',
                      ),
                    ),

                    const WorkoutsListtile(
                      image: 'assets/images/Vector (8).png',
                      title: 'Rest and Drink',
                      subtitle: '02:00',
                    ),

                    InkWell(
                      onTap:controller.onTapInlined,
                      child: const WorkoutsListtile(
                        image: 'assets/images/Vector-Exercises (1).png',
                        title: 'Incline Push-Ups',
                        subtitle: '12x',
                      ),
                    ),

                    InkWell(
                      onTap:controller.onTapPushup,
                      child: const WorkoutsListtile(
                        image: 'assets/images/Vector (9).png',
                        title: 'Push-Ups',
                        subtitle: '15x',
                      ),
                    ),
                    InkWell(
                      onTap:controller.onTapSkipping,
                      child: const WorkoutsListtile(
                        image: 'assets/images/Vector (5).png',
                        title: 'Skipping 2',
                        subtitle: '10x',
                      ),
                    ),

                    InkWell(
                      onTap:controller.onTapCobra,
                      child: const WorkoutsListtile(
                        image: 'assets/images/Vector-Exercises (3).png',
                        title: 'Cobra Stretch',
                        subtitle: '15x',
                      ),
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
