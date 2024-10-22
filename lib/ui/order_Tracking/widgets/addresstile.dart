import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressTile extends StatelessWidget {
  final String address;
  final String phone;
  final String email;
  const AddressTile({super.key,
    required this.address,
    required this.phone,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth -15,
      margin: EdgeInsets.only(top: screenHeight*0.01),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 0),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth*0.03,vertical: screenWidth*0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery Address",
                style: GoogleFonts.inter(
                  fontSize: screenWidth * 0.053, // Font size based on screen width
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: screenHeight*0.01),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.008),
                child: Row(
                  children: [
                    Icon(Icons.pin_drop_outlined, size: screenWidth * 0.07, color: Colors.black), // Leading icon with responsive size
                    Expanded( // Take the remaining space
                      child: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.02), // Add responsive left padding
                        child: Text(
                          address,
                          style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.035, // Responsive font size
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.008),
                child: Row(
                  children: [
                    Icon(Icons.phone_outlined, size: screenWidth * 0.065, color: Colors.black), // Leading icon with responsive size
                    Expanded( // Take the remaining space
                      child: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.02), // Add responsive left padding
                        child: Text(
                          phone,
                          style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.035, // Responsive font size
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.008),
                child: Row(
                  children: [
                    Icon(Icons.email_outlined, size: screenWidth * 0.065, color: Colors.black), // Leading icon with responsive size
                    Expanded( // Take the remaining space
                      child: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.02), // Add responsive left padding
                        child: Text(
                          email,
                          style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.035, // Responsive font size
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
