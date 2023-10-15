import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utils/color.dart';

class WorkoutDetailsAppBar extends StatelessWidget {
  final String imagePath;
  final IconButton? iconButton;

  const WorkoutDetailsAppBar({Key? key, required this.imagePath, this.iconButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 275.0,
      backgroundColor: Colors.white,
      elevation: 0.0,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
        stretchModes: const [
          StretchMode.zoomBackground, // Allow background image to zoom.
          StretchMode.blurBackground,   // Allow background image to blur.
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
      leading: iconButton, // Show the iconButton if it's not null, or set leading to null if iconButton is null.
    );
  }
}
