import 'package:cropjoy/ui/order_Tracking/widgets/trackerbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../chat_inbox/chat_screen.dart';

class TrackingWidget extends StatelessWidget {
  final String name;
  final String rating;
  final String reviews;
  const TrackingWidget({super.key,
  required this.name,
  required this.rating,
  required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth -15,
      margin: EdgeInsets.only(top: screenHeight*0.01),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 0),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth*0.03,vertical: screenWidth*0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight*0.02),
                child: const TrackerBar(),
              ),
              // SizedBox(height: screenHeight*0.006),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/person1.jpeg'),
                  ),
                  SizedBox(width: screenWidth*0.04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            name,
                            style: GoogleFonts.inter(
                                fontSize: screenWidth*0.045,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(height: screenHeight*0.006),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber,size: screenWidth*0.05,),
                            Text(
                                rating,
                              style: GoogleFonts.inter(fontSize: screenWidth*0.038),
                            ),
                            Text(
                                "($reviews)",
                              style: GoogleFonts.inter(fontSize: screenWidth*0.038,
                              color: Colors.black54
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChatScreen(name: name)));
                    },
                    child: Container(
                      height: screenHeight*0.06,
                      width: screenWidth*0.12,
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.chat, size: screenWidth*0.045,),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
