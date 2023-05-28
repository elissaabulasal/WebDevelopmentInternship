import 'package:flutter/material.dart';
import 'package:google_static_maps_controller/google_static_maps_controller.dart';

class StaticMapWidget extends StatelessWidget {
  final double lat;
  final double long;
  const StaticMapWidget({Key? key, required this.lat, required this.long})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaticMap(
      googleApiKey: "AIzaSyDmY2MaM8QBerTUhy9g1EPZAPAC1lch_HM",
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      scaleToDevicePixelRatio: true,
      language: 'EN',
      zoom: 14,
      maptype: StaticMapType.roadmap,
      markers: <Marker>[
        Marker(
          color: Colors.pink,
          locations: [
            Location(lat, long),
          ],
        ),
      ],
    );
  }
}
