import 'package:cropjoy/ui/Auth/individual_registration.dart';
import 'package:cropjoy/ui/farms/Farmer_Home.dart';
import 'package:cropjoy/ui/Homepage/Homepage.dart';
import 'package:cropjoy/ui/Profilepage/profileHome.dart';
import 'package:cropjoy/ui/order/order_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class MinimalExample extends StatefulWidget {
  const MinimalExample({super.key});

  @override
  State<MinimalExample> createState() => _MinimalExampleState();
}

class _MinimalExampleState extends State<MinimalExample> {
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  void initState() {
    super.initState();

    // Add a listener to rebuild when the tab index changes
    _controller.addListener(() {
      setState(() {});
    });
  }

  List<PersistentTabConfig> _tabs(BuildContext context) {
    // Define active and inactive text styles
    final activeTextStyle = GoogleFonts.inter(fontWeight: FontWeight.w600, color: Colors.green);
    final inactiveTextStyle = GoogleFonts.inter(fontWeight: FontWeight.w400, color: Color(0xff505050));

    return [
      PersistentTabConfig(
        screen: const Homepage(),
        item: ItemConfig(
          inactiveForegroundColor: const Color(0xff505050),
          inactiveIcon: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: const Center(child: Icon(Icons.home)),
          ),
          activeForegroundColor: Colors.green,
          inactiveBackgroundColor: const Color(0xff505050),
          icon: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.4),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: const Center(child: Icon(Icons.home)),
          ),
          title: "Home",
          textStyle: _controller.index == 0 ? activeTextStyle : inactiveTextStyle,
        ),
      ),
      PersistentTabConfig(
        screen: const FarmerHome(),
        item: ItemConfig(
          inactiveForegroundColor: const Color(0xff505050),
          inactiveIcon: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child:  Center(child:Image.asset('assets/images/Farmer (1).png')),
          ),
          activeForegroundColor: Colors.green,
          inactiveBackgroundColor: const Color(0xff505050),
          icon: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.4),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child:  Center(child:Image.asset('assets/images/Farmer (1).png',color: Colors.green,)),
          ),
          title: "Farms",
          textStyle: _controller.index == 1 ? activeTextStyle : inactiveTextStyle,
        ),
      ),
      PersistentTabConfig(
        screen:  OrderView(),
        item: ItemConfig(
          inactiveForegroundColor: const Color(0xff505050),
          inactiveIcon: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child:  Center(child: Image.asset('assets/images/fluent-mdl2_reservation-orders.png')),
          ),
          activeForegroundColor: Colors.green,
          inactiveBackgroundColor: const Color(0xff505050),
          icon: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.4),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child:  Center( child:  Center(child: Image.asset('assets/images/fluent-mdl2_reservation-orders.png',color: Colors.green,))),
          ),
          title: "Orders",
          textStyle: _controller.index == 2 ? activeTextStyle : inactiveTextStyle,
        ),
      ),
      PersistentTabConfig(
        screen: const UserProfileSettingsPage(),
        item: ItemConfig(
          inactiveForegroundColor: const Color(0xff505050),
          inactiveIcon: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child:  Center( child:  Icon(Icons.person_2_outlined)),
          ),
          activeForegroundColor: Colors.green,
          inactiveBackgroundColor: const Color(0xff505050),
          icon: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.4),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child:  Center( child:  Icon(Icons.person_2_outlined)),
          ),
          title: "Profile",
          textStyle: _controller.index == 3 ? activeTextStyle : inactiveTextStyle,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      backgroundColor: Colors.transparent,
      tabs: _tabs(context),
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: const NavBarDecoration(color: Color(0xffFAF7D8)),
      ),
      navBarOverlap: NavBarOverlap.full(),
    );
  }
}
