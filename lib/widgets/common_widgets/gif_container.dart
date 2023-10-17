import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:transparent_image/transparent_image.dart';

class GifContainer extends StatelessWidget {
  final String imagePath;

  const GifContainer({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: FadeInImage.memoryNetwork(
          fadeInDuration: const Duration(milliseconds: 200),
          placeholder: kTransparentImage, // A transparent image as a placeholder
          image: imagePath,
          fit: BoxFit.cover,
          imageErrorBuilder: (context, error, stackTrace) {
            // Error handling when the image fails to load
            return Center(
              child: Container(height: 40,
                child: const LoadingIndicator(indicatorType: Indicator.ballRotate)),
            );
          },
        ),
      ),
    );
  }
}
