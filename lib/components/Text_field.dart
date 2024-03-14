import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.hinttext, required this.unknowntext,required this.controller});

  final TextEditingController controller;
  final String hinttext;
  final bool unknowntext;



  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: unknowntext,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey)
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
        ),
        fillColor:  Colors.grey[400],
        filled: true,
        hintText: hinttext,
        hintStyle: TextStyle(color: Colors.black54,
        fontWeight: FontWeight.w500),
      ),
    );
  }
}
