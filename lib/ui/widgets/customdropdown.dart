import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(

        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0), // Rounded corners
          borderSide: BorderSide(color: Color(0xffD6D6D6)), // Black border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xffD6D6D6)), // Black border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xffD6D6D6)), // Black border color on focus
        ),
      ),
      hint: Text(
        'Business',
        style: GoogleFonts.inter(color: Colors.black,
            fontSize:screenwidth*0.04), // Black hint text
      ),
      icon: Icon(Icons.arrow_drop_down, color: Colors.black), // Black dropdown arrow
      value: selectedValue,

      items: [
        DropdownMenuItem(
          child: Text('Option 1',style: GoogleFonts.inter(),),
          value: 'Option 1',
        ),
        DropdownMenuItem(
          child: Text('Option 2',style: GoogleFonts.inter(),),
          value: 'Option 2',
        ),
        DropdownMenuItem(
          child: Text('Option 3',style: GoogleFonts.inter(),),
          value: 'Option 3',
        ),
      ],
      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
      },
    );
  }
}
