import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterproj1/models/catalog.dart';
import 'dart:convert';
import 'package:flutterproj1/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 20;

  @override
  void initState(){
    super.initState();
    loadData();
  }
  loadData()async{
    await Future.delayed(Duration(seconds: 2));
   var catalogJson= await rootBundle.loadString("assets/files/catalog.json");
   var decodedData= jsonDecode(catalogJson);
   var productsData= decodedData["products"];
   catalogModel.items = List.from(productsData)
       .map<Item>((item) => Item.fromMap(item))
       .toList();
   setState(() {

   });
  }
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
      child:(catalogModel.items!=null && catalogModel.items.isNotEmpty)? ListView.builder(
        itemCount: catalogModel.items.length,
        itemBuilder: (context,index){
          return ItemWidget(item: catalogModel.items[index],);
        },
      ):Center(child: CircularProgressIndicator(),),
    ),
      drawer: MyDrawer(),
    );
  }
}
