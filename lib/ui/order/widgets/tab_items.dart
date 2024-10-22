import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TabItems extends StatelessWidget {
  final String title;
  const TabItems({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Tab(
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.inter(
            fontSize: screenWidth*0.036,
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
