import 'package:deliveryapp/components/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
              Provider.of<ThemeProvider>(context, listen: false)
                  .toggleTheme(true);

              setState(() {
                light = value;
              });
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            mycard(),
            mycard(),
          ],
        ),
      ),
    );
  }

  Widget mycard() {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: Get.width,
        height: 90,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
