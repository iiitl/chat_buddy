import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;

  const ChatBubble({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),

          ),
          color: Colors.brown[600],

      ),
      child: Container(
        alignment: Alignment.bottomRight,
        child: Text(
          message,
          style: TextStyle(
            fontSize: 15,
            color: Colors.amberAccent[50],
            fontFamily: 'Ostrich',
            letterSpacing: 1,

          ),
        ),
      ),
    );
  }
}
