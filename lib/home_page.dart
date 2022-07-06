import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
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
      drawer: Drawer(),
    );
  }
}
