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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mycard(
                title: "Restaurant Details",
                title1: "Mc Donald's",
                subtitle: "Indian cuisine fast food",
              ),
              SizedBox(
                height: 10,
              ),
              mycard(
                title: "Customer Contact Details",
                title1: "Tarikul Abir",
                subtitle: "Dhaka Bangladesh",
              ),
              SizedBox(
                height: 10,
              ),
              Title(
                color: Colors.black,
                child: Text(
                  "Item: 3",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                color: Colors.black26,
              ),
              Divider(
                color: Colors.black26,
              ),
              Title(
                color: Colors.black,
                child: Text(
                  "Additional Note",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                ),
                //keyboardType: TextInputType.multiline,
                minLines: 3,
                maxLines: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mycard({
    required String title,
    required String title1,
    required String subtitle,
  }) {
    return SizedBox(
      width: Get.width,
      child: Card(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              ListTile(
                leading: CircleAvatar(),
                title: Text(
                  title1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(subtitle),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.call),
                      label: Text("Call"),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.directions),
                      label: Text("Direction"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
