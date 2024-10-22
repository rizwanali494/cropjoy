import 'package:cropjoy/ui/Products/TopRatedProducts.dart';
import 'package:cropjoy/ui/farms/farmer_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../widgets/CustomAppbar.dart';
import '../farms/FeaturedFarmCard.dart';
import '../Products/ProductCategoiesWidget.dart';
import '../widgets/customsearchfield.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
        'coverImage': 'assets/images/chicken .jpeg',
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

              SizedBox(
                height: screenheight * 0.03,
              ),
              Text(
                'Find by Category',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: screenwidth * 0.045),
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              SizedBox(
                  height: screenheight * 0.22,
                  child: ProductCategoryGrid(
                    items: const [
                      {'image': 'assets/images/poultry.png', 'text': 'Poultry'},
                      {'image': 'assets/images/diary.png', 'text': 'Dairy'},
                      {'image': 'assets/images/fish.png', 'text': 'Fish'},
                      {
                        'image': 'assets/images/vegetables.png',
                        'text': 'Vegetables'
                      },
                      {
                        'image': 'assets/images/Burger2.png',
                        'text': 'Livestocks'
                      },
                      {'image': 'assets/images/Fruits.png', 'text': 'Fruits'},
                      {'image': 'assets/images/herbs.png', 'text': 'Herbs'},
                      {'image': 'assets/images/legumes.png', 'text': 'Legumes'},
                      {'image': 'assets/images/wheat.png', 'text': 'Grains'},
                      // Add more categories as needed
                    ],
                    screenwidth: MediaQuery.of(context)
                        .size
                        .width, // Pass screen width dynamically
                  )),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Farms',
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: screenwidth * 0.045),
                  ),
                  GestureDetector(
                    onTap: (){
                      pushWithoutNavBar(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FarmerDetailPage()));
                    },
                    child: Text(
                      'See All',
                      style: GoogleFonts.inter(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: screenwidth * 0.042),
                    ),
                  ),
                ],
              ),
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
                        coverImage:
                            item['coverImage'] ?? 'assets/default_cover.jpg',
                        profileImage: item['profileImage'] ??
                            'assets/default_profile.jpg',
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

              SizedBox(
                height: screenheight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Rated Products',
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: screenwidth * 0.045),
                  ),
                  GestureDetector(
                    onTap: (){
                      pushWithoutNavBar(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FarmerDetailPage()));
                    },
                    child: Text(
                      'See All',
                      style: GoogleFonts.inter(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: screenwidth * 0.042),
                    ),
                  ),
                ],
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: pitems.map((item) {
                    return Topratedproducts(
                      coverImage:
                          item['coverImage'] ?? 'assets/default_image.jpg',
                      name: item['name'] ?? 'No Name',
                      subName: item['subName'] ?? 'No Description',
                      location: item['location'] ?? 'Unknown',
                      rating: item['rating'] ?? '0.0',
                      orders: item['orders'] ?? '0',
                      discount: '10',
                    );
                  }).toList(),
                ),
              ),

              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
