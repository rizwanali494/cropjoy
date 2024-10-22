import 'package:cropjoy/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../order_Tracking/orderTracking.dart';

class OrderConfirmed extends StatefulWidget {
  const OrderConfirmed({Key? key}) : super(key: key);

  @override
  _OrderConfirmedState createState() => _OrderConfirmedState();
}

class _OrderConfirmedState extends State<OrderConfirmed> {



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
            Image.asset('assets/images/orderconfirmed.gif'),
            SizedBox(height: 30,),
            Center(
              child: Padding(
                padding: EdgeInsets.only( left: screenwidth * 0.15,
                  right: screenwidth * 0.15,),
                child: Text(
                  'Finally the wait is over!',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: screenwidth * 0.07,
                  ),
                  textAlign: TextAlign.center,

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
                  'Your Order has been confirmed. Tumelo Mothotoane is preparing your order. Monitor and track your order..',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: screenwidth * 0.03,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Spacer(),
            CustomButton(text: 'Track Your Order', onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OrderTracking()));
            })
          ],
        ),
      ),
    );
  }
}


