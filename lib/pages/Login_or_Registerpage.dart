
import 'package:chatify/pages/LoginPage.dart';
import 'package:chatify/pages/RegisterPage.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({Key? key}) : super(key: key);

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool isLogin = true;

  void togglePage() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(isLogin){
      return LoginPage(OnTap: togglePage);
    }
    else{
      return RegisterPage( OnTap: togglePage,);
    }
  }
}
