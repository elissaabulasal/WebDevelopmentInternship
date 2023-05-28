import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:guidly/controller/buy_controller.dart';

class HeroListPage extends StatelessWidget {
  const HeroListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buyController = Get.find<BuyController>().items;
    final items = buyController;
    print(buyController);
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        child: ListView.builder(
          itemCount: _images.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondPage(heroTag: index)));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Hero(
                      tag: index,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          _images[index],
                          width: 200,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                        child: Text(
                      '${items.length == 0 ? '' : items[index].name}',
                      style: Theme.of(context).textTheme.headline6,
                    )),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final int heroTag;

  const SecondPage({Key? key, required this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buyController = Get.find<BuyController>().items;
    final items = buyController;
    return Scaffold(
      appBar: AppBar(title: const Text("")),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(
                tag: heroTag,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    _images[heroTag],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  items[heroTag].name,
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      items[heroTag].desc,
                      style: const TextStyle(
                        fontSize: 16, // Adjust the font size as desired
                        fontWeight: FontWeight
                            .normal, // Adjust the font weight as desired
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
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
                              Text('Buy',
                                  style: TextStyle(color: Colors.white)),
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
          )
        ],
      ),
    );
  }
}

final List<String> _images = [
  'https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/Lebanese%20cedar%20wood%20handicrafts.jfif?alt=media&token=b017d75d-5ed6-438d-b11a-05d57c0f782e',
  'https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/watch.jpg?alt=media&token=d0dd1f41-23f7-4c38-8000-0923b331cd1e',
  'https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/handcraft%20plates.jfif?alt=media&token=0c62a22b-8c64-4153-8d70-90d6ca9edee9',
];
