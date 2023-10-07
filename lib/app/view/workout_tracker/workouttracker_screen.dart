import 'package:fitness_app/app/view/home/homepage.dart';
import 'package:fitness_app/utils/color.dart';
import 'package:fitness_app/utils/path_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';

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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
                      child: Container(
                        color: FitnessAppColors.logoColor2,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Workout animation
                            Lottie.asset(AppPaths.particleLottie),
                            Lottie.asset(
                                AppPaths.workoutvectorImage), // Particle animation
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 25,
                  left: 25,
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
              ],
            ),
            Expanded(
              child: Container(
                
                decoration: const BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                topRight: Radius.circular(20))
              ),
                
                height: double.infinity,),
            )
          ],
          
        ),
        

      ),
    );
  }
}
