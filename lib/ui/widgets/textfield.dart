import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  CustomTextField({
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          color: Colors.black,
          fontSize:screenwidth*0.04// Hint text in black color
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Rounded borders
          borderSide: BorderSide(
            color: Color(0xFFD6D6D6), // Border color #D6D6D6
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xFFD6D6D6), // Border color when enabled
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xFFD6D6D6), // Border color when focused
          ),
        ),
        filled: true,
        fillColor: Colors.white, // Background color
      ),
      style: GoogleFonts.inter(
          fontSize:screenwidth*0.04// Hint text in black color
      ),
    );
  }
}
