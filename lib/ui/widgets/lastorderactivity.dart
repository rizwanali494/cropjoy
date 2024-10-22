import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderActivityTile extends StatelessWidget {
  final String orderId;
  final String dateTime;
  final String amount;
  final IconData icon;

  const OrderActivityTile({
    Key? key,
    required this.orderId,
    required this.dateTime,
    required this.amount,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        leading: Container(
          height: 40,width: 40,
          decoration: BoxDecoration(
      color:  Colors.green.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Icon(
            icon,
            size: 25, // Set the icon size as needed
            color: Colors.green, // Change icon color as needed
          ),
        ),
        title: Text(
          orderId,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 5), // Space between title and subtitle
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dateTime,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  amount,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
