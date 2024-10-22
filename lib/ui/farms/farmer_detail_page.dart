import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:cropjoy/ui/farms/Farm_products.dart';
import 'package:cropjoy/ui/farms/farmer_aboutus.dart';
import 'package:cropjoy/ui/farms/widgets/farmer_header.dart';
import 'package:cropjoy/ui/farms/widgets/farmer_info_card.dart';
import 'package:cropjoy/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

import '../order/widgets/cancelledTab.dart';
import '../order/widgets/completedTab.dart';
import '../order/widgets/onGoingTab.dart';

class FarmerDetailPage extends StatelessWidget {
  const FarmerDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(
            left: screenwidth * 0.04,
            right: screenwidth * 0.04,
            top: screenheight * 0.02),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FarmerHeader(
                title: 'Tumelo Mothotoane Details',
                onBackPressed: () {
                  Navigator.pop(context);
                },
                profileImagePath: 'assets/images/appstore.png', // Your image path
              ),
              SizedBox(height: screenheight*0.03,),
              FarmerInfoCard(
                farmName: 'Green Valley Farm',
                location: 'Cape Town, South Africa',
                status: 'Online',
                distance: '350m',
                rating: '4.8 (188)',
                imagePath: 'assets/images/Image.png',
                avatarPath: 'assets/images/c3d108ad4985871e6da26a9c79aee760.jpeg',
              ),
          SizedBox(height: screenheight*0.03,),
              DefaultTabController(
                length:2, // Number of tabs
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(

                      contentCenter: true,
                      height: screenheight*0.07,
                      width: screenwidth*0.45,
                      backgroundColor:  Color(0xFF198910),
                      unselectedBackgroundColor: Color(0xffF5F5F5), // Unselected tab background
                      unselectedLabelStyle: GoogleFonts.inter(color: Color(0xff727272),fontWeight: FontWeight.w500), // Unselected tab label
                      labelStyle: GoogleFonts.inter(
                        fontSize: screenwidth*0.035,

                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ), // Selected tab label
                      borderWidth: 1, // Tab border width
                      borderColor: Colors.transparent, // Tab border color
                      radius: 20, // Tab button corner radius
                      unselectedBorderColor: Colors.transparent,
                      tabs: [
                        Tab(text: "About",icon:Icon(Icons.report_gmailerrorred),),
                        Tab(text: "Products",icon: Icon(Icons.production_quantity_limits)),


                      ],
                    ),

                    // Wrap the TabBarView in a SizedBox to provide bounded height
                    SizedBox(
                      height: screenheight*0.6, // Define a height for TabBarView
                      child: const TabBarView(
                        children: <Widget>[
                          FarmerAboutUs(
                            aboutText:
                            'Lorem ipsum dolor sit amet consectetur. Pharetra bibendum enim consequat nisi adipiscing habitasse consequat Lorem ipsum dolor sit amet consectetur.',
                            locationText: 'Location',
                            locationDetail: 'Baviaans Local Municipality, South Africa',
                          ),
                         Farm_Products()
                        ],
                      ),
                    ),
                  ],
                ),
              ),



            ],
          ),
        ),
      )),
    );
  }
}
