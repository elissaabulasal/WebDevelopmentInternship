import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(AppRoutes.buyingSection),
          child: Text('Go to buying section'),
        ),
      ),
    );
  }
}
