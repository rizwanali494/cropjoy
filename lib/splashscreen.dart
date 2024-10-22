import 'package:cropjoy/onboarding.dart';
import 'package:flutter/material.dart';

import 'dart:async';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // Navigate to HomeScreen after a delay of 1500 milliseconds
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => OnboardingScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size using MediaQuery
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
         color: Colors.white,
          child: Image.asset('assets/images/CropJoy-01 1.png'), // Add your logo here
        ),
      ),
    );
  }
}

