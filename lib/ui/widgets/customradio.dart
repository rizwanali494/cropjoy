import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final bool isSelected;
  final Function(bool) onChanged;

  const CustomRadioButton({Key? key, required this.isSelected, required this.onChanged}) : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.isSelected); // Toggle selection state when tapped
      },
      child: Container(
        width: screenwidth*0.075, // Define width for the rectangular radio button
        height: screenheight*0.035, // Define height
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.green : Colors.transparent, // Green if selected, transparent otherwise
          borderRadius: BorderRadius.circular(6), // Optional corner radius
          border: Border.all(
            color: Colors.green, // Border color remains green
            width: 2, // Border width
          ),
        ),
        child: widget.isSelected
            ? Center(
          child: Icon(
            Icons.check, // White checkmark icon
            color: Colors.white,
            size: 20,
          ),
        )
            : null, // No icon if not selected
      ),
    );
  }
}
