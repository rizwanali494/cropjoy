import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPasswordField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  CustomPasswordField({
    required this.hintText,
    required this.controller,
  });

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isPasswordVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return TextField(
      controller: widget.controller,
      obscureText: !_isPasswordVisible, // Toggles password visibility
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: GoogleFonts.inter(
          color: Colors.black, // Hint text in black color
            fontSize:screenwidth*0.04
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Rounded borders
          borderSide: BorderSide(
            color: Color(0xFFD6D6D6), // Border color #D6D6D6
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xFFD6D6D6), // Border color when enabled
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xFFD6D6D6), // Border color when focused
          ),
        ),
        filled: true,
        fillColor: Colors.white, // Background color
        suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
          onPressed: _toggleVisibility,
        ),
      ),
      style: GoogleFonts.inter(
          fontSize:screenwidth*0.04 // Text color black
      ),
    );
  }
}
