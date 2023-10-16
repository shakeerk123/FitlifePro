import 'package:fitness_app/app/view/Gnav/gnav_navigation.dart';
import 'package:fitness_app/app/view/workout_tracker/workouttracker_screen.dart';
import 'package:fitness_app/utils/path_constants.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import '../../../../widgets/workout_details/wdAppBar.dart';

class WorkoutOptions extends StatelessWidget {
  const WorkoutOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: CustomScrollView(physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            WorkoutDetailsAppBar(iconButton: IconButton(onPressed: (){Get.to(GnavNavigation());}, icon:const Icon(IconlyLight.arrow_left_2)),
              imagePath: AppPaths.gymmen,
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Beginner Workouts',
                      style: FontConstants.thinBold,
                    ),
                    SizedBox(height: 16.0),
                    ListTile(
                      trailing: Icon(IconlyLight.arrow_right_2),
                      title: Text(
                        "Abs",
                        style: FontConstants.title,
                      ),
                      subtitle: Text("12 min"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/abs1.jpg'),
                        radius: 30,
                      ),
                    ),
                    ListTile(
                      trailing: Icon(IconlyLight.arrow_right_2),
                      title: Text(
                        "Chest",
                        style: FontConstants.title,
                      ),
                      subtitle: Text("13 min"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/chest.jpg"),
                        radius: 30,
                      ),
                    ),
                    ListTile(
                      trailing: Icon(IconlyLight.arrow_right_2),
                      title: Text(
                        "Arm",
                        style: FontConstants.title,
                      ),
                      subtitle: Text("03:00"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(AppPaths.workoutImage),
                        radius: 30,
                      ),
                    ),
                    ListTile(
                      trailing: Icon(IconlyLight.arrow_right_2),
                      title: Text(
                        "Leg",
                        style: FontConstants.title,
                      ),
                      subtitle: Text("03:00"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/leg.jpg"),
                        radius: 30,
                      ),
                    ),
                    ListTile(
                      trailing: Icon(IconlyLight.arrow_right_2),
                      title: Text(
                        "Shoulder & Back",
                        style: FontConstants.title,
                      ),
                      subtitle: Text("03:00"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/back.jpg"),
                        radius: 30,
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
