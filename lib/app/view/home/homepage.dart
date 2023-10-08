import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/utils/color.dart'; // Note the corrected import
import 'package:fitness_app/utils/path_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconly/iconly.dart';
import '../../../utils/text_constanst.dart';
import '../../../widgets/home_widgets/gridwidget.dart';
import '../../../widgets/home_widgets/homepagemaincard.dart';
import '../../../widgets/home_widgets/todaytarget.dart';
import '../../../widgets/home_widgets/welcome_widget.dart';
import '../../../widgets/home_widgets/workout_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const WelcomeWidget(),
            const SizedBox(height: 10),

            // Carousel Slider
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 900),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
              items: const [
                HomePageCard(
                  colour: FitnessAppColors.card1,
                  imagePath: 'assets/images/Layer 5.png',
                  subTitle: '200 Cal Burn | 18 min',
                  title: 'Fullbody Workouts',
                ),
                HomePageCard(
                  colour: FitnessAppColors.card1,
                  imagePath: 'assets/images/Vector (1).png',
                  subTitle: '160 Cal Burn | 13 min',
                  title: 'Lowerbody Workouts',
                ),
                HomePageCard(
                  colour: FitnessAppColors.card1,
                  imagePath: 'assets/images/Vector (2).png',
                  subTitle: '180 Cal Burn | 20 min',
                  title: 'Ab Workouts',
                ),
                // Add more cards as needed
              ],
            ),
            const SizedBox(height: 20),
            const TodayTargetWidget(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Activity Status",
                style: FontConstants.thinBold,
              ),
            ),
            const GridWidget(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Workouts",
                style: FontConstants.thinBold,
              ),
            ),
            const WorkoutWidget(
              title: 'Upperbody Workout',
              path: AssetImage(AppPaths.workoutImage),
              percent: 0.5,
              subTitle: '100 kCal Burn | 20 min',
            ),
            const WorkoutWidget(
              title: 'Upperbody Workout',
              path: AssetImage(AppPaths.workoutImage),
              percent: 0.3,
              subTitle: '100 kCal Burn | 20 min',
            ),
            const WorkoutWidget(
              title: 'Upperbody Workout',
              path: AssetImage(AppPaths.workoutImage),
              percent: 0.7,
              subTitle: '100 kCal Burn | 20 min',
            ),
            const WorkoutWidget(
              title: 'Upperbody Workout',
              path: AssetImage(AppPaths.workoutImage),
              percent: 0.9,
              subTitle: '100 kCal Burn | 20 min',
            ),
          ],
        ),
      ),
    );
  }
}
