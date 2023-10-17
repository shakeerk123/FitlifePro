import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WorkoutDetailsAppBar extends StatelessWidget {
  final String imagePath;
  final IconButton? iconButton;
  final NetworkImage? image;

  const WorkoutDetailsAppBar(
      {Key? key, required this.imagePath, this.iconButton, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
       const   SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 275.0,
      backgroundColor: Colors.white,
      elevation: 0.0,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ), // Use the conditional backgroundImage widget
        stretchModes: const [
          StretchMode.zoomBackground, // Allow background image to zoom.
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          height: 32.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
        ),
      ),
      leadingWidth: 80.0,
      leading: iconButton,
    );
  }
}
