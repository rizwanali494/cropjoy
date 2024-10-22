import 'package:cropjoy/ui/Auth/Login_screen.dart';
import 'package:cropjoy/ui/Auth/phone%20verification.dart';
import 'package:cropjoy/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../widgets/passwordtextfield.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  final TextEditingController passwordController = TextEditingController();
  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/img.png', // Replace with your image URL or use AssetImage for local image
                height: 100,
              ),
              SizedBox(height: 40),
              Center(
                child: Text(
                  'Password Changed',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Password changed successfully, you can login again with a new password',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(fontSize: 12, color: Colors.grey),
              ),
              Spacer(),
              CustomButton(text: 'Verify Account', onPressed:  (){

                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginScreen()));


              })

            ],
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: screenwidth * 0.05,
                      ),
                    ),
                    Text(
                      'Reset Password',
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: screenwidth * 0.04),
                    ),
                    Container(),
                  ],
                ),
                SizedBox(
                  height: screenheight * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Reset Password',
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: screenwidth * 0.085),
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Your new password must be different from the previously used password',
                    style: GoogleFonts.inter(
                        color: Color(0xff878787),
                        fontWeight: FontWeight.w300,
                        fontSize: screenwidth * 0.04),
                  ),
                ),





                SizedBox(
                  height: screenheight * 0.01,
                ),
                Text(
                  'New Password',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.01,
                ),
                CustomPasswordField(
                    hintText: ' password', controller: passwordController),
                SizedBox(
                  height: screenheight * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Must be at least 8 character',
                    style: GoogleFonts.inter(
                        color: Color(0xff878787),
                        fontWeight: FontWeight.w300,
                        fontSize: screenwidth * 0.03),
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.01,
                ),
                Text(
                  'Confirm Password',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.01,
                ),
                CustomPasswordField(
                    hintText: ' password', controller: passwordController),
                SizedBox(
                  height: screenheight * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Both password must match',
                    style: GoogleFonts.inter(
                        color: Color(0xff878787),
                        fontWeight: FontWeight.w300,
                        fontSize: screenwidth * 0.03),
                  ),
                ),

Spacer(),
                CustomButton(text: 'Verify Account', onPressed: () {
                  _showCustomBottomSheet(context);
                }, )


              ],
            ),
          )),
    );
  }
}
