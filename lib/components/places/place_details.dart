import 'package:flutter/material.dart';
import 'package:guidly/components/home_page/place.dart';
import 'package:guidly/components/image_360/image_360.dart';

class PlaceDetailPage extends StatelessWidget {
  final Place place;

  const PlaceDetailPage({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: Container(
              // Replace with your map widget
              color:
                  const Color.fromARGB(0, 158, 158, 158), // Placeholder color
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      place.name,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      place.location,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
