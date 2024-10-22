import 'package:cropjoy/ui/Auth/email_verification.dart';
import 'package:cropjoy/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/textfield.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final TextEditingController emailController = TextEditingController();
  int? _selectedOption;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenheight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: screenheight * 0.03),
              Text(
                'Forgot password?',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: screenwidth * 0.085),
              ),
              SizedBox(height: screenheight * 0.01),
              Text(
                'Enter your email address and we’ll send you a confirmation code to reset your password',
                style: GoogleFonts.inter(
                    color: Color(0xff878787),
                    fontWeight: FontWeight.w300,
                    fontSize: screenwidth * 0.035),
              ),
              SizedBox(height: screenheight * 0.05),
              Text(
                'Email Address',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: screenwidth * 0.04),
              ),
              SizedBox(height: screenheight * 0.03),
              CustomTextField(
                hintText: 'Email Address',
                controller: emailController,
              ),
              Spacer(),
              CustomButton(
                text: 'Continue',
                onPressed: () {
                  _showCustomBottomSheet(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Forgot password?',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              ),
              SizedBox(height: 10),
              Text(
                'Select which contact details should we use to reset your password',
                style: GoogleFonts.inter(
                    color: Color(0xff878787),
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              SizedBox(height: 20),
              _buildListTile('Send via Email', 'info@cropjoy.com', 1),
              SizedBox(height: 15,),
              _buildListTile('Send via SMS', '+27 73 447 2313', 2),

     Spacer(),
              CustomButton(text: 'Continue', onPressed: () {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => emailverification()));
              })
            ],
          ),
        );
      },
    );
  }

  Widget _buildListTile(String title, String subtitle, int value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedOption = value;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border:


          Border.all(color: Colors.green),
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: ListTile(
          title: Text(title,style: GoogleFonts.inter(
            color: Color(0xff878787),fontWeight: FontWeight.w600,fontSize: 12
          ),),
          subtitle: Text(subtitle,style:GoogleFonts.inter(
              color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15
          ) ,),
          leading: Container(
            height: 40,width: 30,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(10)),
             color: Color(0xffF5F5FF)
           ),
            child: Center(
              child: Icon(Icons.email_outlined,color: Colors.black,),
            ),
          ),
          trailing: Icon(Icons.check_circle, color: Colors.green),
          selected: _selectedOption == value,
        ),
      ),
    );
  }
}
