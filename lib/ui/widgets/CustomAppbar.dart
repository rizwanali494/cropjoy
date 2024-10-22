import 'package:cropjoy/ui/Profilepage/userDeliveryAddress.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(70.0), // Set the height for the AppBar
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(70.0), // Set height here
      child: AppBar(
        backgroundColor: Colors.green, // Set the background color to green
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left side with location icon, text, and dropdown arrow
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => userdeliveryaddress(fromPage: 'homepage'),
                  ),
                );

              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.pin_drop_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'South Africa',
                    style: GoogleFonts.inter(
                      color: Colors.white, // Text color
                      fontSize: 15, // Text size
                      fontWeight: FontWeight.w500, // Text weight
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_drop_down, color: Colors.white),
                ],
              ),
            ),

            // Right side with notification and cart icons
            Row(
              children: [
                Container(
                  width: 40.0, // Width of the container
                  height: 40.0, // Height of the container
                  decoration: BoxDecoration(
                    color: Colors.transparent, // Background color
                    shape: BoxShape.circle, // Make the container round
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.notifications_none_outlined, // Bell icon
                      color: Colors.white, // Icon color
                      size: 30.0, // Icon size
                    ),
                  ),
                ),
                SizedBox(width: 10),

                // Cart icon with badge
                Stack(
                  children: [
                    // Main image container
                    Container(
                      width: 40.0, // Width of the container
                      height: 40.0, // Height of the container
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color
                        shape: BoxShape.circle, // Make the container round
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/Frame 1836819518 (1).png', // Your main image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Cart item count badge
                    Positioned(
                      top: 0, // Position at the top
                      right: -1, // Position at the right
                      child: Container(
                        padding: EdgeInsets.all(3), // Padding inside the badge
                        decoration: BoxDecoration(
                          color: Colors.orange, // Background color of the badge
                          shape: BoxShape.circle, // Make the badge round
                        ),
                        constraints: BoxConstraints(
                          minWidth: 15, // Minimum width for the badge
                          minHeight: 15, // Minimum height for the badge
                        ),
                        child: Text(
                          '3', // Replace with dynamic cart count
                          style: TextStyle(
                            color: Colors.white, // Text color
                            fontSize: 10, // Font size for the count
                          ),
                          textAlign: TextAlign.center, // Center the text
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
