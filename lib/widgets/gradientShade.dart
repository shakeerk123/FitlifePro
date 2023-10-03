// ignore: file_names
import 'package:flutter/material.dart';


class GradientShade extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String gradientText;
  final TextStyle style;
  const GradientShade({
    super.key, required this.color1, required this.color2, required this.style, required this.gradientText,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>  LinearGradient(
        colors: [
          color1,
          color2,
        ],
      ).createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child:  Text(
        gradientText,
        style: style
      ),
      
    );
  }
}
