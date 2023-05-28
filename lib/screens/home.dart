import 'package:flutter/material.dart';
import 'package:guidly/components/home_page/place.dart';
import 'package:guidly/components/home_page/place_card.dart';
import 'package:guidly/components/places/place_details.dart';

class HomeTab extends StatelessWidget {
  final List<Place> places = [
    Place(
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/baalbeck%201.jpg?alt=media&token=5855860f-f5cc-4ea2-bd4a-a24c37342b09', // Replace with actual image URL
      name: 'Place 1',
      location: 'Location 1',
    ),
    Place(
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/anjar.jpg?alt=media&token=2eb3044a-f8bd-45d1-ba83-464e4aa1964a', // Replace with actual image URL
      name: 'Place 2',
      location: 'Location 2',
    ),
    // Add more places to the list
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: places.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceDetailPage(place: places[index]),
                ),
              );
            },
            child: PlaceCard(
              place: places[index],
            ),
          );
        },
      ),
    );
  }
}
