import 'package:cropjoy/ui/Auth/Login_screen.dart';
import 'package:cropjoy/ui/Auth/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/button.dart';
import '../widgets/customdropdown.dart';
import '../widgets/customradio.dart';
import '../widgets/passwordtextfield.dart';
import '../widgets/termprivacy.dart';
import '../widgets/textfield.dart';

class BussinessRegister extends StatefulWidget {
  const BussinessRegister({super.key});

  @override
  State<BussinessRegister> createState() => _BussinessRegistrationState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController businessController = TextEditingController();
final TextEditingController registrationNumberController = TextEditingController();
bool isSelected = true;

class _BussinessRegistrationState extends State<BussinessRegister> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: screenheight * 0.01,
              ),
              Text(
                'Username',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: screenwidth * 0.04),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              CustomTextField(
                  hintText: 'Username', controller: emailController),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Text(
                'Phone',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: screenwidth * 0.04,
                ),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              CustomTextField(
                  hintText: ' phone', controller: passwordController),
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
                  hintText: 'Password', controller: passwordController),

              SizedBox(
                height: screenheight * 0.01,
              ),
              Text(
                'Business Name',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: screenwidth * 0.04,
                ),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              CustomTextField(
                  hintText: 'Business Name', controller: businessController),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Text(
                'Company Registration Number',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: screenwidth * 0.04,
                ),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              CustomTextField(
                  hintText: 'Registration Number', controller: registrationNumberController),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Text(
               ' Business Type',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: screenwidth * 0.04,
                ),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              CustomDropdown(),
              SizedBox(
                height: screenheight * 0.03,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Align items at the start vertically
                children: [
                  // Custom radio button widget
                  CustomRadioButton(
                    isSelected: isSelected,
                    onChanged: (value) {
                      setState(() {
                        isSelected =
                            value; // Update the selection state when clicked
                      });
                    },
                  ),
                  SizedBox(
                      width:
                      8), // Add spacing between the radio button and text
                  // Wrap the TermsAndPrivacyWidget in a Flexible to allow it to move to the next line
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TermsAndPrivacyWidget(
                          onTermsTap: () {
                            print('Navigate to Terms of Service');
                          },
                          onPrivacyTap: () {
                            print('Navigate to Privacy Policy');
                          },
                          onAgreementChanged: (isAgreed) {
                            print(isAgreed
                                ? 'User agreed'
                                : 'User did not agree');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              CustomButton(text: 'Register', onPressed: (){

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              }),
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
                    'have an account? ',
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: screenwidth * 0.035),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      'Sign In',
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
      ),
    );
  }
}
