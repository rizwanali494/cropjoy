import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../order/order_view.dart';

class OrderTrackingHeader extends StatelessWidget {
  final VoidCallback onBackPressed;
  const OrderTrackingHeader({super.key, required this.onBackPressed});

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

          GestureDetector(
            onTap: onBackPressed,
            child: Container(
              height: screenheight*0.06,
              width: screenwidth*0.11,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                    color: const Color(0xFFD4D4D4), width: screenwidth * 0.005),
              ),
              child: Icon(Icons.arrow_back_ios_new_rounded, size: screenwidth*0.06,),
            ),
          ),
          Text(
            'Order Tracking',
            style: GoogleFonts.inter(
              fontSize: screenwidth * 0.043, // Font size based on screen width
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Container(
            width: screenwidth*0.1,
          )
        ],
      ),
    );
  }
}
