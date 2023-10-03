import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/utils/color.dart'; // Note the corrected import
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../utils/text_constanst.dart';
import '../../widgets/gradientShade.dart';
import '../../widgets/homepagemaincard.dart';
import '../../widgets/todaytarget.dart';
import '../../widgets/welcome_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.white,
            activeColor: Colors.black,
            gap: 8,
            tabBackgroundColor: FitnessAppColors.logoColor2,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.auto_graph,
                text: "Statistics",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            const WelcomeWidget(),
            const SizedBox(height: 10),

            // Carousel Slider
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 6),
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
              items: const [
                HomePageCard(
                  colour: FitnessAppColors.card1,
                  imagePath: 'assets/images/Layer 5.png',
                  subTitle: '200 Cal Burn | 18 min',
                  title: 'Fullbody Workouts',
                ),
                HomePageCard(
                  colour: FitnessAppColors.card1,
                  imagePath: 'assets/images/Vector (1).png',
                  subTitle: '160 Cal Burn | 13 min',
                  title: 'Lowerbody Workouts',
                ),
                HomePageCard(
                  colour: FitnessAppColors.card1,
                  imagePath: 'assets/images/Vector (2).png',
                  subTitle: '180 Cal Burn | 20 min',
                  title: 'Ab Workouts',
                ),
                // Add more cards as needed
              ],
            ),
            const SizedBox(height: 20),
            const TodayTargetWidget(),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Activity Status",
                style: FontConstants.thinBold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 19,
                  crossAxisSpacing: 19,
                  crossAxisCount: 2,
                ),
                shrinkWrap: true, // Add this line to prevent infinite height
                physics:
                    const NeverScrollableScrollPhysics(), // Disable scrolling
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: const Offset(0, 0), // Offset
                        ),
                      ],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GradientShade(
                          color1: FitnessAppColors.logoColor,
                          color2: FitnessAppColors.logoColor2,
                          gradientText: 'Finished Workout',
                          style: FontConstants.title2,
                        ),
                        GradientShade(
                          color1: FitnessAppColors.logoColor,
                          color2: FitnessAppColors.logoColor2,
                          gradientText: '12',
                          style: FontConstants.bigNumber,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: const Offset(0, 0), // Offset
                        ),
                      ],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GradientShade(
                          color1: FitnessAppColors.logoColor,
                          color2: FitnessAppColors.logoColor2,
                          gradientText: 'In progress',
                          style: FontConstants.title2,
                        ),
                        GradientShade(
                          color1: FitnessAppColors.logoColor,
                          color2: FitnessAppColors.logoColor2,
                          gradientText: '2',
                          style: FontConstants.bigNumber,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: const Offset(0, 0), // Offset
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Water Intake",
                            style: FontConstants.title,
                          ),
                          SizedBox(height: 10,),
                          GradientShade(
                            color1: FitnessAppColors.logoColor,
                            color2: FitnessAppColors.logoColor2,
                            gradientText: '8 Litres',
                            style: FontConstants.title2,
                          ),
                          SizedBox(height: 10,),
                          Center(
                              child: CircularPercentIndicator(
                                
                            radius: 40,
                            lineWidth: 12,
                            percent: 0.4,
                            progressColor:FitnessAppColors.logoColor ,
                            backgroundColor: Color.fromARGB(255, 245, 240, 240),
                            circularStrokeCap: CircularStrokeCap.round,
                            center: Text("4 litres\n left",style: FontConstants.small,),
                          )),
                        ],
                      ),
                    ),
                  ),
                 Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: const Offset(0, 0), // Offset
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Calories",
                            style: FontConstants.title,
                          ),
                          SizedBox(height: 10,),
                          GradientShade(
                            color1: FitnessAppColors.logoColor,
                            color2: FitnessAppColors.logoColor2,
                            gradientText: '760 kCal',
                            style: FontConstants.title2,
                          ),
                          SizedBox(height: 10,),
                          Center(
                              child: CircularPercentIndicator(
                                
                            radius: 40,
                            lineWidth: 12,
                            percent: 0.8,
                            progressColor:FitnessAppColors.logoColor ,
                            backgroundColor: Color.fromARGB(255, 245, 240, 240),
                            circularStrokeCap: CircularStrokeCap.round,
                            center: Text("230kCal\n left",style: FontConstants.small,),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
