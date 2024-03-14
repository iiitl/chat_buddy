import 'package:chat_buddy/pages/ChatPage.dart';
import 'package:chat_buddy/pages/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // instance of auth
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void signOut() {
    final authService = Provider.of<AuthService>(context, listen: false);
    // Use authService to perform sign out logic
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          title: Text('HomePage'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: signOut,
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: _buildUserList());
  }

  Widget _buildUserList() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshots) {
        if (snapshots.hasError) {
          return const Text('Error');
        }
        if (snapshots.connectionState == ConnectionState.waiting) {
          return const Text('loading..');
        }
        return ListView(
          children: snapshots.data!.docs
              .map<Widget>((doc) => _buildUserListItem(doc))
              .toList(),
        );
      },
    );
  }

  Widget _buildUserListItem(DocumentSnapshot document) {
    Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
//display all the users except the current
    if (_auth.currentUser!.email != data['email']) {
      return ListTile(
        title: Text(data['email'],style: TextStyle(
          fontSize: 17,
        ),),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => chatpage(
                receiverEmail: data['email'],
                receiverId: data['uid'],
              ),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }
}
// list of users except for the current logged in user
