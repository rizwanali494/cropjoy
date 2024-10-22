import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ProductDetailPage.dart';

class Topratedproducts extends StatelessWidget {
  final String coverImage;
  final String name;
  final String subName;
  final String location;
  final String rating;
  final String orders;
  final String discount; // Added for the percentage off

  const Topratedproducts({
    Key? key,
    required this.coverImage,
    required this.name,
    required this.subName,
    required this.location,
    required this.rating,
    required this.orders,
    required this.discount, // Pass the discount percentage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: (){

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              productImages: ['assets/images/cb40cd7f23ad5957c44c79fcf3e5b368.jpeg', 'assets/images/cb40cd7f23ad5957c44c79fcf3e5b368.jpeg','assets/images/cb40cd7f23ad5957c44c79fcf3e5b368.jpeg',],
              productName: 'Fresh Milk',
              productCategory: 'Dairy',
              stockCount: '50',
              rating: 4.5,
              orders: 120,
              price: 15.99,
              description: 'Burger With Meat is a typical food from our restaurant that is much in demand by many people, this is very recommended for you.',
              farmName: 'Farm Name',
              farmLocation: 'Downtown City, South Africa',
              farmDistance: '15 km',
              farmRating: '4.8',
              farmOrders: '500',
              farmImage: 'assets/images/c3d108ad4985871e6da26a9c79aee760.jpeg',
            ),
          ),
        );

      },
      child: Container(
        width: screenwidth * 0.6, // Adjust width as needed
        margin: EdgeInsets.only(right: 16.0), // Spacing between items
        child: Card(
          color: Colors.white,
          elevation: 2, // Elevation for shadow effect
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Border radius for the Card
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Center the content
              children: [
                Stack(
                  clipBehavior: Clip.none, // To allow the profile image to overflow
                  children: [
                    // Cover Photo (Full width)
                    Container(
                      height: 150, // Set height of the cover image
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ), // Rounded corners on the top only
                        border: Border.all(
                          color: Color(0xffCFCDCD), // Border color
                        ),
                        image: DecorationImage(
                          image: AssetImage(coverImage),
                          fit: BoxFit.cover, // Cover the box with the image
                        ),
                      ),
                    ),
                    // Discount Label (Percentage Off)
                    Positioned(
                      top: 10,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.green, // Background color for the label

                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                        ),
                        child: Text(
                          '$discount% off', // Discount text
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white, // Text color
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Add space between image and content
                Text(
                  name,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          SizedBox(width: 3),
                          Text(
                            '$rating',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '($orders)',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_pin, color: Colors.orange, size: 16),
                          SizedBox(width: 3),
                          Text(
                            location,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    subName,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
