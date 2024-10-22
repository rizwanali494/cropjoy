import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AddFeedbackTextButton extends StatelessWidget {
  final String text;
  const AddFeedbackTextButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Center(
      child: Text(
            text,
            style: GoogleFonts.inter(
                color: Color(0xFF198910),
                fontWeight: FontWeight.w500,
                fontSize: screenwidth*0.038
            ),
          ),
    );
  }
}
