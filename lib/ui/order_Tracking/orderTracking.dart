import 'package:cropjoy/ui/order_Tracking/widgets/addresstile.dart';
import 'package:cropjoy/ui/order_Tracking/widgets/order_tracking_header.dart';
import 'package:cropjoy/ui/order_Tracking/widgets/ordertrackinginfo.dart';
import 'package:cropjoy/ui/order_Tracking/widgets/paymentsummary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../order/order_view.dart';
import 'widgets/trackingwidget.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({super.key});

  @override
  State<OrderTracking> createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: screenwidth * 0.04, right: screenwidth * 0.04),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align left horizontally
              children: [
                OrderTrackingHeader(
                    onBackPressed:(){
                      Navigator.pop(context);}
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenwidth*0.09,right: screenwidth*0.02, top: screenheight*0.01, bottom: screenheight*0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Estimated Time',
                                style: GoogleFonts.inter(
                                    fontSize: screenwidth * 0.043,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w700
                                )
                            ),
                            Text(
                                '11:45PM',
                                style: GoogleFonts.inter(
                                    fontSize: screenwidth * 0.043,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w400
                                )
                            ),
                          ],
                        ),
                      ), SizedBox(
                          height: 100,width: 100,
                          child: Image.asset('assets/images/icon.gif')),
                    ],
                  ),
                ),
                const TrackingWidget(name: "Tumelo Mothotoane", rating: "4.9",reviews: "188",),
                const OrderTrackingInfo(),
                const AddressTile(
                  address: "Bavarians Local Municipality, South Africa",
                  email: "alibinfo@cropjoy.com",
                  phone: "+27 73 447 2313",),
                const PaymentSummary(
                  totalItems: "3",
                  subTotal: "17,800",
                  deliveryCharges: "0",
                  totalPrice: "17,800",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
