
import 'package:cropjoy/splashscreen.dart';
import 'package:cropjoy/ui/Auth/ForgotPassword.dart';
import 'package:cropjoy/ui/Auth/individual_registration.dart';
import 'package:cropjoy/ui/Auth/tabbar.dart';
import 'package:cropjoy/ui/Homepage/Homepage.dart';
import 'package:cropjoy/ui/Homepage/btm_navigation.dart';
import 'package:cropjoy/ui/Profilepage/UserAbout.dart';
import 'package:cropjoy/ui/Profilepage/profileHome.dart';
import 'package:cropjoy/ui/checkout/Checkout_Page.dart';
import 'package:cropjoy/ui/farms/farmer_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/homepage': (context) => Homepage(),
          '/profile': (context) => UserProfileSettingsPage(),
          '/Individual_Registration': (context) => TabbarScreen(),


        },
      debugShowCheckedModeBanner: false,

      home: SplashScreen()
    );
  }
}
