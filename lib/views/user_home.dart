import 'package:desi/widgets/brand_name.dart';
import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  static const routeName = '/user-home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: brandName(),
      ),
      body: Center(
        child: Text('USER IS LOGGED IN!'),
      ),
    );
  }
}
