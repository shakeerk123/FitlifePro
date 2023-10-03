// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../utils/text_constanst.dart';

class HomePageCard extends StatelessWidget {
  final String imagePath;
  final Color colour;
  final String title;
  final String subTitle;

  const HomePageCard({
    Key? key,
    required this.imagePath,
    required this.colour,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(30),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
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
                    boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: const Offset(0, 0), // Offset
                        ),
                      ],
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
              width: 20,
            ),
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: const Offset(0, 0), // Offset
                        ),
                      ],
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
    );
  }
}
