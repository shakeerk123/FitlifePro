import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../utils/text_constanst.dart';

class TodayTargetWidget extends StatelessWidget {
  const TodayTargetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: FitnessAppColors.logoColor2,
          borderRadius: BorderRadius.circular(30),
        ),
        width: 400,
        height: 80,
        
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [const Text("Today Target",style: FontConstants.title,),
          Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            
          ),
          child: const Padding(
            padding: EdgeInsets.all(3.0),
            child: Center(
              child: Text("Check",),
            ),
          ),
        )
          ],

        ),
      ),
    );
  }
}
