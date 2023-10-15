// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../utils/color.dart';
import '../../utils/text_constanst.dart';

class WorkoutWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final ImageProvider path;
  final double percent;

  const WorkoutWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.path,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 95,
        decoration: BoxDecoration(
            color: Colors.white70, borderRadius: BorderRadius.circular(10)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ClipOval(
            child: CircleAvatar(
              radius: 38,
              backgroundImage: path,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: FontConstants.title,
              ),
              Text(
                subTitle,
                style: FontConstants.smallthin,
              ),
              LinearPercentIndicator(
                progressColor: FitnessAppColors.logoColor,
                percent: percent,
                width: 190,
                lineHeight: 13,
                barRadius: const Radius.circular(6),
                backgroundColor: const Color.fromARGB(255, 245, 240, 240),
              )
            ],
          ),
          IconButton(onPressed: () {}, icon: const Icon(IconlyLight.arrow_right_circle,color: FitnessAppColors.logoColor4,size: 30,))
        ]),
      ),
    );
  }
}
