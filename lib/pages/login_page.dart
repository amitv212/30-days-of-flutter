import 'dart:ui';

import 'package:flutter/material.dart';

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

      body: Column(
        children: [
          Text("Welcome dear",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          ),
          Image.asset("assets/images/login_image.png",
              scale: 4,
          ),
          SizedBox(
            height: 2,
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
                  height: 10,
                ),
                ElevatedButton(onPressed: () {},
                    child: Text("Login"),
                  style: TextButton.styleFrom(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
