import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDetailWidget extends StatelessWidget {
  final IconData cardIcon;
  final String cardName;
  final String cardNumber;
  final String cardType;

  const CardDetailWidget({
    Key? key,
    required this.cardIcon,
    required this.cardName,
    required this.cardNumber,
    required this.cardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting the screen size for responsive layout
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the card
        border: Border.all(
          color: Color(0xffC4C4C4), // Border color
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12.0), // Border radius
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon and card details (Name and Number)
          Row(
            children: [
              // Card icon
              Icon(
                cardIcon,
                size: 25, // Icon size
                color: Colors.black, // Icon color
              ),
              const SizedBox(width: 16.0), // Space between icon and text
              // Card name and number
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardName,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    cardNumber,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: Colors.grey, // Card number color
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Card type (e.g., Visa, Debit, etc.)
          Text(
            cardType,
            style:  GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
              color: Colors.black, // Card type color
            ),
          ),
        ],
      ),
    );
  }
}
