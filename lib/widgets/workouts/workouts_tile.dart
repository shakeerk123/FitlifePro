import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../utils/text_constanst.dart';

class WorkoutsListtile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  
  const WorkoutsListtile({
    super.key, required this.image, required this.title, required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Icon(IconlyLight.arrow_right_2),
      title: Text(
        title,
        style: FontConstants.title,
      ),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage:
            AssetImage(image),
        radius: 30,
      ),
    );
  }
}