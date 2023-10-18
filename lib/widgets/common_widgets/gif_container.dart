import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:http/http.dart' as http;

class GifContainer extends StatelessWidget {
  final String imagePath;

  const GifContainer({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: FutureBuilder<Response>(
          future: _loadImage(imagePath),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: SizedBox(height: 50,
                  child: LoadingIndicator(
                    indicatorType: Indicator.ballRotate,
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error loading image: ${snapshot.error}'),
              );
            } else if (snapshot.hasData && snapshot.data!.statusCode == 200) {
              // Data connection is available, so show the image
              return Image.network(imagePath,fit: BoxFit.cover,);
            } else {
              // No data connection, show an error message
              return const Center(
                child: Text('No data connection'),
              );
            }
          },
        ),
      ),
    );
  }

  Future<http.Response> _loadImage(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      return response;
    } catch (e) {
      // Handle errors (e.g., no data connection)
      return http.Response('Failed to load image', 404);
    }
  }
}
