import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:cropjoy/ui/Auth/Bussiness_register.dart';
import 'package:cropjoy/ui/Auth/individual_registration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabbarScreen extends StatefulWidget {
  @override
  _TabbarScreenState createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: screenheight, // Set a bounded height for the entire container
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: screenheight * 0.03,
              ),
              Text(
                'Create your new account',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: screenwidth * 0.085),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Text(
                ' Create an account to start',
                style: GoogleFonts.inter(
                    color: Color(0xff878787),
                    fontWeight: FontWeight.w300,
                    fontSize: screenwidth * 0.035),
              ),
              SizedBox(
                height: screenheight * 0.03,
              ),



              // ButtonsTabBar within a DefaultTabController
              DefaultTabController(
                length: 2, // Number of tabs
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                      contentCenter: true,
                        height: screenheight*0.1,
                      width: screenwidth*0.45,
                      backgroundColor: Color(0xffFAF7D8), // Selected tab background color
                      unselectedBackgroundColor: Color(0xffF5F5F5), // Unselected tab background
                      unselectedLabelStyle: GoogleFonts.inter(color: Color(0xff727272),fontWeight: FontWeight.w500), // Unselected tab label
                      labelStyle: GoogleFonts.inter(

                        color: Color(0xffF48D11),
                        fontWeight: FontWeight.w500,
                      ), // Selected tab label
                      borderWidth: 1, // Tab border width
                      borderColor: Colors.transparent, // Tab border color
                      radius: 20, // Tab button corner radius
                     unselectedBorderColor: Colors.transparent,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.radio_button_checked),

                          text: "Individual", // First tab label
                        ),
                        Tab(
                          icon: Icon(Icons.radio_button_checked),
                          text: "Business Owner", // Second tab label
                        ),
                      ],
                    ),
                    SizedBox(height: 20), // Add space between tabs and tab content
                    // Wrap the TabBarView in a SizedBox to provide bounded height
                    SizedBox(
                      height: screenheight*0.6, // Define a height for TabBarView
                      child: const TabBarView(
                        children: <Widget>[
                         IndividualRegistration(),
                         BussinessRegister(),
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
