import 'package:fitness_app/app/view/home/homepage.dart';
import 'package:fitness_app/utils/color.dart';

import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/path_constants.dart';
import '../../../widgets/home_widgets/homepagemaincard.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        backgroundColor: FitnessAppColors.logoColor2,
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 45, right: 45),
                  child: Container(
                    width: double.infinity,
                    color: FitnessAppColors.logoColor2,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Workout animation
                        Lottie.asset(AppPaths.particleLottie, width: 400),
                        Lottie.asset(AppPaths.workoutvectorImage,
                            width: 220), // Particle animation
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FitnessAppColors.box,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(const HomeScreen());
                            },
                            icon: const Icon(IconlyLight.arrow_left_2),
                          ),
                        ),
                      ),
                      const Text(
                        "Workout",
                        style: FontConstants.namesmallSizewhite,
                      ),
                      const SizedBox(
                          width:
                              40), // You can add other widgets here if needed
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration:  const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                child:  Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
                  child: SingleChildScrollView(physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "What Do You Want to Train",
                          style: FontConstants.thinBold,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(onTap: ( ){
                          Get.to(const HomeScreen());
                        },
                          child: const HomePageCard(
                            colour: FitnessAppColors.logoColor2,
                            imagePath: 'assets/images/Vector (1).png',
                            subTitle: '160 Cal Burn | 13 min',
                            title: 'Lowerbody Workouts',
                          ),
                        ),
                        const HomePageCard(
                          colour: FitnessAppColors.logoColor2,
                          imagePath: 'assets/images/Vector (1).png',
                          subTitle: '160 Cal Burn | 13 min',
                          title: 'Lowerbody Workouts',
                        ),
                        const HomePageCard(
                          colour: FitnessAppColors.logoColor2,
                          imagePath: 'assets/images/Vector (1).png',
                          subTitle: '160 Cal Burn | 13 min',
                          title: 'Lowerbody Workouts',
                        ),
                        const HomePageCard(
                          colour: FitnessAppColors.logoColor2,
                          imagePath: 'assets/images/Vector (1).png',
                          subTitle: '160 Cal Burn | 13 min',
                          title: 'Lowerbody Workouts',
                        ),
                      ],
                    ),
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
