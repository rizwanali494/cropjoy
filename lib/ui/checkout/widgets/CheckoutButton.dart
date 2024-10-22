import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutButton extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final VoidCallback onTap; // Callback when button is pressed

  const CheckoutButton({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: screenHeight * 0.02), // Adds some spacing
        Center(
          child: GestureDetector(
            onTap: onTap, // Trigger action on tap
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: screenHeight * 0.065, // Adjusts button height
              decoration: BoxDecoration(
                color: const Color(0xFF198910), // Green background
                borderRadius: BorderRadius.circular(30), // Rounded corners
              ),
              child: Center(
                child: Text(
                  'Checkout', // Center text
                  style: GoogleFonts.inter(
                    fontSize: screenWidth * 0.04, // Font size for the text
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20), // Additional spacing below the button
      ],
    );
  }
}
