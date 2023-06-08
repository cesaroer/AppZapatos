import 'package:flutter/material.dart';

class OrangeBtn extends StatelessWidget {
  final String text;
  final double height;
  final double width;

  const OrangeBtn({
    required this.text,
    this.height = 50,
    this.width = 150,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.orange),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
