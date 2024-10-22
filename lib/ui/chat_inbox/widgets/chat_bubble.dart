import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;
  final bool isSentByMe; // true for sent message, false for received message

  const ChatBubble({
    super.key,
    required this.message,
    required this.time,
    required this.isSentByMe,
  });

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: screenheight*0.015),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: screenwidth * 0.65, // Set max width to 70% of screen width
          ),
          child: Column(
            crossAxisAlignment: isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: isSentByMe ? const Color(0xFF198910) : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  message,
                  style: TextStyle(
                    fontSize: screenwidth * 0.04,
                    color: isSentByMe ? Colors.white : Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenwidth*0.03),
                child: Text(
                  time,
                  style: TextStyle(
                    fontSize: screenwidth * 0.03,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}