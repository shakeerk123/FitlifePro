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
         const SizedBox(
          width: 40,
        ),
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