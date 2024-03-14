import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderId;
  final String receiverId;
  final String senderEmail;
  final String message;
  final Timestamp timestamp;
  Message(
      {required this.receiverId,
      required this.senderId,
      required this.timestamp,
      required this.message,
      required this.senderEmail});

  //convert into a map

  Map<String, dynamic> toMap() {
    return {
      'senderId': senderId,
      'senderEmail': senderEmail,
      'receiverId': receiverId,
      'message': message,
      'timestamp':timestamp,
    };
  }
}
