import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../utils/color.dart';
import '../../utils/text_constanst.dart';

class ProfileBarTop extends StatelessWidget {
  final String title;
  const ProfileBarTop({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            decoration: BoxDecoration(
                color: FitnessAppColors.box,
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(IconlyLight.arrow_left_2))),
        Text(
          title,
          style: FontConstants.namesmallSize,
        ),
        const SizedBox(
          width: 40,
        )
      ],
    );
  }
}