import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../order_Tracking/orderTracking.dart';

class OrderInfo extends StatelessWidget {
  final String orderId;
  final String image;
  final String date;
  final String time;
  final String deliveryType;
  final String deliveryTime;
  final String name;
  final String price;
  final String itemCount;

  const OrderInfo({super.key,
  required this.orderId,
  required this.date,
  required this.time,
  required this.deliveryType,
  required this.deliveryTime,
  required this.name,
  required this.image,
  required this.price,
  required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth -15,
      margin: EdgeInsets.only(top: screenHeight*0.01),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 0),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(screenWidth*0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Order ID',
                        style: GoogleFonts.inter(
                            color: Colors.black45,
                            fontSize: screenWidth*0.036,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(width: screenWidth*0.009),
                      Text(
                        orderId,
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: screenWidth*0.036,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OrderTracking()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth*0.03,
                          vertical: screenHeight*0.003),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFD4D4D4), width: screenWidth*0.005),
                      ),
                      child: Text(
                        'Track Order',
                        style: GoogleFonts.inter(
                            color: Colors.black38,
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth*0.036
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight*0.015),
              Row(
                children: [
                  Text(
                    'Order Date',
                    style: GoogleFonts.inter(
                        color: Colors.black45,
                        fontSize: screenWidth*0.036,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(width: screenWidth*0.009),
                  Text(
                    date,
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: screenWidth*0.036,
                        fontWeight: FontWeight.w900
                    ),
                  ),
                  SizedBox(width: screenWidth*0.009),
                  Text(
                    time,
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: screenWidth*0.036,
                        fontWeight: FontWeight.w900
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight*0.012),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Delivery type',
                        style: GoogleFonts.inter(
                            color: Colors.black45,
                            fontSize: screenWidth*0.036,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(width: screenWidth*0.009),
                      Text(
                        deliveryType,
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: screenWidth*0.036,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Delivery time',
                        style: GoogleFonts.inter(
                            color: Colors.black45,
                            fontSize: screenWidth*0.036,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(width: screenWidth*0.009),
                      Text(
                        deliveryTime,
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: screenWidth*0.036,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(height: screenHeight*0.04),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/dc853c4221925ff24b889a3ee6387a62.jpeg'),
                  ),
                  SizedBox(width: screenWidth*0.04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.inter(
                              color: Colors.black,
                            fontSize: screenWidth*0.047,
                            fontWeight: FontWeight.w700
                          )
                        ),
                        SizedBox(height: screenHeight*0.006),
                        Text(
                          'R $price',

                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: screenWidth*0.047,
                                fontWeight: FontWeight.w700
                            )
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '$itemCount Items',
                    style: GoogleFonts.inter(
                        color: Colors.black,
                      fontSize: screenWidth*0.033,
                      fontWeight: FontWeight.w500
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
