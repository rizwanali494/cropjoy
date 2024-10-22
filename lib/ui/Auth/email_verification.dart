import 'package:cropjoy/ui/Auth/phone%20verification.dart';
import 'package:cropjoy/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class emailverification extends StatefulWidget {
  const emailverification({super.key});

  @override
  State<emailverification> createState() => _emailverificationState();
}

class _emailverificationState extends State<emailverification> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

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
                  'OTP',
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
                'Email verification',
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
                'Enter the verification code we sent you on:info@crop******.com',
                style: GoogleFonts.inter(
                    color: Color(0xff878787),
                    fontWeight: FontWeight.w300,
                    fontSize: screenwidth * 0.04),
              ),
            ),
            SizedBox(
              height: screenheight * 0.01,
            ),
            Expanded(
              child: Center(
                child: OtpPinField(
                  fieldHeight: 60,
                  fieldWidth: 60,
                  key: _otpPinFieldController,
                  maxLength: 4,
                  otpPinFieldDecoration: OtpPinFieldDecoration.custom,

                  otpPinFieldStyle: OtpPinFieldStyle(
                    textStyle: GoogleFonts.inter(
                      backgroundColor: Colors.white,
                      color: Colors.black,
                      fontSize: screenwidth*0.08
                    ),

                    defaultFieldBorderColor: Color(0xffEAEAEA),  // Grey border for inactive state
                    activeFieldBorderColor:  Color(0xffEAEAEA),  // Grey border for active state
                    filledFieldBorderColor:Color(0xffEAEAEA),    // Grey border for filled state
                    fieldBorderWidth: 1,
                  ),
                  showCursor: true,
                  cursorColor: Colors.black,
                  onSubmit: (text) {
                    print('Entered pin is $text');
                  },
                  onChange: (text) {
                    print('Enter on change pin is $text');
                  },
                ),
              ),
            ),
            SizedBox(
              height: screenheight * 0.01,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn’t receive code?',style: GoogleFonts.inter(
color: Color(0xff878787)
                ),),
                SizedBox(width: 5,),
                Text('Resend',style: GoogleFonts.inter(
                    color: Colors.green,fontWeight: FontWeight.w600
                ),)
              ],
            ),
            SizedBox(
              height: screenheight * 0.02,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.timer,color: Colors.grey,),
                SizedBox(width: 5,),
                Text('09:00',style: GoogleFonts.inter(
                    color: Colors.grey,fontWeight: FontWeight.w400
                ),)
              ],
            ),
            SizedBox(height: screenheight*0.02,),
            CustomButton(text: 'Continue', onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => phoneverification()));
            })


          ],
        ),
      )),
    );
  }
}
