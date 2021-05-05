import 'package:desi/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'txt_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
        children: <Widget>[
          TXTField(
            label: "EMAIL ADDRESS",
            keyboardType: TextInputType.emailAddress,
            fontsize: responsive.dp(1.5),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black12,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TXTField(
                    label: "PASSWORD",
                    obscure: true,
                    borderEnabled: false,
                    fontsize: responsive.dp(1.5),
                  ),
                ),
                TextButton(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[800],
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(height: responsive.dp(5)),
          SizedBox(
            width: double.infinity,
            height: responsive.hp(7.5),
            child: MaterialButton(
              child: Text(
                'SIGN IN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: responsive.dp(2),
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
              color: Colors.pink,
            ),
          ),
          SizedBox(height: responsive.dp(2)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'New to this space?',
                style: TextStyle(
                  fontSize: responsive.dp(2),
                ),
              ),
              TextButton(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: responsive.dp(2),
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: responsive.dp(10))
        ],
      ),
    );
  }
}
