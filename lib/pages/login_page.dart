import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterproj1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButtton = false;
  final _formkey = GlobalKey<FormState>();
  movetohome(BuildContext)async{
    if(_formkey.currentState!.validate()) {
      setState(() {
        changeButtton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, myRoutes.HomeRoute);
      setState(() {
        changeButtton = false;
      });
    }
  }
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
      child:Form(
        key: _formkey,
        child: Column(
          children: [

            Image.asset("assets/images/hey.png",
                height: 200,
            ),
            Text("Welcome dear $name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 20,
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
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return "user name cannot be empty";
                      }
                    },
                    onChanged: (value){
                   name=value;
                   setState(() {}
                   );
                   },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText:"Enter Password",
                      labelText: "Password",
                    ),
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return "password cannot be empty";
                      }
                        else if(value.length<8){
                          return "password cannot be less then 8";
                        }
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // ElevatedButton(onPressed: () {
                  //   Navigator.pushNamed(context, myRoutes.HomeRoute);
                  // },
                  //     child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize:Size(90, 30)),
                  // ),
                  Material(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(changeButtton?30:10),
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: ()=> movetohome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: changeButtton?30:40,
                        width: changeButtton?50:100,
                        alignment: Alignment.center,
                        child:changeButtton?Icon(Icons.done,color: Colors.white,)
                            :Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ),
          ],
        ),
      ),
      ),
    );
  }
}
