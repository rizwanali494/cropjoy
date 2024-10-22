import 'dart:ui'; // Required for ImageFilter

import 'package:cropjoy/ui/Auth/Login_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<OnboardingPage> pages = [
    OnboardingPage(
      title: '   Modern e-commerce and delivery service ',
      description: 'connecting farmers directly with consumers, markets, stores, restaurants, and other businesses. ',
      imagePath: 'assets/images/image 39.png', // Replace with your image path
    ),
    OnboardingPage(
      title: ' We bring you convenience ',
      description: 'We specialize in trading and delivering fresh, high-quality fruit, vegetables, dairy, and meat from local farms.  \n ',
      imagePath: 'assets/images/image 38.png', // Replace with your image path
    ),
    OnboardingPage(
      title: ' Our mission is to promote sustainability',
      description: 'To support local farmers, and provide customers with healthy, fresh produce conveniently. \n',
      imagePath: 'assets/images/image 32.png', // Replace with your image path
    ),
  ];

  void nextPage() {
    if (currentIndex < pages.length - 1) {
      _pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      // Navigate to HomePage when finished
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }

  void skip() {
    // Navigate to HomePage when skipping
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          // PageView for onboarding pages
          PageView.builder(
            controller: _pageController,
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingContent(page: pages[index]);
            },
          ),
          // Navigation buttons and indicators at the bottom
          Positioned(
            bottom: screenheight*0.08,
            left: screenwidth*0.05,
            right: screenwidth*0.05,
            child: Column(
              children: [
                // Dot indicators
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(pages.length, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: currentIndex == index ? 20 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: currentIndex == index ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                ),
                SizedBox(height: screenheight*0.03),
                // Navigation buttons (Skip and Next)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (currentIndex < pages.length - 1) // Only show Skip if not on last page
                      TextButton(
                        onPressed: skip,
                        child: Text(
                          'Skip',
                          style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    SizedBox(width: screenwidth*0.41,),
                    TextButton(
                      onPressed: nextPage,
                      child: Row(
                        children: [
                          Text(
                            currentIndex == pages.length - 1 ? 'Done' : 'Next',
                            style: GoogleFonts.inter(color: Colors.white,fontWeight:FontWeight.w600),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward,color: Colors.white,)
                        ],
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage {
  final String title;
  final String description;
  final String imagePath;

  OnboardingPage({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class OnboardingContent extends StatelessWidget {
  final OnboardingPage page;

  const OnboardingContent({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        // Full-page background image
        Image.asset(
          page.imagePath,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),

        // Content (Text) with a blurred background
        Positioned(
          top: screenheight*0.45,
          left: 20,
          right: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16), // Rounded corners
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white10.withOpacity(0.3), // Semi-transparent background
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Text(
                      textAlign: TextAlign.center,
                      page.title,
                      style: GoogleFonts.inter(
                          fontSize: screenwidth*0.075, fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    SizedBox(height: screenheight*0.045),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        page.description,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            fontSize: screenwidth*0.039, fontWeight: FontWeight.w400, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: screenheight*0.18),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(child: Text('Welcome to the Home Page!')),
    );
  }
}
