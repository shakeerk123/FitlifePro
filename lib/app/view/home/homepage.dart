import 'package:carousel_slider/carousel_slider.dart';
// Note the corrected import
import 'package:fitness_app/utils/path_constants.dart';
import 'package:fitness_app/widgets/workout_details/workout_card.dart';
import 'package:flutter/material.dart';
import '../../../utils/text_constanst.dart';
import '../../../widgets/common_widgets/exercisewidget.dart';
import '../../../widgets/home_widgets/gridwidget.dart';
import '../../../widgets/home_widgets/todaytarget.dart';
import '../../../widgets/home_widgets/welcome_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 20,
            ),
            const WelcomeWidget(),
            const SizedBox(height: 10),

            // Carousel Slider
            CarouselSlider(
              options: CarouselOptions(
                  height: 200.0,
                  viewportFraction: 0.8,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: true),
              items: const [
                WorkoutCard(
                    title: "Warmup",
                    subtitle: "5 workouts",
                    imagePath: AppPaths.warmup),
                WorkoutCard(
                    title: "Fullbody",
                    subtitle: "9 workouts",
                    imagePath: AppPaths.fullbody),
                WorkoutCard(
                    title: "Strenthen",
                    subtitle: "4 workouts",
                    imagePath: AppPaths.girl1),
                // Add more cards as needed
              ],
            ),

            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Beginner Workouts",
                style: FontConstants.thinBold,
              ),
            ),
            ExercisesWidget(),
          ],
        ),
      ),
    );
  }
}
