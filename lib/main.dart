import 'package:flutter/material.dart';
import 'package:flutterproj1/pages/home_page.dart';
import 'package:flutterproj1/pages/login_page.dart';
import 'package:flutterproj1/utils/routes.dart';
import 'package:flutterproj1/widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: homepage(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: Mytheme.LightTheme(context),
      darkTheme:Mytheme.DarkTheme(context),
      initialRoute: myRoutes.HomeRoute,
      routes: {
       myRoutes.loginRoute : (context) => LoginPage(),
        myRoutes.HomeRoute : (context) => HomePage(),
      },
    );
  }
}
