import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBody extends StatelessWidget {
  final String heading;
  final String subtitle;
  const TextBody({super.key, required this.heading, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenwidth*0.07),
      child: Column(
        children: [
          SizedBox(height: screenwidth*0.03,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenwidth*0.01),
            child: Text(
              textAlign: TextAlign.center,
              heading,
              // "How was the product?",
              style: GoogleFonts.inter(
                fontSize: screenwidth * 0.08, // Font size based on screen width
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: screenwidth*0.01,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenwidth*0.015),
            child: Text(
              textAlign: TextAlign.center,
              subtitle,
              style: GoogleFonts.inter(
                fontSize: screenwidth * 0.04, // Font size based on screen width
                fontWeight: FontWeight.w500,
                color: Color(0xFF878787),
              ),
            ),
          ),
          SizedBox(height: screenwidth*0.01,),

        ],
      ),
    );
  }
}
