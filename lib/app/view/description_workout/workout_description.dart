import 'package:fitness_app/utils/color.dart';
import 'package:fitness_app/utils/path_constants.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../Gnav/gnav_navigation.dart';

class WorkoutDescription extends StatelessWidget {
  const WorkoutDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FitnessAppColors.box, // Replace with your desired color
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () {
                    Get.to(const GnavNavigation());
                  },
                  icon: const Icon(IconlyLight.arrow_left_2),
                ),
              ),
              SizedBox(height: 40,),
              Container(decoration: BoxDecoration(color: Colors.black38,
                borderRadius: BorderRadius.circular(30)
                
              ),
                width: double.infinity,
                height: 200,
                child: Image.asset(AppPaths.workoutrope,fit: BoxFit.cover,),
              ),
               SizedBox(height: 16.0),

            // Exercise Description
            Text(
              "Jumping Jack",
              style:FontConstants.namesmallSize ,
            ),
            SizedBox(height: 16.0),
            Text(
              "Description:",
              style:FontConstants.namesmallSize2,
            ),
            SizedBox(height: 8.0),
            Text(
              "Jumping jacks are a full-body exercise that involves jumping to a position with the legs spread wide and the arms extending overhead, then returning to a position with the feet together and the arms at the sides.",
              style:FontConstants.onBoardingPara ,),
            SizedBox(height: 16.0),

            // Exercise Timeline
            Text(
              "How to Do:",
              style:FontConstants.namesmallSize2 ,
            ),
            SizedBox(height: 8.0),
            ExerciseStep(
              stepNumber: 1,
              description: "Stand up straight with your feet together and your arms at your sides.",
            ),
            ExerciseStep(
              stepNumber: 2,
              description: "Jump into the air while spreading your legs out to the sides and raising your arms overhead.",
            ),
            ExerciseStep(
              stepNumber: 3,
              description: "Land softly with your feet shoulder-width apart and your arms back at your sides.",
            ),
            ExerciseStep(
              stepNumber: 4,
              description: "Repeat the motion for the desired number of repetitions.",
            ),
              
            ],
          ),
        ),
      ),
    );
  }
}


class ExerciseStep extends StatelessWidget {
  final int stepNumber;
  final String description;

  ExerciseStep({required this.stepNumber, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$stepNumber.",
            style:FontConstants.onBoardingPara ,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              description,
              style: FontConstants.onBoardingPara,
            ),
          ),
        ],
      ),
    );
  }
}