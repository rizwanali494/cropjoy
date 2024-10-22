import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../order/order_view.dart';

class FeedBackHeader extends StatelessWidget {
  final String headerName;
  const FeedBackHeader({super.key, required this.headerName});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: screenheight * 0.02, horizontal: screenwidth * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const OrderView()));
            },
          ),
          Text(
            headerName,
            style: GoogleFonts.inter(
              fontSize: screenwidth * 0.043, // Font size based on screen width
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "SKIP",
            style: GoogleFonts.inter(
              fontSize: screenwidth * 0.049, // Font size based on screen width
              fontWeight: FontWeight.w500,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
