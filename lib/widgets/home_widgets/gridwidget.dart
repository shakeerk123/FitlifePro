import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../utils/color.dart';
import '../../utils/text_constanst.dart';
import '../common_widgets/gradientShade.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
          crossAxisCount: 2,
        ),
        shrinkWrap: true, // Add this line to prevent infinite height
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [FontConstants.myBoxShadow],
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientShade(
                  color1: FitnessAppColors.logoColor,
                  color2: FitnessAppColors.logoColor2,
                  gradientText: 'Finished Workout',
                  style: FontConstants.title2,
                ),
                GradientShade(
                  color1: FitnessAppColors.logoColor,
                  color2: FitnessAppColors.logoColor2,
                  gradientText: '12',
                  style: FontConstants.bigNumber,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [FontConstants.myBoxShadow],
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientShade(
                  color1: FitnessAppColors.logoColor,
                  color2: FitnessAppColors.logoColor2,
                  gradientText: 'In progress',
                  style: FontConstants.title2,
                ),
                GradientShade(
                  color1: FitnessAppColors.logoColor,
                  color2: FitnessAppColors.logoColor2,
                  gradientText: '2',
                  style: FontConstants.bigNumber,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [FontConstants.myBoxShadow],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Water Intake",
                    style: FontConstants.title,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const GradientShade(
                    color1: FitnessAppColors.logoColor,
                    color2: FitnessAppColors.logoColor2,
                    gradientText: '8 Litres',
                    style: FontConstants.title2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Center(
                        child: CircularPercentIndicator(
                      radius: 40,
                      lineWidth: 12,
                      percent: 0.4,
                      progressColor: FitnessAppColors.logoColor,
                      backgroundColor: const Color.fromARGB(255, 245, 240, 240),
                      circularStrokeCap: CircularStrokeCap.round,
                      center: const Text(
                        "4 litres\n left",
                        style: FontConstants.small,
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [FontConstants.myBoxShadow],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Calories",
                    style: FontConstants.title,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const GradientShade(
                    color1: FitnessAppColors.logoColor,
                    color2: FitnessAppColors.logoColor2,
                    gradientText: '760 kCal',
                    style: FontConstants.title2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Center(
                        child: CircularPercentIndicator(
                      radius: 40,
                      lineWidth: 12,
                      percent: 0.8,
                      progressColor: FitnessAppColors.logoColor,
                      backgroundColor: const Color.fromARGB(255, 245, 240, 240),
                      circularStrokeCap: CircularStrokeCap.round,
                      center: const Text(
                        "230kCal\n left",
                        style: FontConstants.small,
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
