import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconly/iconly.dart';
import '../../../utils/text_constanst.dart';
import '../../controller/gnav_controller.dart';
import '../home/homepage.dart';
import '../profile/profile_screen.dart';
import '../workout_tracker/workouttracker_screen.dart';

class GnavNavigation extends GetView<GnavController> {
  @override
  Widget build(BuildContext context) {
    Get.put(GnavController());
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
              selectedIndex:
                  controller.currentIndex.value, // Use the controller's value
              onTabChange: (index) {
                controller
                    .changeTabIndex(index); // Update the controller's value
              },
            ),
          ),
        ),
        body: Obx(() => IndexedStack(
              index:
                  controller.currentIndex.value, // Use the controller's value
              children: const [
                HomeScreen(),
                WorkoutScreen(),
                ProfileScreen(),
              ],
            )),
      ),
    );
  }
}
