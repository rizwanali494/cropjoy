import 'package:cropjoy/ui/Profilepage/profileHome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class userabout extends StatelessWidget {
  const userabout({super.key});

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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserProfileSettingsPage()));
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
                Text('About Us',style: GoogleFonts.inter(
                    color: Colors.black,fontSize: screenWidth*0.045,fontWeight: FontWeight.w700
                ),),
                Container(width: screenWidth*0.03,),
              ],),
            SizedBox(height: screenHeight*0.03,),


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
                fontWeight: FontWeight.w400,color: Color(0xff505050),fontSize: screenWidth*0.042
            ),
            children: [
              const TextSpan(
                text: "• ", // Bullet symbol at the start
                style: TextStyle(
                  fontWeight: FontWeight.bold, // Bullet point in bold
                ),
              ),
              TextSpan(
                text: "Automatic Information: ",
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.bold, // Make "Automatic Information" bold
                ),
              ),
              const TextSpan(
                text:
                "We automatically collect and store certain types of information about your use of Np Services, including information about your interaction with products, content and services available through Np Services. Like many websites, we use \"cookies\" and other unique identifiers, and we obtain certain types of information when your web browser or device accesses Np Services and other content served by or on behalf of Np on other websites. Our physical stores may use cameras, computer vision, sensors, and other technology to gather information about your activity in the store, such as the products and services you interact with. ",
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
                text: " to see examples of what we collect.",
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