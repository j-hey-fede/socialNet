import 'package:flutter/material.dart';
import 'txt_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
        children: <Widget>[
          TXTField(
            label: "EMAIL ADDRESS",
            keyboardType: TextInputType.emailAddress,
          ),
          TXTField(
            label: "PASSWORD",
            obscure: true,
          ),
        ],
      ),
    );
  }
}
