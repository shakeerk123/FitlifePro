// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:video_player/video_player.dart';

class Exercise {
  final String name;
  final Duration duration;
  final int noOfReps;
  final String gifImageUrl;
  VideoPlayerController? controller;



  Exercise({
    required this.name,
    required this.duration,
    required this.noOfReps,
    required this.gifImageUrl,
    this.controller,
  });
}
