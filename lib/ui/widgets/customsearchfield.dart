import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextFieldWidget extends StatelessWidget {
  final String hintText; // Customizable hint text for the search field

  SearchTextFieldWidget({this.hintText = 'Search Products'}); // Default hint text

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the container
        borderRadius: BorderRadius.all(Radius.circular(10.0)), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1), // White blur effect
            blurRadius: 50, // Blur intensity
            spreadRadius: 50, // Spread intensity
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 20.0), // Increase height
          hintText: hintText, // Hint text
          hintStyle: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            color: Color(0xff878787), // Hint text color
          ),
          filled: true,
          fillColor: Colors.white, // Background color
          prefixIcon: Icon(
            Icons.search, // Search icon
            color: Colors.grey, // Icon color
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none, // No border color
            borderRadius: BorderRadius.all(Radius.circular(10.0)), // Rounded corners
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // No border color on focus
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        cursorColor: Colors.green, // Cursor color
      ),
    );
  }
}
