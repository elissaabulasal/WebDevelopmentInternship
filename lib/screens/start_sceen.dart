import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guidly/controller/buy_controller.dart';
import '../routes/routes.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(BuyController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/guidly-90eb5.appspot.com/o/logo.png?alt=media&token=340630ba-de18-4b23-a30f-608e4bda9592"),
            Container(
              height: 150,
              child: Image.asset(
                "assets/icons8-location.gif",
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Color(0xFF2196f3),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () => Get.toNamed(AppRoutes.homeScreen),
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
