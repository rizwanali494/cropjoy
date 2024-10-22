import 'package:cropjoy/ui/chat_inbox/widgets/chat_bubble.dart';
import 'package:cropjoy/ui/chat_inbox/widgets/chat_header.dart';
import 'package:cropjoy/ui/chat_inbox/widgets/message_input.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  const ChatScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              "assets/images/chatbackground.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // Chat content
          SafeArea(
            child: Column(
              children: [
                ChatHeader(
                  name: name,
                  status: "Online",
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.04),
                    child: ListView(
                      children: const [
                        ChatBubble(
                          message: 'Hi, how may I help you?',
                          time: '08:00',
                          isSentByMe: false,
                        ),
                        ChatBubble(
                          message:
                          'I have ordered a meal, but it hasn\'t been delivered on time.',
                          time: '08:15',
                          isSentByMe: true,
                        ),
                        ChatBubble(
                          message: 'Okay, wait a minute 🙏',
                          time: '08:20',
                          isSentByMe: false,
                        ),
                        ChatBubble(
                          message: 'Okay, I\'m waiting 🙌',
                          time: '08:22',
                          isSentByMe: true,
                        ),
                      ],
                    ),
                  ),
                ),

                // Message input
                const MessageInput(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
