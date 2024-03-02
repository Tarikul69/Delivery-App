import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                  ),
                  Positioned(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt),
                    ),
                    right: -1,
                    bottom: -1,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
