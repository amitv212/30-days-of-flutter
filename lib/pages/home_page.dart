import 'package:flutter/material.dart';
import 'package:flutterproj1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(("Welcome to catalouge")),
      ),
    body: Center(
    child: Container(
    child: Text("Hello! i am $days amit"),
    ),
    ),
      drawer: MyDrawer(),
    );
  }
}
