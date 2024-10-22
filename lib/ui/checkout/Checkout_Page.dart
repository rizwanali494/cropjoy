import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:cropjoy/ui/checkout/DeliveryDetails/Now.dart';
import 'package:cropjoy/ui/checkout/DeliveryProduct.dart';
import 'package:cropjoy/ui/checkout/widgets/checkoutHeader.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'DeliveryDetails/ScheduleNow.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> with SingleTickerProviderStateMixin {
  int _selectedDeliveryIndex = 0; // Track selected index for delivery tabs

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: screenWidth * 0.04,
            right: screenWidth * 0.04,
            top: screenHeight * 0.01,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckoutHeader(
                  screenWidth: screenWidth,
                  onBackPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: screenHeight * 0.02),
                DefaultTabController(
                  length: 2, // Number of tabs
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(
                        onTap: (index) {
                          setState(() {
                            _selectedDeliveryIndex = index;
                          });
                        },
                        contentCenter: true,
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.45,
                        backgroundColor: Color(0xFF198910),
                        unselectedBackgroundColor: Color(0xffF5F5F5),
                        unselectedLabelStyle: GoogleFonts.inter(
                          color: Color(0xff727272),
                          fontWeight: FontWeight.w500,
                        ),
                        labelStyle: GoogleFonts.inter(
                          fontSize: screenWidth * 0.035,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        borderWidth: 1,
                        borderColor: Colors.transparent,
                        radius: 20,
                        unselectedBorderColor: Colors.transparent,
                        tabs: [
                          Tab(
                            text: "Deliver",
                            icon: Iconify(
                              Carbon.delivery,
                              color: _selectedDeliveryIndex == 0 ? Colors.white : Color(0xff727272),
                            ),
                          ),
                          Tab(
                            text: "Collect",
                            icon: Icon(
                              Icons.collections,
                              color: _selectedDeliveryIndex == 1 ? Colors.white : Color(0xff727272),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.52,
                        child: const TabBarView(
                          children: <Widget>[
                            Deliveryproduct(),
                            Deliveryproduct(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Text(
                  'Delivery Details',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                DefaultTabController(
                  length: 2, // Number of tabs
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(

                        contentCenter: true,
                        height: screenHeight*0.07,
                        width: screenWidth*0.45,
                        backgroundColor:  Color(0xFF198910),
                        unselectedBackgroundColor: Color(0xffF5F5F5), // Unselected tab background
                        unselectedLabelStyle: GoogleFonts.inter(color: Color(0xff727272),fontWeight: FontWeight.w500), // Unselected tab label
                        labelStyle: GoogleFonts.inter(
                          fontSize: screenWidth*0.035,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ), // Selected tab label
                        borderWidth: 1, // Tab border width
                        borderColor: Colors.transparent, // Tab border color
                        radius: 20, // Tab button corner radius
                        unselectedBorderColor: Colors.transparent,
                        tabs: const [
                          Tab(text: "Now",icon:Icon(Icons.credit_card_outlined),),
                          Tab(text: "Schedule",icon: Icon(Icons.schedule_outlined)),


                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.52,
                        child: TabBarView(
                          children: <Widget>[
                            DeliverNow(),
                            Schedulenow(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
