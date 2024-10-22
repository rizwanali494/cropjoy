import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedFarmCard extends StatelessWidget {
  final String coverImage;
  final String profileImage;
  final String name;
  final String subName;
  final String location;
  final String rating;
  final String orders;
  final bool isOnline;

  const FeaturedFarmCard({
    Key? key,
    required this.coverImage,
    required this.profileImage,
    required this.name,
    required this.subName,
    required this.location,
    required this.rating,
    required this.orders,
    this.isOnline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
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
            crossAxisAlignment: CrossAxisAlignment.center, // Center the content
            children: [
              Stack(
                clipBehavior: Clip.none, // To allow the profile image to overflow
                children: [
                  // Cover Photo (Full width)
                  Container(
                    height: 100, // Set height of the cover image
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
                  // Profile Image centered at the bottom of the Cover Photo
                  Positioned(
                    bottom: -40, // Position profile image
                    left: (screenwidth * 0.6 / 2) - 40, // Center the profile image
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        image: DecorationImage(
                          image: AssetImage(profileImage),
                          fit: BoxFit.cover, // Cover the circle
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50), // Space to avoid overlap
              // Name Text
              Text(
                name,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              // SubName Text
              Text(
                subName,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              // Online status, Location, Rating, and Orders
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Online Status
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.circle,
                          color: isOnline ? Colors.green : Colors.grey,
                          size: 10, // Green dot for online status
                        ),

                        Text(
                          isOnline ? "Online" : "Offline",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: isOnline ? Colors.green : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    // Location with Pin Icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.location_pin, color: Colors.orange, size: 16),

                        Text(
                          location,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    // Rating with Star Icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 16),

                        Text(
                          '$rating ',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700,
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
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
