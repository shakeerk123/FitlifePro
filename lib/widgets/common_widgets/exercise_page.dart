import 'package:fitness_app/model/exercise.dart';
import 'package:fitness_app/model/exercise_set.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:fitness_app/widgets/common_widgets/video_controls_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'video_player_widget.dart';

class ExercisePage extends StatefulWidget {
  final ExerciseSet exerciseSet;
  const ExercisePage({super.key, required this.exerciseSet});

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  final controller = PageController();
  late Exercise currentExercise;

  @override
  void initState() {
    super.initState();
    currentExercise = widget.exerciseSet.exercises.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            IconlyLight.arrow_left_2,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          currentExercise.name,
          style: FontConstants.namesmallSize,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          buildVideos(),
          Positioned(
            bottom: 20,
            right: 50,
            left: 50,
            child: buildVideoControls(),
          )
        ],
      ),
    );
  }

  Widget buildVideos() => PageView(
        controller: controller,
        onPageChanged: (index) => setState(() {
          currentExercise = widget.exerciseSet.exercises[index];
        }),
        children: widget.exerciseSet.exercises
            .map((exercise) => Image.network(
                  exercise.gifImageUrl, // Replace with the URL of the GIF image
                  fit: BoxFit.contain,
                ))
            .toList(),
      );

  Widget buildVideoControls() => VideoControlsWidget(
        exercise: currentExercise,
        onTogglePlaying: (isPlaying) {
          setState(() {
            if (isPlaying) {
              currentExercise.controller?.play();
            } else {
              currentExercise.controller?.pause();
            }
          });
        },
        onNextVideo: () => controller.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        ),
        onRewindVideo: () => controller.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        ),
      );
}
