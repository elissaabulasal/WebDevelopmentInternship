import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              child: Image.asset(
                "assets/icons8-location.gif",
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(AppRoutes.homeScreen),
              child: Text('Get started'),
            ),
          ],
        ),
      ),
    );
  }
}
