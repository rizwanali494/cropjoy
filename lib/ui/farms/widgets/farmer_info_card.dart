import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmerInfoCard extends StatefulWidget {
  // Constructor to accept data (acting as a setter)
  final String farmName;
  final String location;
  final String status;
  final String distance;
  final String rating;
  final String imagePath;
  final String avatarPath;

  const FarmerInfoCard({
    Key? key,
    required this.farmName,
    required this.location,
    required this.status,
    required this.distance,
    required this.rating,
    required this.imagePath,
    required this.avatarPath,
  }) : super(key: key);

  @override
  _FarmerInfoCardState createState() => _FarmerInfoCardState();
}

class _FarmerInfoCardState extends State<FarmerInfoCard> {
  // Getter for farmName (access data)
  String get farmName => widget.farmName;

  // Getter for location
  String get location => widget.location;

  // Getter for status
  String get status => widget.status;

  // Getter for distance
  String get distance => widget.distance;

  // Getter for rating
  String get rating => widget.rating;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: AssetImage(widget.imagePath), // Dynamically passed image
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          // Left side: Farm image (dynamically passed)
          CircleAvatar(
            radius: screenWidth * 0.1,
            backgroundImage: AssetImage(widget.avatarPath), // Dynamic avatar
          ),
          SizedBox(width: 20), // Spacing between image and text

          // Right side: Text rows with dynamic data
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Row 1: Dynamic Farm Name
              Text(
                farmName, // Using getter
                style: GoogleFonts.inter(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5),

              // Row 2: Dynamic Location
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.white,
                    size: screenWidth * 0.04,
                  ),
                  SizedBox(width: 5),
                  Text(
                    location, // Using getter
                    style: GoogleFonts.inter(
                      fontSize: screenWidth * 0.03,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),

              // Row 3: Dynamic Online status, Distance, and Rating
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Online status
                  _buildStatusContainer(
                    icon: Icons.circle,
                    iconColor: status == "Online" ? Colors.green : Colors.red,
                    label: status, // Dynamic status
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  // Distance
                  _buildStatusContainer(
                    icon: Icons.location_pin,
                    iconColor: Colors.orange,
                    label: distance, // Dynamic distance
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  // Rating and Orders
                  _buildStatusContainer(
                    icon: Icons.star,
                    iconColor: Colors.orange,
                    label: rating, // Dynamic rating
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to build status containers with dynamic data
  Widget _buildStatusContainer({
    required IconData icon,
    required Color iconColor,
    required String label,
    required double screenWidth,
    required double screenHeight,
  }) {
    return Container(
      height: screenHeight * 0.025,
      width: screenWidth * 0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: screenWidth * 0.025,
          ),
          SizedBox(width: 1),
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: screenWidth * 0.025,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
