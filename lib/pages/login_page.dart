import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterproj1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to my App",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      body:SingleChildScrollView(
      child:Column(
        children: [
          Text("Welcome dear",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          ),
          Image.asset("assets/images/login_image.png",
              height: 180,
          ),
          SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 10.0) ,
            child:Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText:"Enter UserName",
                    labelText: "User Name",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText:"Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(onPressed: () {
                  Navigator.pushNamed(context, myRoutes.HomeRoute);
                },
                    child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize:Size(90, 30)),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
