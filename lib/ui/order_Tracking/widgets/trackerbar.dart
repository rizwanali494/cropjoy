import 'package:flutter/cupertino.dart';
import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/clarity.dart';
import 'package:iconify_flutter/icons/lucide.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ri.dart';

class TrackerBar extends StatefulWidget {
  const TrackerBar({super.key});

  @override
  State<TrackerBar> createState() => _TrackerBarState();
}

class _TrackerBarState extends State<TrackerBar> {


  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Accepted",
          textStyle: GoogleFonts.inter(
            fontSize: 10,
            color: Colors.green,
          ),
        ),
        iconWidget: Iconify(Mdi.clock,color: Colors.green,size: 30,) // widget
        ),
    StepperData(
        title: StepperText("Order Ready",
          textStyle: GoogleFonts.inter(
            color: Colors.green,
            fontSize: 10,),
        ),
        iconWidget: Iconify(Ri.shopping_basket_fill,color:Colors.green,size: 30,) // widget
    ),
    StepperData(
        title: StepperText("Out for delivery",
          textStyle: GoogleFonts.inter(
            color: Colors.grey,
            fontSize: 10,
          ),
        ),
        iconWidget: const Icon(Icons.delivery_dining_outlined,size: 30, color: Colors.grey),
    ),
    StepperData(
        title: StepperText("Delivered",
            textStyle: GoogleFonts.inter(color: Colors.grey, fontSize: 10,)),
        iconWidget:Iconify(Mdi.package_variant_closed_check,color: Colors.grey,size: 30,) // widget
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnotherStepper(
      stepperList: stepperData,
      stepperDirection: Axis.horizontal,
      iconWidth: 40,
      iconHeight: 40,
      activeBarColor: Colors.green,
      inActiveBarColor: Colors.grey,
      inverted: true,
      verticalGap: 60,
      activeIndex: 1,
      barThickness: 6,
    );
  }
}
