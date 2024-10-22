import 'package:cropjoy/ui/Products/TopRatedProducts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../widgets/CustomAppbar.dart';
import 'FeaturedFarmCard.dart';
import '../Products/ProductCategoiesWidget.dart';
import '../widgets/customsearchfield.dart';
import 'farmer_detail_page.dart';

class FarmerHome extends StatefulWidget {
  const FarmerHome({super.key});

  @override
  State<FarmerHome> createState() => _FarmerHomeState();
}

class _FarmerHomeState extends State<FarmerHome> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    final List<Map<String, String>> items = [
      {'image': 'assets/images/Burger (2).png', 'text': 'Poultry'},
      {'image': 'assets/images/Burger.png', 'text': 'Dairy'},
      {'image': 'assets/images/Burger (1).png', 'text': 'Fish'},
      {'image': 'assets/images/Burger (7).png', 'text': 'Vegetables'},
      {'image': 'assets/images/Burger (3).png', 'text': 'Fruits'},
      {'image': 'assets/images/Burger (4).png', 'text': 'Herbs'},
      {'image': 'assets/images/Burger (5).png', 'text': 'Legumes'},
      {'image': 'assets/images/Burger (6).png', 'text': 'Grains'},
    ];
    final List<Map<String, String>> fitems = [
      {
        'coverImage': 'assets/images/Image.png',
        'profileImage': 'assets/images/c3d108ad4985871e6da26a9c79aee760.jpeg',
        'name': 'John Doe',
        'subName': 'Commercial Farmer',
        'location': '200m', // Location in meters
        'rating': '4.5', // Rating value
        'orders': '100', // Order count
        'onlineStatus': 'true', // Online status
      },
      {
        'coverImage': 'assets/images/Image.png',
        'profileImage': 'assets/images/c3d108ad4985871e6da26a9c79aee760.jpeg',
        'name': 'John Doe',
        'subName': 'Commercial Farmer',
        'location': '200m', // Location in meters
        'rating': '4.5', // Rating value
        'orders': '100', // Order count
        'onlineStatus': 'true', // Online status
      },
      {
        'coverImage': 'assets/images/Image.png',
        'profileImage': 'assets/images/c3d108ad4985871e6da26a9c79aee760.jpeg',
        'name': 'John Doe',
        'subName': 'Commercial Farmer',
        'location': '200m', // Location in meters
        'rating': '4.5', // Rating value
        'orders': '100', // Order count
        'onlineStatus': 'true', // Online status
      },
    ];
    final List<Map<String, String>> pitems = [
      {
        'coverImage': 'assets/images/Image (1).png',
        'profileImage': 'assets/images/Image (1).png',
        'name': 'Chicken',
        'subName': 'R 660 / kg',
        'location': '200m', // Location in meters
        'rating': '4.5', // Rating value
        'orders': '100', // Order count
        'onlineStatus': 'true', // Online status
      },
      {
        'coverImage': 'assets/images/65c6662345247c347317dea87952e1ad.jpeg',
        'profileImage': 'assets/images/65c6662345247c347317dea87952e1ad.jpeg',
        'name': 'Meat of goat',
        'subName': 'R 660 / kg',
        'location': '200m', // Location in meters
        'rating': '4.5', // Rating value
        'orders': '100', // Order count
        'onlineStatus': 'true', // Online status
      },
      {
        'coverImage': 'assets/images/Image.png',
        'profileImage': 'assets/images/c3d108ad4985871e6da26a9c79aee760.jpeg',
        'name': 'John Doe',
        'subName': 'R 660 / kg',
        'location': '200m', // Location in meters
        'rating': '4.5', // Rating value
        'orders': '100', // Order count
        'onlineStatus': 'true', // Online status
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SearchTextFieldWidget(), // Add the search text field to your UI

        

              SizedBox(height: screenheight*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Featured Farms',style: GoogleFonts.inter(
                      color: Colors.black,fontWeight: FontWeight.w600,fontSize: screenwidth*0.045
                  ),),
                  GestureDetector(
                    onTap: (){
                      pushWithoutNavBar(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FarmerDetailPage()));
                    },
                    child: Text('See All',style: GoogleFonts.inter(
                        color: Colors.green,fontWeight: FontWeight.w500,fontSize: screenwidth*0.042
                    ),),
                  ),

                ],),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onTap: () {
                    pushWithoutNavBar(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FarmerDetailPage()));
                  },
                  child: Row(
                    children: fitems.map((item) {
                      return FeaturedFarmCard(
                        coverImage: item['coverImage'] ?? 'assets/default_cover.jpg',
                        profileImage: item['profileImage'] ?? 'assets/default_profile.jpg',
                        name: item['name'] ?? 'No Name',
                        subName: item['subName'] ?? 'No Description',
                        location: item['location'] ?? 'Unknown',
                        rating: item['rating'] ?? '0.0',
                        orders: item['orders'] ?? '0',
                        isOnline: item['onlineStatus'] == 'true',
                      );
                    }).toList(),
                  ),
                ),
              ),

              SizedBox(height: screenheight*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nearby Farms',style: GoogleFonts.inter(
                      color: Colors.black,fontWeight: FontWeight.w600,fontSize: screenwidth*0.045
                  ),),
                  GestureDetector(
                    onTap: () {
                      pushWithoutNavBar(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FarmerDetailPage()));
                    },
                    child: Text('See All',style: GoogleFonts.inter(
                        color: Colors.green,fontWeight: FontWeight.w500,fontSize: screenwidth*0.042
                    ),),
                  ),

                ],),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onTap: () {
                    pushWithoutNavBar(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FarmerDetailPage()));
                  },
                    child: Row(
                    children: fitems.map((item) {
                      return FeaturedFarmCard(
                        coverImage: item['coverImage'] ?? 'assets/default_cover.jpg',
                        profileImage: item['profileImage'] ?? 'assets/default_profile.jpg',
                        name: item['name'] ?? 'No Name',
                        subName: item['subName'] ?? 'No Description',
                        location: item['location'] ?? 'Unknown',
                        rating: item['rating'] ?? '0.0',
                        orders: item['orders'] ?? '0',
                        isOnline: item['onlineStatus'] == 'true',
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: screenheight*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Rated Farms',style: GoogleFonts.inter(
                      color: Colors.black,fontWeight: FontWeight.w600,fontSize: screenwidth*0.045
                  ),),
                  GestureDetector(
                    onTap: () {
                      pushWithoutNavBar(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FarmerDetailPage()));
                    },
                    child: Text('See All',style: GoogleFonts.inter(
                        color: Colors.green,fontWeight: FontWeight.w500,fontSize: screenwidth*0.042
                    ),),
                  ),

                ],),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onTap: () {
                    pushWithoutNavBar(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FarmerDetailPage()));
                  },
                  child: Row(
                    children: fitems.map((item) {
                      return FeaturedFarmCard(
                        coverImage: item['coverImage'] ?? 'assets/default_cover.jpg',
                        profileImage: item['profileImage'] ?? 'assets/default_profile.jpg',
                        name: item['name'] ?? 'No Name',
                        subName: item['subName'] ?? 'No Description',
                        location: item['location'] ?? 'Unknown',
                        rating: item['rating'] ?? '0.0',
                        orders: item['orders'] ?? '0',
                        isOnline: item['onlineStatus'] == 'true',
                      );
                    }).toList(),
                  ),
                ),
              ),

              SizedBox(height: 50,)



            ],),
        ),
      ),


    );
  }
}
