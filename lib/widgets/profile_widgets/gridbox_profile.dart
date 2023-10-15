// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../utils/text_constanst.dart';
import '../common_widgets/gradientShade.dart';

class GridBoxProfile extends StatelessWidget {
  final String title;
  final String subtitle;
  const GridBoxProfile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Colors.white70,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 7, // Blur radius
            offset: const Offset(0, 0), // Offset
          ),
        ],
      ),
      child:   Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GradientShade(
              color1: FitnessAppColors.logoColor,
              color2: FitnessAppColors.logoColor2,
              style: FontConstants.title2,
              gradientText: title),
          Text(
            subtitle,
            style: FontConstants.smallthin,
          )
        ],
      ),
    );
  }
}
