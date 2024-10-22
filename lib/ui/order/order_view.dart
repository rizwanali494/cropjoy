import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:cropjoy/ui/Homepage/btm_navigation.dart';
import 'package:cropjoy/ui/order/widgets/cancelledTab.dart';
import 'package:cropjoy/ui/order/widgets/completedTab.dart';
import 'package:cropjoy/ui/order/widgets/onGoingTab.dart';
import 'package:cropjoy/ui/order/widgets/tab_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align left horizontally
            children: [
              SizedBox(height: screenheight * 0.03), // Space from top
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: screenheight*0.06,
                        width: screenwidth*0.11,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xFFD4D4D4), width: screenwidth * 0.005),
                        ),
                        child: Icon(Icons.arrow_back_ios_new_rounded, size: screenwidth*0.06,),
                      ),
                    ),
                    Text(
                      'Orders',
                      style: GoogleFonts.inter(
                        fontSize: screenwidth * 0.06, // Font size based on screen width
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(width: screenwidth*0.1,),
                  ],
                ),
              ),
              SizedBox(height: screenheight * 0.04),


              DefaultTabController(
                length: 3, // Number of tabs
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(

                      contentCenter: true,
                      height: screenheight*0.07,
                      width: screenwidth*0.3,
                     backgroundColor:  Color(0xFF198910),
                      unselectedBackgroundColor: Color(0xffF5F5F5), // Unselected tab background
                      unselectedLabelStyle: GoogleFonts.inter(color: Color(0xff727272),fontWeight: FontWeight.w500), // Unselected tab label
                      labelStyle: GoogleFonts.inter(

                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ), // Selected tab label
                      borderWidth: 1, // Tab border width
                      borderColor: Colors.transparent, // Tab border color
                      radius: 20, // Tab button corner radius
                      unselectedBorderColor: Colors.transparent,
                      tabs: [
                        Tab(text: "On going"),
                        Tab(text: "Cancelled"),
                        Tab(text: "Completed"),

                      ],
                    ),
                    SizedBox(height: 20), // Add space between tabs and tab content
                    // Wrap the TabBarView in a SizedBox to provide bounded height
                    SizedBox(
                      height: screenheight*0.6, // Define a height for TabBarView
                      child: const TabBarView(
                        children: <Widget>[
                          OnGoingTab(),
                          CancelledTab(),
                          CompletedTab(),
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
    );
  }
}
