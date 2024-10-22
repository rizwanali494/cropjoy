import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import the Google Fonts package

class MessageInput extends StatelessWidget {
  const MessageInput({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(screenwidth * 0.03),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your message...',
                hintStyle: GoogleFonts.inter(
                  color: Colors.grey.shade600, // Set the hint text style using GoogleFonts
                  fontSize: 16,
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: screenheight * 0.015,
                    horizontal: screenwidth * 0.04),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5), // Set border radius to 5
                  borderSide: BorderSide(
                    color: Color(0xFFD6D6D6), // Set the border color to #D6D6D6
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5), // Set border radius to 5
                  borderSide: BorderSide(
                    color: Color(0xFFD6D6D6), // Set the border color to #D6D6D6 when focused
                    width: 1.0,
                  ),
                ),

              ),
              style: GoogleFonts.inter(
                color: Colors.black, // Style the input text using GoogleFonts
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(width: screenwidth * 0.03),
          Container(
            padding: EdgeInsets.all(screenwidth * 0.03),
            decoration: BoxDecoration(
              color: Color(0xFF198910),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
