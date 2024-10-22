import 'package:cropjoy/ui/Homepage/btm_navigation.dart';
import 'package:cropjoy/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class locationfetch extends StatelessWidget {
  const locationfetch({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: screenheight*0.03,),

                Text(' What is your location',style: GoogleFonts.inter(
                  color: Colors.black,fontSize: screenwidth*0.082,fontWeight: FontWeight.w700
                ),),
                SizedBox(height: screenheight*0.005,),
                Text('We need to know your location in order to suggest nearby farmers.'
                ,style: GoogleFonts.inter(
                      color: Color(0xff878787),fontSize: screenwidth*0.04,fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: screenheight*0.1,),
                Container(
                  height: 100,width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFAF7D8)
                  ),
                  child: Center(child: Icon(Icons.pin_drop,color: Colors.green,size: 40,),),
                ),
                SizedBox(height: screenheight*0.1,),
                CustomButton(text: 'Allow Location Automatically', onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>   MinimalExample()),
                  );
                }),
                SizedBox(height: screenheight*0.02,),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MinimalExample()),
                );

              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16), // Button height
                decoration: BoxDecoration(
                  color: Color(0xffFAF7D8), // Button background color
                  borderRadius: BorderRadius.all(Radius.circular(30)), // Rounded corners
                ),
                alignment: Alignment.center, // Center the text
                child: Text(
                  'Enter Location Manually',
                  style: GoogleFonts.inter(
                    color: Color(0xffF48D11), // Text color
                    fontSize: 15, // Adjust text size if needed
                    fontWeight: FontWeight.w500, // Font weight for boldness
                  ),
                ),
              ),
            )


              ],
            ),
          )),
    );
  }
}
