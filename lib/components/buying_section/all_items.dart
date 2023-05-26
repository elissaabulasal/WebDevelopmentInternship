// Here you do a component that get all items in this place and display them in card
// so when you click on a card will get the id and navigate to item_by_id.dart

// Here's what you should do to get items list from database as an array
// did this so you can understand it
//---------------------------
// List<ItemModel> items = [];
// final Firestore _firestore = new Firestore();
//  void initState() {
// TODO: implement initState
//  getItems();
//  super.initState();
//  }
// Future<void> getItems() async {
//  items = await _firestore.getItems();
//  }

// This you can add it inside the return to see the result
//     Container(
//   height: 100,
//   child: ListView.builder(
//     itemCount: items.length,
//     itemBuilder: (context, index) {
//       var item = items[index];
//       return Text(item.name);
//     },
//   ),
//  )

// Good luck 😉
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button_bar.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/position/gf_position.dart';
import '../../routes/routes.dart';

class BuyingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("{Place} Shop"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // this is a widget that you can scroll inside
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // to control where to start
            children: [
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.network(
                  "https://www.alphafoodie.com/wp-content/uploads/2021/11/Apple-Juice-Square.jpeg",
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.72,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: const GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.travelandleisure.com/thmb/Om3sth4C6kRWrs2tdci3H0CnuH8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gallery-uffizi-florence-italy-ONLINEMUSE0320-7c5f3904408c4c8aabd2f15cd6d47a4b.jpg'),
                  ),
                  titleText: 'Apple Juice',
                  subTitleText: 'description',
                ),
                content:
                    const Text("Some quick example text to build on the card"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // Your buy button logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70.0, vertical: 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.shopping_cart, color: Colors.white),
                            SizedBox(width: 8.0),
                            Text('Buy', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    const GFAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.help,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.network(
                  "https://about.proquest.com/globalassets/proquest/media/images/decrotive/oldbooks.jpg",
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.72,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: const GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.travelandleisure.com/thmb/Om3sth4C6kRWrs2tdci3H0CnuH8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gallery-uffizi-florence-italy-ONLINEMUSE0320-7c5f3904408c4c8aabd2f15cd6d47a4b.jpg'),
                  ),
                  titleText: 'Book',
                  subTitleText: 'description',
                ),
                content:
                    const Text("Some quick example text to build on the card"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // Your buy button logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70.0, vertical: 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.shopping_cart, color: Colors.white),
                            SizedBox(width: 8.0),
                            Text('Buy', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    const GFAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.help,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
