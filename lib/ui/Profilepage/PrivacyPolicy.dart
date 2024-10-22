import 'package:cropjoy/ui/Profilepage/profileHome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class userprivacy extends StatelessWidget {
  final String fromPage;
  const userprivacy({super.key, required this.fromPage});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
backgroundColor: Colors.white,
      body: SafeArea(child: Container(
padding: EdgeInsets.only(left: screenWidth*0.04,right: screenWidth*0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  if (fromPage == 'Individual_Registration') {
                    // Navigate back to signup screen
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/Individual_Registration', (Route<dynamic> route) => false);
                  } else if (fromPage == 'profile') {
                    // Navigate back to profile screen
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile', (Route<dynamic> route) => false);
                  }
                },
                child: Container(

                  height:35,width: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    border: Border.all(color: Color(0xffEDEDED))
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,),
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Privacy Policy',style: GoogleFonts.inter(
                    color: Colors.black,fontSize: screenWidth*0.045,fontWeight: FontWeight.w700
                ),),
              ),
              Container(width: screenWidth*0.2,),
            ],),
          SizedBox(height: screenHeight*0.03,),
          Text('We know that you care how information about you is used and shared, and we appreciate your trust that we will do so carefully and sensibly. This Privacy Notice describes how Np and its affiliates (collectively "Np") collect and process your personal information through Np websites, devices, products, services, online and physical stores, and applications that reference this Privacy Notice (together "Np Services"). By using Np, you are consenting to the practices described in this Privacy Notice.',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w400,color: Color(0xff505050),fontSize: screenWidth*0.04
          ),
          ),

          SizedBox(height: screenHeight*0.03,),
          Text('What Personal Information About Customers Does Np Collect?',style: GoogleFonts.plusJakartaSans(
              color: Colors.black,fontSize: screenWidth*0.045,fontWeight: FontWeight.w700
          ),),
          SizedBox(height: screenHeight*0.02,),
          Text('We collect your personal information in order to provide and continually improve our products and services.',
            style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w400,color: Color(0xff505050),fontSize: screenWidth*0.04
            ),
          ),

          SizedBox(height: screenHeight*0.01,),
          Text('Here are the types of personal information we collect:',
            style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w400,color: Color(0xff505050),fontSize: screenWidth*0.04
            ),
          ),
          SizedBox(height: screenHeight*0.01,),

        RichText(
          text: TextSpan(
            style: GoogleFonts.plusJakartaSans(
              fontSize: screenWidth*0.04,
              color: Color(0xff505050),
            ),
            children: [
              const TextSpan(
                text: "• ", // Bullet symbol at the start
                style: TextStyle(
                  fontWeight: FontWeight.bold, // Bullet point in bold
                ),
              ),
              TextSpan(
                text: "Information You Give Us: ",
                style: const TextStyle(
                  fontWeight: FontWeight.bold, // Make "Information You Give Us" bold
                ),
              ),
              const TextSpan(
                text:
                "We receive and store any information you provide in relation to Np Services. ",
              ),
              TextSpan(
                text: "Click here",
                style: const TextStyle(
                  color: Colors.orange, // Make 'Click here' text orange
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Action when 'Click here' is tapped
                    print("Clicked on 'Click here'");
                  },
              ),
              const TextSpan(
                text:
                " to see examples of what we collect. You can choose not to provide certain information, but then you might not be able to take advantage of many of our Np Services.",
              ),
            ],
          ),
        ),


      ],),
      )
      ),
    );
  }
}
