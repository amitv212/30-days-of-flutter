import 'package:flutter/material.dart';
import 'package:flutterproj1/models/catalog.dart';
import 'package:flutterproj1/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  int days = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(("Welcome to catalouge"),style: TextStyle(
        color: Colors.black
        ),
        ),
      ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: catalogModel.items.length,
        itemBuilder: (context,index){
          return ItemWidget(item: catalogModel.items[index],);
        },
      ),
    ),
      drawer: MyDrawer(),
    );
  }
}
