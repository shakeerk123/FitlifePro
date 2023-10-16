
import 'package:fitness_app/app/view/Gnav/gnav_navigation.dart';

import 'package:fitness_app/app/view/workout_tracker/workouttracker_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/view/description_workout/description_workout.dart';
import 'app/view/workout_details/workout_options.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 
    
    return   const GetMaterialApp(
      debugShowCheckedModeBanner: false,
     // initialRoute: "/home",
     // getPages: appRoutes(),
      home: WorkoutOptions(),
    );
  }
}


