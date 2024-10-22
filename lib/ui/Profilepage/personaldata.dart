import 'package:cropjoy/ui/Profilepage/profileHome.dart';
import 'package:cropjoy/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/passwordtextfield.dart';
import '../widgets/textfield.dart';
import '../widgets/userSettings.dart';

class UserPersonaldata extends StatelessWidget {
   UserPersonaldata({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // MediaQuery to get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: screenWidth*0.04,right: screenWidth*0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Center horizontally
            children: [
              SizedBox(height: screenHeight * 0.03), // Space from top

              // Profile Settings text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(

                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserProfileSettingsPage()));
                      },
                      child: Icon(Icons.arrow_back_ios,size: screenWidth*0.05,)),
                  Text(
                    'Personal Data',
                    style: GoogleFonts.inter(
                      fontSize: screenWidth * 0.043, // Font size based on screen width
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Container(),
                ],
              ),
              SizedBox(height: screenHeight * 0.04), // Spacing

              // User photo with green border and camera icon
              Center(
                child: Stack(
                  children: [
                    // Profile photo with green border
                    Container(
                      height: screenWidth * 0.3, // Height/width based on screen width
                      width: screenWidth * 0.3,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green, // Green border
                          width: 4,
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/dc853c4221925ff24b889a3ee6387a62.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Camera icon
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        decoration: BoxDecoration(
                          color: Colors.green, // Green background
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: screenWidth * 0.07,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03), // Spacing
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                'Full Name',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.04),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              CustomTextField(
                  hintText: 'Tumelo Mothotoane', controller: emailController),

              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                'Phone',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.04),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              CustomTextField(
                  hintText: ' +27 73 447 2313', controller: emailController),
              SizedBox(
                height: screenHeight * 0.01,
              ),

              Text(
                'Email',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.04),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              CustomTextField(
                  hintText: 'info@cropjoy.com', controller: emailController),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Spacer(),
              CustomButton(text: 'Update', onPressed: (){

              })



            ],
          ),
        ),
      ),
    );
  }
}