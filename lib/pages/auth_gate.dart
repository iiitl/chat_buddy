import 'package:chatify/pages/Login_or_Registerpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
           if (snapshot.hasData){
             return HomePage();
           }
           else {
             return LoginOrRegister();
           }
      }
      ),
    );
  }
}
