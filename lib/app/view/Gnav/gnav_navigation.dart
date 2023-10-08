import 'package:fitness_app/app/view/home/homepage.dart';
import 'package:fitness_app/app/view/profile/profile_screen.dart';
import 'package:fitness_app/app/view/workout_tracker/workouttracker_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconly/iconly.dart';

import '../../../utils/text_constanst.dart';

class GnavNavigation extends StatefulWidget {
  const GnavNavigation({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<GnavNavigation> {
  int _currentIndex = 0;

  // Define your list of routes/screens
  final List<Widget> _screens = [
    HomeScreen(),
    WorkoutScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: GNav(
              textStyle: FontConstants.gnav,
              backgroundColor: Colors.white70,
              activeColor: Colors.blue,
              gap: 8,
              padding: const EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: IconlyLight.home,
                  text: "Home",
                ),
                GButton(
                  icon: IconlyLight.graph,
                  text: "Workout",
                ),
                GButton(
                  icon: IconlyLight.profile,
                  text: "Profile",
                ),
              ],
              selectedIndex: _currentIndex, // Set the current index
              onTabChange: (index) {
                // Update the current index and navigate to the corresponding screen
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
        body: _screens[_currentIndex], // Display the selected screen
      ),
    );
  }
}
