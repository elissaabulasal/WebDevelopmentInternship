import 'package:flutter/material.dart';
import 'package:guidly/models/place.dart';
import 'package:guidly/components/home_page/place_card.dart';
import 'package:guidly/components/places/place_details.dart';

class HomeTab extends StatelessWidget {
  final List<PlaceModel> places = [
    PlaceModel(
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/baalbeck%201.jpg?alt=media&token=5855860f-f5cc-4ea2-bd4a-a24c37342b09', // Replace with actual image URL
      name: 'Baalbek City',
      location: 'Baalbek',
      img:
          "https://www.shutterstock.com/image-photo/baalbek-ancient-city-lebanonheliopolis-temple-260nw-751904593.jpg",
    ),
    PlaceModel(
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/anjar.jpg?alt=media&token=2eb3044a-f8bd-45d1-ba83-464e4aa1964a', // Replace with actual image URL
      name: 'Anjar TWN',
      location: 'Anjar',
      img:
          "https://st4.depositphotos.com/1424188/24399/i/950/…96498-stock-photo-ruins-of-the-umayyad-aanjar.jpg",
    ),
    PlaceModel(
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/saida%20castle.jfif?alt=media&token=5d9f8e22-7cb9-46da-9aea-bdcdc14a12e8', // Replace with actual image URL
      name: 'Saida Castle',
      location: 'Saida',
      img:
          "https://st2.depositphotos.com/1023345/5297/i/950/depositphotos_52974259-stock-photo-sidon-sea-castle.jpg",
    ),

    PlaceModel(
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/tyre%20ruins.jfif?alt=media&token=81c6ab8d-8a3e-4e5b-b0fc-34ca8525f676', // Replace with actual image URL
      name: 'Tyre Ruins',
      location: 'Tyre',
      img:
          "https://st2.depositphotos.com/1024650/6434/i/950/depositphotos_64347053-stock-photo-ruins-of-ancient-roman-triumphal.jpg",
    ),
    PlaceModel(
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/downtown.jfif?alt=media&token=934cc99d-9033-46fd-aaa3-ac75179720a0', // Replace with actual image URL
      name: 'Beirut Ruins',
      location: 'Beirut',
      img:
          "https://st4.depositphotos.com/19692430/23952/i/950/depositphotos_239529756-stock-photo-beirut-roman-forum-ruins-greek.jpg",
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
