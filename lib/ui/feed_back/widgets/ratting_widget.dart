import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RattingWidget extends StatefulWidget {
  final ValueChanged<double> onRatingChanged;
  const RattingWidget({super.key, required this.onRatingChanged});

  @override
  State<RattingWidget> createState() => _RattingWidgetState();
}

class _RattingWidgetState extends State<RattingWidget> {

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return RatingBar.builder(
      initialRating: 0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: false,
      itemCount: 5,
      itemSize: screenwidth*0.15,
      itemPadding: EdgeInsets.symmetric(horizontal: screenwidth*0.01),
      itemBuilder: (context, _) => Icon(Icons.star,color: Colors.amber,),
      onRatingUpdate: (rating) {
        widget.onRatingChanged(rating);
      },
    );
  }
}
