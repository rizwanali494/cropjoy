import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmerHeader extends StatelessWidget {
  final String title;
  final VoidCallback onBackPressed;
  final String profileImagePath;

  const FarmerHeader({
    Key? key,
    required this.title,
    required this.onBackPressed,
    required this.profileImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Back button
        GestureDetector(
          onTap: onBackPressed,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xffEDEDED)),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),

        // Title
        Text(
          title,
          style: GoogleFonts.inter(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: screenWidth * 0.04,
          ),
        ),

        // Profile Image
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xffEDEDED)),
          ),
          child: Image.asset(profileImagePath), // Profile image passed dynamically
        ),
      ],
    );
  }
}
