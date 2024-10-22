import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDatePickerTextField extends StatefulWidget {
  final String hintText;

  const CustomDatePickerTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  _CustomDatePickerTextFieldState createState() =>
      _CustomDatePickerTextFieldState();
}

class _CustomDatePickerTextFieldState extends State<CustomDatePickerTextField> {
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFD6D6D6)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // TextField for displaying the selected date
          Expanded(
            child: GestureDetector(
              onTap: () => _selectDate(context),
              child: AbsorbPointer(
                child: TextField(
                  controller: _dateController,
                  style: GoogleFonts.inter(
                    fontSize: 13, // Font size for the text input
                  ),
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: GoogleFonts.inter(
                      fontSize: 13, // Same font size for the hint text
                      color: Colors.grey[400],
                    ),
                    border: InputBorder.none,
                    isDense: true, // Reduce textfield height
                    contentPadding: const EdgeInsets.symmetric(vertical: 4),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(width: 10),

          // Calendar icon on the right
          GestureDetector(
            onTap: () => _selectDate(context),
            child: Icon(
              Icons.calendar_today,
              color: Colors.grey[600],
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
