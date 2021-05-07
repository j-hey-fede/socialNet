import 'package:desi/views/home_page.dart';
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
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.amber,
      ),
      home: HomePage(),
      routes: {
        UserHomePage.routeName: (ctx) => UserHomePage(),
      },
    );
  }
}
