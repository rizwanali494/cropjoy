import 'package:cropjoy/ui/feed_back/widgets/add_feedback_text_button.dart';
import 'package:cropjoy/ui/feed_back/widgets/edit_text_area.dart';
import 'package:cropjoy/ui/feed_back/widgets/feedback_header.dart';
import 'package:cropjoy/ui/feed_back/widgets/feedback_string.dart';
import 'package:cropjoy/ui/feed_back/widgets/feedback_suggestions.dart';
import 'package:cropjoy/ui/feed_back/widgets/ratting_widget.dart';
import 'package:cropjoy/ui/feed_back/widgets/text_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/button.dart';

class FeedbackView extends StatefulWidget {
  const FeedbackView({super.key});

  @override
  State<FeedbackView> createState() => _FeedbackViewState();
}

class _FeedbackViewState extends State<FeedbackView> {

  // Example list of suggestions
  final List<String> suggestions = [
    'Accommodating',
    'Great',
    'Convenient',
    'Consistent',
    'Reliable Service',
  ];
  bool _showSuggestions = false;
  bool _showEditTextArea = false;
  bool _showfeedbackstring = false;
  String _feedbackButtonText = "Anything to add?";
  final TextEditingController reviewController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  void _onRatingChanged(double rating) {
    setState(() {
      _showSuggestions = true;
    });
  }



  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {
          _showEditTextArea = false;
          _feedbackButtonText = "Edit Feedback";
        });
      }
    });
  }

  @override
  void dispose() {
    reviewController.dispose();
    _focusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const FeedBackHeader(headerName: "Feedback",),
            const TextBody(
                heading: "How was the product?",
                subtitle: "Just Average. What went Wrong?"
            ),
            SizedBox(height: screenwidth*0.04,),
            RattingWidget(onRatingChanged: _onRatingChanged),
            SizedBox(height: screenwidth*0.04,),
            if (_showSuggestions)
              FeedbackSuggestions(suggestions: suggestions),
            if (!_showEditTextArea)
              Column(
                children: [
                  if(_showfeedbackstring)const SendFeedBackString(),
                  SizedBox(height: screenwidth * 0.038),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _showEditTextArea = true;
                        _showfeedbackstring = true;
                      });
                    },
                    child: AddFeedbackTextButton(text: _feedbackButtonText),
                  ),
                ],
              ),
            if (_showEditTextArea)
              EditTextArea(
                reviewController: reviewController,
                hintText: "Add a review",
                focusNode: _focusNode,
              ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenwidth*0.04),
              child: CustomButton(text: 'Submit', onPressed: (){

              }),
            )

          ],
        ),
      ),
    );
  }
}
