import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;

  const ChatBubble({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width:150,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),

          ),
          color: Colors.white,

      ),
      child: Container(
        alignment: Alignment.bottomRight,
        child: Text(
          message,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontFamily: 'Ostrich',
            letterSpacing: 1,

          ),
        ),
      ),
    );
  }
}
