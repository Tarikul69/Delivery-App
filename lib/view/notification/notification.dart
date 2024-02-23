import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [notificationCard()],
        ),
      ),
    );
  }

  Widget notificationCard() {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "Notification",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Notification details"),
          ),
          Text(
            DateFormat('kk:mm:ss  EEE d MMM').format(DateTime.now()),
            style: TextStyle(),
          ),
          Divider()
        ],
      ),
    );
  }
}
