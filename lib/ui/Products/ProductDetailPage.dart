import 'package:cropjoy/ui/checkout/Checkout_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../farms/farmer_detail_page.dart';
import 'TopRatedProducts.dart';

class ProductDetailPage extends StatelessWidget {
  final List<String> productImages;
  final String productName;
  final String productCategory;
  final String stockCount;
  final double rating;
  final int orders;
  final double price;
  final String description;
  final String farmName;
  final String farmLocation;
  final String farmDistance;
  final String farmRating;
  final String farmOrders;
  final String farmImage;

  const ProductDetailPage({
    Key? key,
    required this.productImages,
    required this.productName,
    required this.productCategory,
    required this.stockCount,
    required this.rating,
    required this.orders,
    required this.price,
    required this.description,
    required this.farmName,
    required this.farmLocation,
    required this.farmDistance,
    required this.farmRating,
    required this.farmOrders,
    required this.farmImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // Carousel of Product Images
                  Container(
                    height: size.height * 0.4,
                    width: size.width,
                    child: Carousel(
                      indicatorBarColor: Colors.transparent,
                      autoScrollDuration: Duration(seconds: 2),
                      animationPageDuration: Duration(milliseconds: 500),
                      activateIndicatorColor: Color(0xffFE8C00),
                      animationPageCurve: Curves.easeInOut,
                      indicatorBarHeight: 20,
          
                      indicatorHeight: 3,
                      indicatorWidth: 25,
                      isCircle: false,
                      unActivatedIndicatorColor: Colors.white,
                      autoScroll: true,
                      items: productImages
                          .map((image) => Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ))
                          .toList(),
                    ),
                  ),
                  // Product Detail Text on Top of Image
                  Positioned(
                    top: screenheight*0.04,
                    left: screenwidth*0.04,
                    child:GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 30,width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 15,),
                        ),),
                    )
                  ),
                  Positioned(
                    top: screenheight*0.045,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        'Product Detail',
                        style: GoogleFonts.inter(
                          fontSize: screenwidth*0.045,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Category, Stock Count, Rating, and Orders
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$productCategory',
                          style: GoogleFonts.inter(
                            fontSize: screenwidth*0.04,
                            color: Colors.black54,
                          ),
                        ),
                        Container(
                          height: screenheight*0.025,width: screenwidth*0.32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                               color: Color(0xffFAF7D8)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:5,width: 5,
                                  decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),),
                                SizedBox(width: 5,),
                                Text('$stockCount In Stock',style: GoogleFonts.inter(
                                  fontSize: screenwidth*0.025,fontWeight: FontWeight.w400
                                ),),
                              ],
                            )),

                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: screenwidth*0.04),
                            Text(
                              '$rating($orders)',
                              style: GoogleFonts.inter(
                                fontSize: screenwidth*0.03,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      '$productName',
                      style: GoogleFonts.inter(
                        fontSize: screenwidth*0.045,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Product Price
                    Text(
                      'R $price /Kg',
                      style: GoogleFonts.inter(
                        fontSize: screenwidth*0.045,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Description',
                      style: GoogleFonts.inter(
                        fontSize: screenwidth*0.04,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 15),
                    // Product Description
                    Text(
                      description,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 20),
                    // Farm Details
                    Text(
                      'Farm Detail',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey[100], // Grey background color
                    ),

                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        // Left side: Farm image
                        CircleAvatar(
                          radius: screenwidth*0.1,
                          backgroundImage: AssetImage(farmImage),
                        ),
                        SizedBox(width: 20), // Spacing between image and text

                        // Right side: Text rows
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Row 1: Farm Name
                            Text(
                              farmName,
                              style: GoogleFonts.inter(
                                fontSize: screenwidth*0.04,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),

                            // Row 2: Pin Icon and City, Country
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: Colors.black,
                                  size:screenwidth*0.04,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  farmLocation,
                                  style: GoogleFonts.inter(
                                    fontSize: screenwidth*0.03,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),

                            // Row 3: Online status, Distance, Rating, and Orders
                            Row(
                              mainAxisAlignment:  MainAxisAlignment.spaceBetween,

                              children: [
                                // Online status
                                Container(
                                  height:screenheight*0.025,width: screenwidth*0.15,
                                  decoration: BoxDecoration(
                                    color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Row(

                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color:  Colors.green ,
                                        size: screenwidth*0.025,
                                      ),
                                      SizedBox(width:1,),

                                      Text(
                                        "Online",
                                        style: GoogleFonts.inter(
                                          fontSize: screenwidth*0.025,
                                          color:  Colors.black ,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenwidth*0.03,),

                                Container(
                                  height:screenheight*0.025,width: screenwidth*0.15,
                                  decoration: BoxDecoration(
                                      color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Row(

                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        color:  Colors.orange ,
                                        size: screenwidth*0.025,
                                      ),
                                      SizedBox(width:1,),

                                      Text(
                                        "$farmDistance",
                                        style: GoogleFonts.inter(
                                          fontSize: screenwidth*0.025,
                                          color:  Colors.black ,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Distance
                                SizedBox(width: screenwidth*0.03,),

                                // Rating and Orders
                                Container(
                                  height:screenheight*0.025,width: screenwidth*0.15,
                                  decoration: BoxDecoration(
                                      color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Row(

                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color:  Colors.orange ,
                                        size: screenwidth*0.025,
                                      ),
                                      SizedBox(width:1,),

                                      Text(
                                        "$farmRating ($farmOrders)",
                                        style: GoogleFonts.inter(
                                          fontSize: screenwidth*0.025,
                                          fontWeight: FontWeight.w400,
                                          color:  Colors.black ,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                    SizedBox(height: screenheight*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Other Products',style: GoogleFonts.inter(
                            color: Colors.black,fontWeight: FontWeight.w600,fontSize: screenwidth*0.045
                        ),),
                        Text('See All',style: GoogleFonts.inter(
                            color: Colors.green,fontWeight: FontWeight.w500,fontSize: screenwidth*0.042
                        ),),

                      ],),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: pitems.map((item) {
                          return Topratedproducts(
                            coverImage: item['coverImage'] ?? 'assets/default_image.jpg',
                            name: item['name'] ?? 'No Name',
                            subName: item['subName'] ?? 'No Description',
                            location: item['location'] ?? 'Unknown',
                            rating: item['rating'] ?? '0.0',
                            orders: item['orders'] ?? '0', discount: '10',

                          );
                        }).toList(),
                      ),
                    ),
                    // Add to Cart Button
                    SizedBox(height: screenheight*0.02,),
                    Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: screenheight*0.07,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(

                            backgroundColor: Color(0xff198910),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            pushWithoutNavBar(context, MaterialPageRoute(builder: (context) => CheckoutPage()));

                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min, // Shrink the row to fit the content
                            mainAxisAlignment: MainAxisAlignment.center, // Center the content
                            children: [
                              Image.asset(
                                'assets/images/Group 2.png', // Replace with your cart image path
                                height: 20, // Adjust the height as needed
                                width: 20, // Adjust the width as needed
                              ),
                              SizedBox(width: 10), // Space between image and text
                              Text(
                                'Add to Cart',
                                style: GoogleFonts.inter(
                                  fontSize: screenwidth*0.04,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )

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
