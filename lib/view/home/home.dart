import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: Icon(Icons.home),
        ),
        actions: [
          Icon(Icons.notifications),
          Switch.adaptive(
            activeColor: Theme.of(context).colorScheme.primary,
            applyCupertinoTheme: false,
            value: light,
            onChanged: (bool value) {
              setState(() {
                light = value;
              });
            },
          )
        ],
      ),
    );
  }
}
