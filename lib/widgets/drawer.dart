import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(

              decoration: BoxDecoration(
              ),
              margin: EdgeInsets.zero,
            accountName: Text("Amit Verma"),
            accountEmail: Text("amit.av379@gmail.com"),
              currentAccountPicture: CircleAvatar(
               backgroundImage: AssetImage("assets/images/psnl.png")
              ),
          ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.white,),
            title: Text("Home",
              textScaleFactor: 1.3,
              style: TextStyle(
            color: Colors.white,
                fontFamily: GoogleFonts.lato().fontFamily,
            ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text("Profile",
              textScaleFactor:1.3 ,
              style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text("Email me",
              textScaleFactor:1.3 ,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
