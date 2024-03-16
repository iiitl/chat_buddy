import 'package:chatify/components/My_button.dart';
import 'package:chatify/components/Text_field.dart';
import 'package:chatify/pages/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key, required this.OnTap}) : super(key: key);
  final void Function()? OnTap;
  final EmailController = TextEditingController();
  final PassController = TextEditingController();

  void login(BuildContext context) async {
    // Get the auth service
    final authService = Provider.of<AuthService>(context, listen: false);
    try {
      await authService.signinwithEmailPassword(
        EmailController.text,
        PassController.text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Must enter details'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 85,
                  ),
                  const Icon(
                    Icons.message,
                    size: 110,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Welcome back',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    hinttext: ('Email'),
                    unknowntext: false,
                    controller: EmailController,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MyTextField(
                    hinttext: ('Password'),
                    unknowntext: true,
                    controller: PassController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(ontap: () => login(context), text: "Login"),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a Member ? ',),
                      GestureDetector(
                        onTap: OnTap,
                        child: const Text('Register now',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
