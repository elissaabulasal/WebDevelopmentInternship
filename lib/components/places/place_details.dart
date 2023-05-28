import 'package:flutter/material.dart';
import 'package:guidly/models/place.dart';
import 'package:guidly/components/image_360/image_360.dart';
import 'package:guidly/components/map/static_map.dart';
import 'package:url_launcher/url_launcher.dart';

class PlaceDetailPage extends StatelessWidget {
  final PlaceModel place;

  const PlaceDetailPage({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _launchMapsUrl(double lat, double lon) async {
      final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lon';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // Replace with your 360 view widget
              color: const Color.fromARGB(0, 33, 149, 243), // Placeholder color
              child: Column(
                children: [
                  Container(
                    child: Image.network(
                      place.imageUrl,
                      height: 150,
                      width: screenWidth,
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyPanoramaWidget(
                                    place: place,
                                  )),
                        );
                      },
                      child: Text('Open 360 View'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 15),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                elevation: 3,
                child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(0, 94, 10, 238),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () {
                        _launchMapsUrl(33.8, 35.8);
                      },
                      child: StaticMapWidget(lat: 33.8, long: 35.6),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
