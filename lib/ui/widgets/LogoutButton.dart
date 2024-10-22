import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // For text styling with Google Fonts

class Logoutbutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  Logoutbutton({
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
       border: Border.all(color: Color(0xffD6D6D6)),
          borderRadius: BorderRadius.all(Radius.circular(30)), // Rounded corners
        ),
        alignment: Alignment.center, // Center the text
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.logout,color: Colors.red,),
            SizedBox(width: 5,),
            Text(
              text,
              style: GoogleFonts.inter(
                color: Colors.red, // Text color
                fontSize: 15, // Adjust text size if needed
                fontWeight: FontWeight.w700, // Font weight for boldness
              ),
            ),
          ],
        ),
      ),
    );
  }
}