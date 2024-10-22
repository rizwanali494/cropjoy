import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserOptionTile extends StatelessWidget {
  final IconData icon;          // Icon to display
  final String title;           // Title text for the option
  final VoidCallback onTap;     // Callback function for when the tile is tapped

  const UserOptionTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap, // Handle tap
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0), // Add vertical padding
        child: Row(
          children: [
            Container(
              height: 40,width: 40,
                decoration: BoxDecoration(
                color: Color(0xffF5F5FF),borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Center(child: Icon(icon, size: screenWidth * 0.07, color: Colors.black))), // Leading icon with responsive size
            Expanded( // Take the remaining space
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.07), // Add responsive left padding
                child: Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: screenWidth * 0.042, // Responsive font size
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey), // Trailing arrow icon
          ],
        ),
      ),
    );
  }
}
