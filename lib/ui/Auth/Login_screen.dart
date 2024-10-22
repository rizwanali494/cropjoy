import 'package:cropjoy/ui/Auth/ForgotPassword.dart';
import 'package:cropjoy/ui/Auth/tabbar.dart';
import 'package:cropjoy/ui/Homepage/btm_navigation.dart';
import 'package:cropjoy/ui/location/location.dart';
import 'package:cropjoy/ui/widgets/passwordtextfield.dart';
import 'package:cropjoy/ui/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/button.dart';
import 'email_verification.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: screenheight * 0.03,
              ),
              Text(
                'Login to your account.',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: screenwidth * 0.085),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Text(
                'Please sign in to your account ',
                style: GoogleFonts.inter(
                    color: Color(0xff878787),
                    fontWeight: FontWeight.w300,
                    fontSize: screenwidth * 0.035),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Text(
                'Email Address',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: screenwidth * 0.04),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              CustomTextField(
                  hintText: 'Email Address', controller: emailController),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Text(
                'Password',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: screenwidth * 0.04,
                ),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              CustomPasswordField(
                  hintText: ' Password', controller: passwordController),
              SizedBox(
                height: screenheight * 0.01,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Forgotpassword()));
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: GoogleFonts.inter(
                        color: Color(0xff198910),
                        fontWeight: FontWeight.w600,
                        fontSize: screenwidth * 0.04),
                  ),
                ),
              ),
              SizedBox(
                height: screenheight * 0.03,
              ),
              CustomButton(
                text: 'Sign In', // Example button text
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        locationfetch()
                    ),
                  );
                },
              ),
              SizedBox(
                height: screenheight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenwidth * 0.3,
                    height: 1,
                    color: Color(0xff878787),
                  ),
                  Text(
                    'Or sign in with',
                    style: GoogleFonts.inter(
                        color: Color(0xff878787),
                        fontWeight: FontWeight.w500,
                        fontSize: screenwidth * 0.031),
                  ),
                  Container(
                    width: screenwidth * 0.3,
                    height: 1,
                    color: Color(0xff878787),
                  ),
                ],
              ),
              SizedBox(
                height: screenheight * 0.03,
              ),
              Center(child: Image.asset('assets/images/Button.png')),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' Don,t have an account? ',
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: screenwidth * 0.035),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => TabbarScreen()),
                      );
                    },
                    child: Text(
                      'Register',
                      style: GoogleFonts.inter(
                          color: Color(0xff198910),
                          fontWeight: FontWeight.w500,
                          fontSize: screenwidth * 0.035),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
