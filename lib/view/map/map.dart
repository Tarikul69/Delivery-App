import 'package:flutter/material.dart';

class map extends StatelessWidget {
  const map({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Map",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
