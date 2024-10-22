import 'package:cropjoy/ui/farms/widgets/Product_List_Card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../checkout/Checkout_Page.dart';

class Farm_Products extends StatelessWidget {
  const Farm_Products({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final List<Map<String, dynamic>> products = [
      {
        'name': 'Fresh Milk',
        'rating': 4.8,
        'orders': '400',
        'category': 'Fruits',
        'price': 12.99,
        'description': 'Fresh organic apples from local farms.',
        'imagePath': 'assets/images/cb40cd7f23ad5957c44c79fcf3e5b368.jpeg',
      },
      {
        'name': 'Broccoli',
        'rating': 4.6,
        'orders': '400',
        'category': 'Vegetables',
        'price': 9.99,
        'description': 'Freshly harvested broccoli, pesticide-free.',
        'imagePath': 'assets/images/cb40cd7f23ad5957c44c79fcf3e5b368.jpeg',
      },
      {
        'name': 'Broccoli',
        'rating': 4.6,
        'orders': '400',
        'category': 'Vegetables',
        'price': 9.99,
        'description': 'Freshly harvested broccoli, pesticide-free.',
        'imagePath': 'assets/images/cb40cd7f23ad5957c44c79fcf3e5b368.jpeg',
      },
      {
        'name': 'Broccoli',
        'rating': 4.6,
        'orders': '400',
        'category': 'Vegetables',
        'price': 9.99,
        'description': 'Freshly harvested broccoli, pesticide-free.',
        'imagePath': 'assets/images/cb40cd7f23ad5957c44c79fcf3e5b368.jpeg',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.04,
            right: screenWidth * 0.04,
            top: screenHeight * 0.01,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Products',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductCard(
                      productName: product['name'],
                      rating: product['rating'],
                      category: product['category'],
                      price: product['price'],
                      description: product['description'],
                      imagePath: product['imagePath'],
                      orders: product['orders'],
                      onAddToCart: () {
                        print('${product['name']} added to cart');
                      },
                    );
                  },
                ),
                SizedBox(height: screenHeight * 0.02),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CheckoutPage()));
                      // Handle buy action here
                      print('Buy button pressed');
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: screenHeight * 0.065,
                      decoration: BoxDecoration(
                        color: Color(0xFF198910),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/Group 3.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Added 1 to Cart',
                                style: GoogleFonts.inter(
                                  fontSize: screenWidth * 0.04,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'R 111,00', // Replace with product price dynamically
                            style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.04,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
