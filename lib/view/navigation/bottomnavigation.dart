import 'package:deliveryapp/view/home/home.dart';
import 'package:deliveryapp/view/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bottomnavigation extends StatelessWidget {
  const bottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            home(),
            profile(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 80,
          width: Get.width,
          child: TabBar(
            indicatorWeight: 1,
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            unselectedLabelColor: Colors.black,
            labelColor: Theme.of(context).colorScheme.primary,
            tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
