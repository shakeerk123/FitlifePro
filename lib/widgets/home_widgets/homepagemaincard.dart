import 'package:flutter/material.dart';

import '../../utils/text_constanst.dart'; // Assuming this is the correct import path for your font constants.

class HomePageCard extends StatelessWidget {
  final String imagePath;
  final Color? colour;
  final String title;
  final String subTitle;
  final String? backgroundImage; // Add a new property for the background image path.

  const HomePageCard({
    Key? key,
    required this.imagePath,
    required this.colour,
    required this.title,
    required this.subTitle,
    this.backgroundImage, // Initialize the background image path.
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
          // Use BoxDecoration to set the background image.
          image: backgroundImage != null
              ? DecorationImage(
                  image: AssetImage(backgroundImage!),
                  fit: BoxFit.cover, // You can customize the fit as needed.
                )
              : null, // No background image if it's null.
          color: colour, // This color will act as a fallback background.
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        title,
                        style: FontConstants.title,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(subTitle, style: FontConstants.subTitle),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                         
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text("View more"),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 110,
                    width: 105,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                      
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Image.asset(imagePath),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
