import 'package:flutter/material.dart';
import 'package:flutterproj1/pages/home_page.dart';
import 'package:flutterproj1/pages/login_page.dart';
void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/loginPage",
      routes: {
       "/loginPage" : (context) => LoginPage(),
        "/homepage" : (context) => HomePage(),
      },
    );
  }
}
