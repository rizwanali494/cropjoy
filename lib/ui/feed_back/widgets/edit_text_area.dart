import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditTextArea extends StatelessWidget {
  final TextEditingController reviewController;
  final String hintText;
  final FocusNode focusNode;
  const EditTextArea({super.key, required this.reviewController, this.hintText = "Add a review", required this.focusNode,});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenhight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenwidth*0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Add Review",
            style: GoogleFonts.inter(
              fontSize: screenwidth*0.043,
              fontWeight: FontWeight.w600,
              color: Color(0xFF101010)
            ),
          ),
          SizedBox(height: screenhight*0.008),
          TextField(
            keyboardType: TextInputType.text,
            controller: reviewController,
            focusNode: focusNode,
            maxLines: 4,
            style: GoogleFonts.inter(
              fontSize: screenwidth * 0.04,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF505050),
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.inter(
                fontSize: screenwidth * 0.04,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF505050),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xFF505050), // Custom border color
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xFF505050), // Custom border color when focused
                ),
              ),
              contentPadding: EdgeInsets.all(screenwidth*0.025),
            ),
          ),
        ],
      ),
    );
  }
}
