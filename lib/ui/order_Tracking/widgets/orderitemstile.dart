import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../orderTracking.dart';

class OrderItemsTile extends StatelessWidget {
  final String orderId;
  final String image;
  final String date;
  final String time;
  final String deliveryType;
  final String deliveryTime;
  final String prodName;
  final String prodPrice;
  final String itemCount;

  const OrderItemsTile({super.key,
    required this.orderId,
    required this.date,
    required this.time,
    required this.deliveryType,
    required this.deliveryTime,
    required this.prodName,
    required this.image,
    required this.prodPrice,
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
          padding: EdgeInsets.symmetric(horizontal: screenWidth*0.03,vertical: screenWidth*0.03),
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
              SizedBox(height: screenHeight*0.015),
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
                  Container(
                    height: screenHeight*0.09,
                    width: screenWidth*0.17,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/image 38.png'), // Path to your image
                        fit: BoxFit.cover, // Box fit mode
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth*0.04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            prodName,
                            style: GoogleFonts.inter(
                                fontSize: screenWidth*0.046,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(height: screenHeight*0.006),
                        Text(
                            'R $prodPrice',
                            style: GoogleFonts.inter(
                                fontSize: screenWidth*0.04,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ],
                    ),
                  ),
                  Text(
                      '${itemCount}Kg',
                      style: GoogleFonts.inter(
                          fontSize: screenWidth*0.038,
                          fontWeight: FontWeight.w600
                      )
                  ),
                ],
              ),
              Divider(height: screenHeight*0.03),
              Row(
                children: [
                  Container(
                    height: screenHeight*0.09,
                    width: screenWidth*0.17,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/image 39.png'), // Path to your image
                        fit: BoxFit.cover, // Box fit mode
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth*0.04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            prodName,
                            style: GoogleFonts.inter(
                                fontSize: screenWidth*0.046,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(height: screenHeight*0.006),
                        Text(
                            'R $prodPrice',
                            style: GoogleFonts.inter(
                                fontSize: screenWidth*0.04,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ],
                    ),
                  ),
                  Text(
                      '${itemCount}Kg',
                      style: GoogleFonts.inter(
                          fontSize: screenWidth*0.038,
                          fontWeight: FontWeight.w600
                      )
                  ),
                ],
              ),
              Divider(height: screenHeight*0.03),
              Row(
                children: [
                  Container(
                    height: screenHeight*0.09,
                    width: screenWidth*0.17,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/image 38.png'), // Path to your image
                        fit: BoxFit.cover, // Box fit mode
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth*0.04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            prodName,
                            style: GoogleFonts.inter(
                                fontSize: screenWidth*0.046,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(height: screenHeight*0.006),
                        Text(
                            'R $prodPrice',
                            style: GoogleFonts.inter(
                                fontSize: screenWidth*0.04,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ],
                    ),
                  ),
                  Text(
                      '${itemCount}Kg',
                      style: GoogleFonts.inter(
                          fontSize: screenWidth*0.038,
                          fontWeight: FontWeight.w600
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
