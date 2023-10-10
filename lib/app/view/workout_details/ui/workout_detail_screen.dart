import 'package:fitness_app/app/view/Gnav/gnav_navigation.dart';
import 'package:fitness_app/app/view/home/homepage.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';
import '../../../../utils/path_constants.dart';
import '../../../../widgets/home_widgets/homepagemaincard.dart';


class WorkoutDetails extends StatelessWidget {
  const WorkoutDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue, // Replace with your desired background color
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 45, right: 45,bottom: 10),
                  child: Container(
                    width: double.infinity,
                    color: Colors.blue, // Replace with your desired background color
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        // Workout animation
                        Lottie.asset(AppPaths.particleLottie, width: 400),
                        Image.asset(AppPaths.workoutrope, width: 150), // Particle animation
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white, // Replace with your desired color
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(const GnavNavigation());
                            },
                            icon: const Icon(IconlyLight.arrow_left_2),
                          ),
                        ),
                      ),
                     
                      const SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white, // Replace with your desired background color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.only(top: 20, left: 40, right: 40),
                  child: SingleChildScrollView(physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fullbody Workout",
                          style:FontConstants.title3,
                        ),
                         SizedBox(
                          height: 5,
                        ),
                        Text("11 Exercise | 390 Calories Burn",style: FontConstants.smallthin,),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Exercises",style: FontConstants.thinBold,),
                         SizedBox(
                          height: 30,
                        ),
                  
                        ListTile(
                          trailing: Icon(IconlyLight.arrow_right_2),
                          title:Text("Warm Up",style: FontConstants.title,),
                          subtitle: Text("03:00"),
                          leading: CircleAvatar(radius: 30,),
                        ),
                         ListTile(
                          trailing: Icon(IconlyLight.arrow_right_2),
                          title:Text("Warm Up"),
                          subtitle: Text("03:00"),
                          leading: CircleAvatar(radius: 30,),
                        ), ListTile(
                          trailing: Icon(IconlyLight.arrow_right_2),
                          title:Text("Warm Up"),
                          subtitle: Text("03:00"),
                          leading: CircleAvatar(radius: 30,),
                        ), ListTile(
                          trailing: Icon(IconlyLight.arrow_right_2),
                          title:Text("Warm Up"),
                          subtitle: Text("03:00"),
                          leading: CircleAvatar(radius: 30,),
                        ), ListTile(
                          trailing: Icon(IconlyLight.arrow_right_2),
                          title:Text("Warm Up"),
                          subtitle: Text("03:00"),
                          leading: CircleAvatar(radius: 30,),
                        ), ListTile(
                          trailing: Icon(IconlyLight.arrow_right_2),
                          title:Text("Warm Up"),
                          subtitle: Text("03:00"),
                          leading: CircleAvatar(radius: 30,),
                        ), ListTile(
                          trailing: Icon(IconlyLight.arrow_right_2),
                          title:Text("Warm Up"),
                          subtitle: Text("03:00"),
                          leading: CircleAvatar(radius: 30,),
                        )
                       
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
