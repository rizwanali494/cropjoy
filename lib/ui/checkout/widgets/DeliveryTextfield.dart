import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDeliveryTextField extends StatelessWidget {
  final String labelText;
  final String hintText;

  const CustomDeliveryTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFD6D6D6)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Label with Inter font, small size, and grey color
              Text(
                labelText,
                style: GoogleFonts.poppins(
                  fontSize: 12, // Smaller font size for the label
                  color: Colors.grey[700],
                ),
              ),
              TextField(
                style: GoogleFonts.poppins(
                  fontSize: 13, // Same font size for the input text
                ),
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 13, // Same font size for hint text
                    color: Colors.black, // Lighter color for the hint text
                    fontWeight: FontWeight.w500
                  ),
                  border: InputBorder.none,
                  isDense: true, // Reduces the height of the TextField
                  contentPadding: const EdgeInsets.symmetric(vertical: 4), // Reduces internal padding for height
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
