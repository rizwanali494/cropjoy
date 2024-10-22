import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryAddressCard extends StatelessWidget {
  final String locationType;
  final String location;
  final IconData icon;

  const DeliveryAddressCard({
    Key? key,
    required this.locationType,
    required this.location,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: screenWidth * 0.03),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Location Type
              Text(
                locationType,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),
              // Location Address
              Text(
                location,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // Icon on the right
          Icon(
            icon,
            color: Colors.black,
            size: 25,
          ),
        ],
      ),
    );
  }
}
