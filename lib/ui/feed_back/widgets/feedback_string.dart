import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SendFeedBackString extends StatelessWidget {

  const SendFeedBackString({super.key,});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: screenwidth*0.015, top: screenwidth*0.05),
      child: Text(
        textAlign: TextAlign.center,
        "Sent a feedback to farmer about your order",
        style: GoogleFonts.inter(
          fontSize: screenwidth * 0.035,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF505050),
        ),
      ),
    );
  }
}
