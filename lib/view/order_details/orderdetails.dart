import 'package:flutter/material.dart';
import 'package:get/get.dart';

class orderdetails extends StatelessWidget {
  const orderdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            mycard(),
          ],
        ),
      ),
    );
  }

  Widget mycard() {
    return SizedBox(
      width: Get.width,
      child: Card(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Restaurant Details"),
              ListTile(
                leading: CircleAvatar(),
                title: Text("Mc Donald's"),
                subtitle: Text("Indian cuisine fast food"),
              ),
              Row(
                children: [
                  Text("data"),
                  Text("data"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
