import 'package:cropjoy/ui/PaymentPage/widgets/addcardbottomsheet.dart';
import 'package:cropjoy/ui/PaymentPage/widgets/addnewcardButton.dart';
import 'package:cropjoy/ui/PaymentPage/widgets/deletecardmessage.dart';
import 'package:cropjoy/ui/Profilepage/profileHome.dart';
import 'package:cropjoy/ui/order/orderconfirmation.dart';
import 'package:cropjoy/ui/widgets/button.dart';
import 'package:cropjoy/ui/widgets/paymentcarddetail.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:u_credit_card/u_credit_card.dart';

class selectpayment extends StatelessWidget {
  const selectpayment({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(
            left: screenWidth * 0.04, right: screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xffEDEDED))),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Select Payment Method',
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w700),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return deletecardmessage(
                            onConfirm: () {
                              // Add your delete account logic here
                              print("");
                            },
                          );
                        });
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xffEDEDED))),
                    child: Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: screenHeight * 0.03,
            ),
            Text(
              'Credit Card',
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth * 0.04),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            CardDetailWidget(
              cardIcon: Icons.credit_card,
              cardName: 'John Doe',
              cardNumber: '**** **** **** 1234',
              cardType: 'Visa',
            ),
            // Example card 2
            CardDetailWidget(
              cardIcon: Icons.credit_card,
              cardName: 'Jane Smith',
              cardNumber: '**** **** **** 5678',
              cardType: 'MasterCard',
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Text(
              'Pay Via Wallet',
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth * 0.04),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            CardDetailWidget(
              cardIcon: Icons.credit_card,
              cardName: 'Cropjoy Wallet',
              cardNumber: 'Select and Pay',
              cardType: 'MasterCard',
            ),
            SizedBox(height: 10,),
            AddNewCardButton(
              text: 'Add New Card',
              icon: Icons.add,
              height: screenHeight * 0.08,
              onPressed: () {

              },
            ),

            Spacer(),
            CustomButton(text: 'Proceed', onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OrderConfirmation()));

            })
          ],
        ),
      )),
    );
  }
}
