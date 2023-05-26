// Here you will have a component that list the details of this
// item and you can add a buy button
// Note: for this page you will need a function to get data of
// item by id you can open services/firestore.dart for more info

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/routes.dart';

class ItemDetails extends StatelessWidget {
  final String itemName;
  final double price;
  final String description;

  const ItemDetails({
    Key? key,
    required this.itemName,
    required this.price,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price: \$$price',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Description: $description',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Get.toNamed(AppRoutes.buyingSection),
              child: Text('Back to buying section'),
            ),
          ],
        ),
      ),
    );
  }
}
