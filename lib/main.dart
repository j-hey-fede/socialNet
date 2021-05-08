import 'package:desi/views/login_page.dart';
import 'package:desi/views/register_page.dart';
import 'package:desi/views/user_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      // only portrait - remove if / when optimization for landscape added
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        canvasColor: Colors.white70,
      ),
      home: LoginPage(),
      routes: {
        RegisterPage.routeName: (ctx) => RegisterPage(),
        UserHomePage.routeName: (ctx) => UserHomePage(),
      },
    );
  }
}
