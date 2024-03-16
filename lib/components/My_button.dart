import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  final void Function()? onTap;
  final String text;

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  Color _buttonColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (a) {
        setState(() {
          _buttonColor = Colors.grey;
        });
      },
      onTapUp: (a) {
        setState(() {
          _buttonColor = Colors.black;
        });
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        decoration: BoxDecoration(
          color: _buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
