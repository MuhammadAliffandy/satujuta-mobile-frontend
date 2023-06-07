import 'package:flutter/material.dart';

class MyTextCustom extends StatelessWidget {
  const MyTextCustom({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
