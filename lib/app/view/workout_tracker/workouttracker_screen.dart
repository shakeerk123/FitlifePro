import 'package:fitness_app/app/view/home/homepage.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../utils/path_constants.dart';
import '../../../widgets/home_widgets/homepagemaincard.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            Colors.blue, // Replace with your desired background color
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 45, right: 45),
                  child: Container(
                    width: double.infinity,
                    color: Colors
                        .blue, // Replace with your desired background color
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        // Workout animation
                        Lottie.asset(AppPaths.particleLottie, width: 400),
                        Image.asset(AppPaths.workoutvectorImage,
                            width: 160), // Particle animation
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Workout",
                        style: FontConstants.namesmallSizewhite,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors
                      .white, // Replace with your desired background color
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "What Do You Want to Train",
                        style: FontConstants.title3,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(const HomeScreen());
                        },
                        child: const HomePageCard(
                          colour:
                              Colors.blue, // Replace with your desired color
                          imagePath: 'assets/images/Vector (1).png',
                          subTitle: '160 Cal Burn | 13 min',
                          title: 'Lowerbody Workouts',
                        ),
                      ),
                      // Add more HomePageCard widgets as needed
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
