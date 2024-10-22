import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCategoryGrid extends StatelessWidget {
  final List<Map<String, String>> items; // List of items with image and text
  final double screenwidth; // Screen width for responsive text size

  ProductCategoryGrid({
    required this.items,
    required this.screenwidth,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(), // Grid is not scrollable
      crossAxisCount: 4, // 4 columns
      crossAxisSpacing: 10.0, // Space between columns
      mainAxisSpacing: 10.0, // Space between rows
      shrinkWrap: true, // Ensures grid takes minimum space needed
      children: items.map((item) {
        return Column(
          children: [
            Expanded(
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFAF7D8), // Background color of the container
                ),
                child: Center(
                  // Center the image inside the container
                  child: SizedBox(
                    height: 35, // Half of container's height
                    width: 35, // Half of container's width
                    child: Image.asset(
                      item['image']!,
                      fit: BoxFit.contain, // Keep the aspect ratio of the image
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0), // Space between image and text
            Text(
              item['text']!,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: Color(0XFF505050), // Text color
                fontSize: screenwidth * 0.035, // Responsive text size
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
