import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndPrivacyWidget extends StatefulWidget {
  final Function()? onTermsTap;
  final Function()? onPrivacyTap;
  final Function(bool)? onAgreementChanged;

  const TermsAndPrivacyWidget({
    Key? key,
    this.onTermsTap,
    this.onPrivacyTap,
    this.onAgreementChanged,
  }) : super(key: key);

  @override
  _TermsAndPrivacyWidgetState createState() => _TermsAndPrivacyWidgetState();
}

class _TermsAndPrivacyWidgetState extends State<TermsAndPrivacyWidget> {
  bool isAgreed = false;

  void toggleAgreement() {
    setState(() {
      isAgreed = !isAgreed;
    });
    if (widget.onAgreementChanged != null) {
      widget.onAgreementChanged!(isAgreed);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleAgreement,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'I agree with ',
              style: GoogleFonts.inter(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14, ),
              children: [
                TextSpan(
                  text: 'Terms of Service',
                  style: GoogleFonts.inter(
                    color: Colors.green,fontWeight: FontWeight.w500,fontSize: 14,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = widget.onTermsTap ?? () {
                      print('Terms of Service tapped');
                    },
                ),
                TextSpan(
                  text: ' and ',
                  style: GoogleFonts.inter(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14,),
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: GoogleFonts.inter(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,fontSize: 14,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = widget.onPrivacyTap ?? () {
                      print('Privacy Policy tapped');
                    },
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

