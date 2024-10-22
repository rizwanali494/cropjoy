import 'package:cropjoy/ui/Profilepage/profileHome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/lastorderactivity.dart';
class userwallet extends StatelessWidget {
  const userwallet({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
backgroundColor: Colors.white,
body: SafeArea(child:
Container(
  child: SingleChildScrollView(
    child: Column(
    
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
    Container(
    width: double.infinity,
    height: screenHeight*0.3,
  decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/images/Bank Account (1).png'))
  ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
    onTap: (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserProfileSettingsPage()));
    },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(

                  height:35,width: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,),
                  ),),
                ),
              ),
            ),
            Text('Wallet',style: GoogleFonts.inter(
    color: Colors.white,fontSize: screenWidth*0.042,fontWeight: FontWeight.w500
            ),),
            Container(width: screenWidth*0.2,),
        ],),
        SizedBox(height: screenHeight*0.03,),
        Text('Available Balance',style: GoogleFonts.inter(
            color: Colors.white,fontSize: screenWidth*0.042,fontWeight: FontWeight.w500
        ),),
        SizedBox(height: screenHeight*0.01,),
        Text('R 35,995',style: GoogleFonts.inter(
            color: Colors.white,fontSize: screenWidth*0.06,fontWeight: FontWeight.w500
        ),),
    
    ],),
    ),
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Last Activites',style: GoogleFonts.inter(
                  color: Colors.black,fontWeight: FontWeight.w700,fontSize: screenWidth*0.04
                ),),
                OrderActivityTile(
                  orderId: 'Order #12345',
                  dateTime: '2024-10-13 14:30',
                  amount: '\$49.99',
                  icon: Icons.assignment_late, // Choose any icon you like
                ),
                OrderActivityTile(
                  orderId: 'Order #12346',
                  dateTime: '2024-10-14 15:45',
                  amount: '\$59.99',
                  icon: Icons.assignment_late,
                ),
            
                OrderActivityTile(
                  orderId: 'Order #12345',
                  dateTime: '2024-10-13 14:30',
                  amount: '\$49.99',
                  icon: Icons.assignment_late, // Choose any icon you like
                ),
                OrderActivityTile(
                  orderId: 'Order #12346',
                  dateTime: '2024-10-14 15:45',
                  amount: '\$59.99',
                  icon: Icons.assignment_late,
                ),
            
            ],),
          ),
        )
    
    
    ],),
  ),


)),
    );
  }
}
