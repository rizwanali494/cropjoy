import 'package:cropjoy/ui/Profilepage/profileHome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/DeliveryAdressCard.dart';
class userdeliveryaddress extends StatelessWidget {
  final String fromPage; // This will indicate the page it came from
  const userdeliveryaddress({super.key, required this.fromPage});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
backgroundColor: Colors.white,
      body: SafeArea(child: Container(
        padding: EdgeInsets.only(left: screenWidth*0.04,right: screenWidth*0.04),
child: Column
  (
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,

  children: [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  GestureDetector(
    onTap: (){
    if (fromPage == 'homepage') {
    // Navigate back to the homepage
    Navigator.pushNamedAndRemoveUntil(
    context, '/homepage', (Route<dynamic> route) => false);
    } else if (fromPage == 'profile') {
    // Navigate back to the profile page
    Navigator.pushNamedAndRemoveUntil(
    context, '/profile', (Route<dynamic> route) => false);
    }

    },
    child: Container(
      height: 35,width: 35,
        decoration: BoxDecoration(

          shape: BoxShape.circle,
          border: Border.all(
            color: Color(0xffEDEDED),
          )
        ),
        child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.black,size: screenWidth*0.05,))),
  ),
    Text('Delivery Address',style: GoogleFonts.inter(
    fontWeight: FontWeight.w700,color: Colors.black,fontSize: screenWidth*0.04

    ),
    ),
    Container(),

],),
SizedBox(height: screenHeight*0.04,),
    Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        'Current Location',
        style: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    ),

        DeliveryAddressCard(
          locationType: ' Current Location',
          location: '1234 Elm Street, Springfield, USA',
          icon: Icons.my_location,
        ),
    SizedBox(height: screenHeight*0.02,),
    Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        ' Saved Addresses',
        style: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    ),



    DeliveryAddressCard(
      locationType: 'Home Location',
      location: '1234 Elm Street, Springfield, USA',
      icon: Icons.home,
    ),


    DeliveryAddressCard(
      locationType: ' Work Location',
      location: '1234 Elm Street, Springfield, USA',
      icon: Icons.home_work_outlined,
    ),
    SizedBox(height: screenHeight*0.02,),
    SizedBox(height: screenHeight*0.02,),
    Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        ' Recent Addresses',
        style: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    ),



    DeliveryAddressCard(
      locationType: 'Weltrvredenpark',
      location: '1234 Elm Street, Springfield, USA',
      icon: Icons.location_on_outlined,
    ),




  ],

),


      )
      ),
    );
  }
}
