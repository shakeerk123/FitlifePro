import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconly/iconly.dart';

import '../../../utils/text_constanst.dart';
import '../home/homepage.dart';
import '../profile/profile_screen.dart';
import '../workout_tracker/workouttracker_screen.dart';

class GnavNavigation extends StatefulWidget {
  const GnavNavigation({Key? key}) : super(key: key);

  @override
  _GnavNavigationState createState() => _GnavNavigationState();
}

class _GnavNavigationState extends State<GnavNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
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
              tabs: const [
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
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
      ),
    );
  }
}
