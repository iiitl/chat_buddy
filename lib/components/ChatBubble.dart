import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;

  const ChatBubble({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey[600]),
      child: Text(
        message,
        style: TextStyle(fontSize: 15,  color: Colors.white),
      ),
    );
  }
}
