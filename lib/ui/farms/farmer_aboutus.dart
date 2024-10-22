import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmerAboutUs extends StatelessWidget {
  final String aboutText;
  final String locationText;
  final String locationDetail;

  const FarmerAboutUs({
    Key? key,
    required this.aboutText,
    required this.locationText,
    required this.locationDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.04,
            right: screenWidth * 0.04,
            top: screenHeight * 0.01,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // About section
                Text(
                  'About',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
            
                // About text (dynamically passed)
                Text(
                  aboutText,
                  style: GoogleFonts.inter(
                    color: const Color(0xff505050),
                    fontSize: screenWidth * 0.035,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
            
                // Location section
                Text(
                  locationText,
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Center(child: SizedBox(
                    height: screenHeight*0.3,
                    width: screenWidth*1,
                    child: Image.asset('assets/images/location11.png',fit: BoxFit.cover,))),
                SizedBox(height: screenHeight*0.02,),
            
                // Location details (dynamically passed)
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.orange,
                      size: screenWidth * 0.05,
                    ),
                     SizedBox(width: 5), // Add some spacing between the icon and text
                    Text(
                      locationDetail,
                      style: GoogleFonts.inter(
                        color: const Color(0xff45474B),
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
