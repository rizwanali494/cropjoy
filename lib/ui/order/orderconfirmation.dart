import 'package:cropjoy/ui/order/orderConfirmed.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderConfirmation extends StatefulWidget {
  const OrderConfirmation({Key? key}) : super(key: key);

  @override
  _OrderConfirmationState createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {

  @override
  void initState() {
    super.initState();

    // Automatically navigate to the final order confirmation screen after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OrderConfirmed(), // Replace with your actual screen
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffFAF7D8),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Center(
              child: Text(
                'Order Confirmation',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Image.asset('assets/images/orderconfirmation.gif'),
            SizedBox(height: 30,),
            Center(
              child: Text(
                'Finalizing the Order!',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: screenwidth * 0.065,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenwidth * 0.2,
                  right: screenwidth * 0.2,
                ),
                child: Text(
                  'Hang tight, we are processing your payment.',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: screenwidth * 0.03,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


