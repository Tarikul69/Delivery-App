import 'package:deliveryapp/components/theme/theme_provider.dart';
import 'package:deliveryapp/view/notification/notification.dart';
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
          IconButton(
            onPressed: () {
              Get.to(notification());
            },
            icon: Icon(Icons.notifications),
          ),
          Switch.adaptive(
            activeColor: Theme.of(context).colorScheme.primary,
            applyCupertinoTheme: false,
            value: light,
            onChanged: (bool value) {
              Provider.of<ThemeProvider>(context, listen: false)
                  .toggleTheme(true);

              setState(
                () {
                  light = value;
                },
              );
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        //margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(
                color: Colors.black,
                child: Text(
                  " Active Order",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              mycard(),
              earning(),
              mycard(),
              earning(),
              mycard(),
              earning(),
              mycard(),
              earning(),
              mycard(),
              earning(),
              // GridView(
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //     mainAxisSpacing: 2,
              //     crossAxisSpacing: 2,
              //   ),
              //   children: [],
              // ),
            ],
          ),
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
        height: 190,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Order ID: "),
              Row(
                children: [
                  Icon(Icons.location_city),
                  Text(
                    "Restaurant Location",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text(
                    "Dhaka Bangladesh",
                    style: TextStyle(color: Color.fromARGB(255, 59, 59, 59)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        "Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.directions,
                        color: Colors.black,
                      ),
                      label: Text(
                        "Direction",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
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

  Widget earning() {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: Get.width,
        height: 190,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
