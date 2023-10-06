import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../utils/text_constanst.dart';

class UserNameWidget extends StatelessWidget {
  final String username;
  
  const UserNameWidget({
    super.key, required this.username, 
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 30,
      ),
      title:  Text(
        username,
        style: FontConstants.title3,
      ),
      trailing: GestureDetector(
        onTap: () {
         
        },
        child: Container(
            height: 35,
            width: 100,
            decoration: BoxDecoration(
                color: FitnessAppColors.logoColor,
                borderRadius: BorderRadius.circular(30)),
            child: const Center(
                child: Text(
              "Edit",
              style: FontConstants.title2,
            ))),
      ),
    );
  }
}
