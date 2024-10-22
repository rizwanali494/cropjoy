import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final double rating;
  final String category;
  final String orders;
  final double price;
  final String description;
  final String imagePath;
  final VoidCallback onAddToCart;

  const ProductCard({
    Key? key,
    required this.productName,
    required this.rating,
    required this.category,
    required this.price,
    required this.description,
    required this.imagePath,
    required this.onAddToCart, required this.orders,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Card(
color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Color(0xFFF4F4F4), width: 1),
      ),
      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.03),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image (Left Side)
            Container(
              height: screenHeight * 0.13,
              width: screenHeight * 0.11,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: screenWidth * 0.02), // Space between image and text

            // Product Details (Right Side)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Name and Rating (Top Row)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productName,
                        style: GoogleFonts.inter(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: screenWidth * 0.04),
                          SizedBox(width: 2),
                          Text(
                            '$rating',
                            style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '($orders)',
                            style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff878787),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),

                  // Product Category
                  Text(
                    category,
                    style: GoogleFonts.inter(
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff727272),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),

                  // Price and Add to Cart Button (Row)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$$price',
                        style: GoogleFonts.inter(
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        width: screenWidth*0.1, // Set width for the circular button
                        height: screenHeight*0.045, // Set height for the circular button
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          shape: BoxShape.circle, // Make it circular
                          border: Border.all(color: Color(0xffC4C4C4), width: 1), // Grey border
                        ),
                        child: Center(
                          child: IconButton(
                            icon: Center(child: Icon(Icons.add, color: Colors.black,size: screenWidth*0.045,)), // Centered plus icon
                            onPressed: onAddToCart, // Handle add to cart action
                          ),
                        ),
                      )

                    ],
                  ),


                  // Product Description
                  Text(
                    description,
                    style: GoogleFonts.inter(
                      fontSize: screenWidth * 0.03,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff505050),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
