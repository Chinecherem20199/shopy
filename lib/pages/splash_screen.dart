import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopy/resources/sized_manager.dart';

import '../resources/color_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(
        context,
        "/bonding",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: ColorManager.primary),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/shoe4.png",
                  height: screenHeight(context) * 0.7,
                  width: screenWidth(context) * 0.7,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
