import 'package:flutter/material.dart';
import 'package:guidly/models/place.dart';
import 'package:panorama/panorama.dart';

class MyPanoramaWidget extends StatelessWidget {
  const MyPanoramaWidget({super.key, required this.place});
  final PlaceModel place;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenHeight = mediaQueryData.size.height;
    return Scaffold(
      body: Center(
        child: Container(
          // Adjust the container's size as per your requirements
          width: 400,
          height: screenHeight - 50,
          child: Panorama(
            child: Image.network(
              place.img,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!.toInt()
                        : null,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
