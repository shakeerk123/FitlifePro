import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const WorkoutCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Set different card properties based on screen width.
        final isSmallScreen = constraints.maxWidth < 600;
        final cardElevation = isSmallScreen ? 5.0 : 10.0;
        final cardPadding = isSmallScreen ? 16.0 : 32.0;

        return Card(
          elevation: cardElevation,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover)),
            height: 120,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(cardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  style: FontConstants.namesmallSizewhite,
                ),
                const SizedBox(height: 3.0),
                Text(
                  subtitle,
                  style: FontConstants.cardsubtitle,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
