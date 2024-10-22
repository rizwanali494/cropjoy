import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedbackSuggestions extends StatefulWidget {
  final List<String> suggestions;

  const FeedbackSuggestions({super.key, required this.suggestions});

  @override
  State<FeedbackSuggestions> createState() => _FeedbackSuggestionsState();
}

class _FeedbackSuggestionsState extends State<FeedbackSuggestions> {

  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: screenWidth * 0.015,
        runSpacing: screenWidth * 0.02,
        children: widget.suggestions.asMap().entries.map((entry) {
          int index = entry.key;
          String suggestion = entry.value;

          // Check if this suggestion is selected
          bool isSelected = _selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                // Toggle selection state
                _selectedIndex = isSelected ? null : index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.028,
                vertical: screenHeight * 0.008,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: isSelected ? const Color(0xFF198910) : Colors.white,
                border: Border.all(
                  color: const Color(0xFFD4D4D4),
                  width: screenWidth * 0.003,
                ),
              ),
              child: Text(
                suggestion,
                style: GoogleFonts.inter(
                  color: isSelected ? Colors.white : const Color(0xFF505050),
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth * 0.03,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
