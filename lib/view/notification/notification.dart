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
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              notificationCard(),
              notificationCard(),
              notificationCard(),
              notificationCard(),
              notificationCard(),
              notificationCard(),
              notificationCard(),
              notificationCard(),
              notificationCard(),
              notificationCard(),
              notificationCard(),
            ],
          ),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
            child:
                Text(DateFormat('kk:mm:ss  EEE d MMM').format(DateTime.now())),
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
