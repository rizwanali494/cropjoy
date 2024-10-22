import 'package:cropjoy/ui/Profilepage/PaymentCard.dart';
import 'package:cropjoy/ui/Profilepage/PrivacyPolicy.dart';
import 'package:cropjoy/ui/Profilepage/UserAbout.dart';
import 'package:cropjoy/ui/Profilepage/Userwallet.dart';
import 'package:cropjoy/ui/Profilepage/personaldata.dart';
import 'package:cropjoy/ui/Profilepage/userDeliveryAddress.dart';
import 'package:cropjoy/ui/widgets/LogoutButton.dart';
import 'package:cropjoy/ui/widgets/SIGNOUTMESSAGE.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/DeleteAccount.dart';
import '../widgets/userSettings.dart';

class UserProfileSettingsPage extends StatelessWidget {
  const UserProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: screenWidth*0.04,right: screenWidth*0.04),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Center horizontally
              children: [
                SizedBox(height: screenHeight * 0.03), // Space from top
            
                // Profile Settings text
                Center(
                  child: Text(
                    'Profile Settings',
                    style: GoogleFonts.inter(
                      fontSize: screenWidth * 0.06, // Font size based on screen width
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.04), // Spacing
            
                // User photo with green border and camera icon
                Center(
                  child: Stack(
                    children: [
                      // Profile photo with green border
                      Container(
                        height: screenWidth * 0.3, // Height/width based on screen width
                        width: screenWidth * 0.3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green, // Green border
                            width: 4,
                          ),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/dc853c4221925ff24b889a3ee6387a62.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Camera icon
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(screenWidth * 0.02),
                          decoration: BoxDecoration(
                            color: Colors.green, // Green background
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: screenWidth * 0.07,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03), // Spacing
            
                // User name
                Center(
                  child: Text(
                    'John Doe',
                    style: GoogleFonts.inter(
                      fontSize: screenWidth * 0.05, // Font size based on screen width
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01), // Spacing
            
                // Email address
                Center(
                  child: Text(
                    'john.doe@example.com',
                    style: GoogleFonts.inter(
                      fontSize: screenWidth * 0.04, // Font size based on screen width
                      color: Colors.grey,
                    ),
                  ),
                ),
            SizedBox(height: screenHeight*0.04,),
            Container(width: double.infinity,
            height: 1,
            color: Color(0xffEDEDED),
            
            ),
                SizedBox(height: screenHeight*0.02,),
                Text(
                  'Profile',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.04, // Font size based on screen width
                    color: Colors.grey,
                  ),
                ),
            
            
                UserOptionTile(
                  icon: Icons.person_2_outlined,
                  title: 'Personal Data',
                  onTap: () {
                    // Handle personal data tap
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserPersonaldata()));
                  },
                ),
                UserOptionTile(
                  icon: Icons.credit_card,
                  title: 'Payment Card',
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => paymentcard()));
                  },
                ),
                UserOptionTile(
                  icon: Icons.wallet,
                  title: 'Wallet',
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => userwallet()));
                  },
                ),
                UserOptionTile(
                  icon: Icons.delivery_dining_outlined,
                  title: 'Delivery Address',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => userdeliveryaddress(fromPage: 'profile'),
                      ),
                    );

                  },
                ),
                SizedBox(height: screenHeight*0.02,),
                Text(
                  'Support',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.04, // Font size based on screen width
                    color: Colors.grey,
                  ),
                ),
                UserOptionTile(
                  icon: Icons.help_outline,
                  title: 'Help Center',
                  onTap: () {
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => userabout()));
                    // Handle personal data tap
                  },
                ),
                UserOptionTile(
                  icon: Icons.help_outline,
                  title: 'About',
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => userabout()));
                  },
                ),
                UserOptionTile(
                  icon: Icons.settings,
                  title: 'Privacy Policy ',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => userprivacy(fromPage: 'profile'),
                      ),
                    );

                  },
                ),
                UserOptionTile(
                  icon: Icons.delete,
                  title: 'Delete Account ',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DeleteConfirmationDialog(
                          onConfirm: () {
                            // Add your delete account logic here
                            print("Account Deleted");
                          },
                        );
                      },
                    );
                  },
                ),
SizedBox(height: 30,),
                Logoutbutton(text: 'Sign Out', onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return signoutConfirmationDialog(
                        onConfirm: () {
                          // Add your delete account logic here
                          print("Account Deleted");
                        },
                      );
                    },
                  );
                }),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
