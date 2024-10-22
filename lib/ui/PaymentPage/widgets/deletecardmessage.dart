import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart'; // For BackdropFilter

class deletecardmessage extends StatelessWidget {
  final VoidCallback onConfirm;

  const deletecardmessage({required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Blur effect
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0), // Rounded corners
        ),
        backgroundColor: Colors.white, // Dialog background color
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Top section with Delete Account text and Close icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Confirm Delete',
                        style: GoogleFonts.inter(
                          color: Colors.black, // Red color for "Delete Account"
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(); // Close dialog
                    },
                    child: Icon(
                      Icons.close, // Close icon
                      color: Colors.black,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),

              // Center text
              Text(
                'Are you sure to delete this card?',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff878787), // Text color
                ),
              ),

              SizedBox(height: 30.0),

              // Buttons in a row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // No Button
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green,
                      side: BorderSide(color: Color(0xffD6D6D6)), // Button border color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Rounded corners
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    ),
                    child: Text(
                      'No, I wont',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.white, // Button text color
                        fontSize: 11.0,
                      ),
                    ),
                  ),

                  // Yes Button
                  ElevatedButton(
                    onPressed: () {
                      onConfirm(); // Trigger delete logic
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Yes button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Rounded corners
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    ),
                    child: Text(
                      'Yes, Of course',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.black, // Button text color
                        fontSize: 11.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
