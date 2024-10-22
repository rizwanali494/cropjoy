import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutHeader extends StatelessWidget {
  final double screenWidth;
  final VoidCallback onBackPressed;

  CheckoutHeader({required this.screenWidth, required this.onBackPressed});

  @override
  Widget build(BuildContext context) {
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
          'Checkout',
          style: GoogleFonts.inter(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: screenWidth * 0.045,
          ),
        ),

        // Placeholder for alignment
        Container(width: screenWidth * 0.07),
      ],
    );
  }
}
