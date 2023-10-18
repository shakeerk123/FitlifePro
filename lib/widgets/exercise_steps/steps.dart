import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';

class ExerciseStep extends StatelessWidget {
  final int stepNumber;
  final String description;

  const ExerciseStep({
    Key? key,
    required this.stepNumber,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$stepNumber.",
            style: FontConstants.onBoardingPara,
          ),
          const SizedBox(width: 8.0),
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
