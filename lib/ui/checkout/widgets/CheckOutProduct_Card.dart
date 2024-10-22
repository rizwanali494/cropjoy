import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutProductCard extends StatelessWidget {
  final String productName;
  final String productDescription;
  final String imagePath;
  final double price;
  final int quantity;

  CheckoutProductCard({
    required this.productName,
    required this.productDescription,
    required this.imagePath,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10), // Spacing between cards
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // Shadow positioning
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Product image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product name
                Text(
                  productName,
                  style: GoogleFonts.inter(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )
                ),
                const SizedBox(height: 5),

                // Product price
                Text(
                  productDescription,
                  style: GoogleFonts.inter(
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff505050),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),

                // Product description

                Text(
                  '\$$price',
                  style: GoogleFonts.inter(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),

                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Quantity selector (plus, minus, quantity number)
                    Row(
                      children: [
                        // Minus button
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Icon(Icons.remove, size: 20, color: Colors.black),
                        ),
                        const SizedBox(width: 10),

                        // Quantity display
                        Text(
                          '$quantity',
                          style: GoogleFonts.inter(
                            fontSize: screenWidth*0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 10),

                        // Plus button
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Icon(Icons.add, size: 20, color: Colors.black),
                        ),
                      ],
                    ),

                    // Delete icon
                    GestureDetector(
                      onTap: () {
                        // Handle delete action here
                      },
                      child: Container(
                        height: 30,width: 25,
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.2),
                            borderRadius: BorderRadius.all(Radius.circular(5))

                          ),
                          child: Icon(Icons.delete_outline, color: Colors.red, size: 24)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
