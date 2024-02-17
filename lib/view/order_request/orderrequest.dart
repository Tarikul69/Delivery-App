import 'package:flutter/material.dart';
import 'package:get/get.dart';

class orderrequest extends StatefulWidget {
  const orderrequest({super.key});

  @override
  State<orderrequest> createState() => _orderrequestState();
}

class _orderrequestState extends State<orderrequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Request",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              mycard(),
              mycard(),
              mycard(),
              mycard(),
              mycard(),
              mycard(),
              mycard(),
              mycard(),
              mycard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget mycard() {
    return Card(
      elevation: 5,
      color: Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: Get.width,
        height: 175,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text("Tarikul Abir"),
              subtitle: Text("bangladesh"),
              trailing: TextButton(onPressed: () {}, child: Text("data")),
            ),
            Text(
              "3 Items",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "2 Minutes ago",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(Get.width / 3, 40),
                      shadowColor: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Ignore",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(Get.width / 3, 40),
                      shadowColor: Theme.of(context).colorScheme.secondary,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Accept",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
