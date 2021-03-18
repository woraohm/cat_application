import 'package:cat_application/screens/mobile/list_cat_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashCatScreen extends StatefulWidget {
  @override
  _SplashCatScreenState createState() => _SplashCatScreenState();
}

class _SplashCatScreenState extends State<SplashCatScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: ListCatMobileScreen(),
      backgroundColor: Colors.white,
     
    );
  }
}