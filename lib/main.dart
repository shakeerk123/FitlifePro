
import 'package:fitness_app/app/view/Gnav/gnav_navigation.dart';
import 'package:fitness_app/app/view/register/view/register_page1.dart';
import 'package:fitness_app/app/view/workout_details/ui/workout_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/view/register/controller/register_con.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:WorkoutDetails(),
    );
  }
}


