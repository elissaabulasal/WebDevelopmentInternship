import 'package:flutter/material.dart';
import 'package:guidly/components/home_page/place.dart';
import 'package:guidly/components/image_360/image_360.dart';
import 'package:guidly/components/map/static_map.dart';
import 'package:url_launcher/url_launcher.dart';

class PlaceDetailPage extends StatelessWidget {
  final Place place;

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
                        "https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/anjar.jpg?alt=media&token=2eb3044a-f8bd-45d1-ba83-464e4aa1964a"),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyPanoramaWidget()),
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
