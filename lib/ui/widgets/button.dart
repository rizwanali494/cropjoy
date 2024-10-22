import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // For text styling with Google Fonts

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16), // Button height
        decoration: BoxDecoration(
          color: Color(0xff198910), // Button background color
          borderRadius: BorderRadius.all(Radius.circular(30)), // Rounded corners
        ),
        alignment: Alignment.center, // Center the text
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: Colors.white, // Text color
            fontSize: 15, // Adjust text size if needed
            fontWeight: FontWeight.w500, // Font weight for boldness
          ),
        ),
      ),
    );
  }
}
