import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../PaymentPage/selectPayment.dart';
import '../widgets/CheckoutButton.dart';
import '../widgets/DeliveryTextfield.dart';
class DeliverNow extends StatelessWidget {
  const DeliverNow({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left:screenWidth*0.04,right: screenWidth*0.04 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        SizedBox(height: screenHeight*0.03,),
        
            CustomDeliveryTextField(
              labelText: 'Your Address',
              hintText: 'Receiver Address Goes Here',
            ),
        
              SizedBox(height: screenHeight*0.03,),
              Text('Checkout Details',style: GoogleFonts.inter(
                  color: Colors.black,fontWeight: FontWeight.w700,fontSize: screenWidth*0.045
        
              ),),
              SizedBox(height: screenHeight*0.02,),
              CustomDeliveryTextField(
                labelText: 'Total Items',
                hintText: '2',
              ),
              SizedBox(height: screenHeight*0.02,),
              CustomDeliveryTextField(
                labelText: 'Subtotal',
                hintText: 'R 17,800',
              ),
              SizedBox(height: screenHeight*0.02,),
              CustomDeliveryTextField(
                labelText: 'Delivery Charges',
                hintText: 'R 200',
              ),
              SizedBox(height: screenHeight*0.02,),
              CustomDeliveryTextField(
                labelText: 'Total Price',
                hintText: 'R 18,000',
              ),
              SizedBox(height: screenHeight*0.02,),
          CheckoutButton(
            screenHeight: MediaQuery.of(context).size.height,
            screenWidth: MediaQuery.of(context).size.width,
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const selectpayment()));
              print('Navigating to checkout page');

            },
          )


          ],),
        ),
      ),
    );
  }
}
