import 'package:flutter/material.dart';
import 'package:cropjoy/ui/checkout/widgets/CheckOutProduct_Card.dart';
import 'package:google_fonts/google_fonts.dart'; // Assuming your custom widget is in this path

class Deliveryproduct extends StatelessWidget {
  const Deliveryproduct({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'name': 'Fresh Milk',
        'description': 'Pure organic milk from grass-fed cows.',
        'imagePath': 'assets/images/cb40cd7f23ad5957c44c79fcf3e5b368.jpeg',
        'price': 12.99,
        'quantity': 2,
      },
      {
        'name': 'Broccoli',
        'description': 'Freshly harvested, pesticide-free broccoli.',
        'imagePath': 'assets/images/cb40cd7f23ad5957c44c79fcf3e5b368.jpeg',
        'price': 9.99,
        'quantity': 1,
      },

    ];
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return CheckoutProductCard(
                  productName: product['name'],
                  productDescription: product['description'],
                  imagePath: product['imagePath'],
                  price: product['price'],
                  quantity: product['quantity'],
                );
              },
            ),
          ),
          // "Add More Items" Button
          SizedBox(
            height: screenHeight*0.07,
           
            width: double.infinity, // Makes the button full width
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD6D6D6)), // Border color
                borderRadius: BorderRadius.circular(30), // Rounded corners
                color: Colors.white, // Background color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 15,width: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black, // Background color for the icon
                    ),

                    child: Icon(
                      Icons.add,
                      color: Colors.white,size: 15, // Icon color
                    ),
                  ),
                  SizedBox(width: 8), // Space between icon and text
                  Text(
                    'Add More Items',
                    style: GoogleFonts.inter(
                      fontSize: screenWidth*0.04,
                      color: Colors.black, // Text color
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
