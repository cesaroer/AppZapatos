import 'package:flutter/material.dart';

class ZapatoDescription extends StatelessWidget {
  final String title;
  final String description;

  const ZapatoDescription(
      {super.key, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              this.title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(this.description,
                style: TextStyle(color: Colors.black54, height: 1.5)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
