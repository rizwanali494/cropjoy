import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSummary extends StatelessWidget {
  final String totalItems;
  final String subTotal;
  final String deliveryCharges;
  final String totalPrice;
  const PaymentSummary({super.key,
  required this.totalItems,
  required this.subTotal,
  required this.deliveryCharges,
  required this.totalPrice,
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
              Text(
                  "Payment Summary",
                style: GoogleFonts.inter(
                  fontSize: screenWidth * 0.053, // Font size based on screen width
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: screenHeight*0.01),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Total Items",
                      style: GoogleFonts.inter(
                          color: Colors.black45,
                          fontSize: screenWidth*0.036,
                          fontWeight: FontWeight.w700
                      ),

                    ),
                    Text(
                        totalItems,
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: screenWidth*0.036,
                          fontWeight: FontWeight.w700
                      ),

                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Subtotal",
                      style: GoogleFonts.inter(
                          color: Colors.black45,
                          fontSize: screenWidth*0.036,
                          fontWeight: FontWeight.w700
                      ),

                    ),
                    Text(
                        subTotal,
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: screenWidth*0.036,
                          fontWeight: FontWeight.w700
                      ),

                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Delivery Charges",
                      style: GoogleFonts.inter(
                          color: Colors.black45,
                          fontSize: screenWidth*0.036,
                          fontWeight: FontWeight.w700
                      ),

                    ),
                    Text(
                        deliveryCharges,
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: screenWidth*0.036,
                          fontWeight: FontWeight.w700
                      ),

                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Total Price",
                      style: GoogleFonts.inter(
                          color: Colors.black45,
                          fontSize: screenWidth*0.036,
                          fontWeight: FontWeight.w700
                      ),

                    ),
                    Text(
                        totalPrice,
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: screenWidth*0.036,
                          fontWeight: FontWeight.w700
                      ),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
