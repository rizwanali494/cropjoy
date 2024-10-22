import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewCardButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double height;
  final double borderRadius;
  final Color backgroundColor;
  final Color borderColor;
  final Color iconColor;
  final Color textColor;
  final VoidCallback? onPressed;

  const AddNewCardButton({
    Key? key,
    this.text = 'Add New Card',
    this.icon = Icons.add,
    this.height = 60.0,
    this.borderRadius = 30.0,
    this.backgroundColor = Colors.white,
    this.borderColor = const Color(0xFFD6D6D6),
    this.iconColor = Colors.white,
    this.textColor = Colors.black,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height,
      width: double.infinity, // Makes the button full width
      child: InkWell(
        onTap: onPressed, // Handle tap action
        borderRadius: BorderRadius.circular(borderRadius), // Ensure ripple effect respects the border radius
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: borderColor), // Border color
            borderRadius: BorderRadius.circular(borderRadius), // Rounded corners
            color: backgroundColor, // Background color
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black, // Background color for the icon
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 15, // Icon color
                ),
              ),
              SizedBox(width: 8), // Space between icon and text
              Text(
                text,
                style: GoogleFonts.inter(
                  fontSize: screenWidth * 0.04,
                  color: textColor, // Text color
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
