import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../order_Tracking/orderTracking.dart';

class ChatHeader extends StatelessWidget {
  final String name;
  final String status;
  const ChatHeader({super.key, required this.name, required this.status});

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
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OrderTracking()));
            },
            child: Container(
              height: screenheight*0.1,
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
          // IconButton(
          //   icon: const Icon(Icons.arrow_back_ios_new_rounded),
          //   onPressed: () {
          //     Navigator.pushReplacement(
          //         context, MaterialPageRoute(builder: (context) => const OrderTracking()));
          //   },
          // ),
          Column(
            children: [
              Text(
                name,
                style: GoogleFonts.inter(
                  fontSize: screenwidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                status,
                style: GoogleFonts.inter(
                  fontSize: screenwidth * 0.03,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
          Container(
            width: screenwidth*0.1,
          )
        ],
      ),
    );
  }
}
