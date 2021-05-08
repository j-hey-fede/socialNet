import 'package:desi/utils/responsive.dart';
import 'package:desi/views/register_page.dart';
import 'package:desi/widgets/auth_card.dart';
import 'package:flutter/material.dart';

// TODO: - Make AuthCard more flexible and incorportate login logic here

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: responsive.dp(1.22),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 480 : 360,
        ),
        child: Column(
          children: <Widget>[
            AuthCard(),
            SizedBox(height: responsive.dp(responsive.isTablet ? 4 : 0.5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New to this space?',
                  style: TextStyle(
                    fontSize: responsive.dp(responsive.isTablet ? 1.33 : 2),
                  ),
                ),
                TextButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: responsive.dp(responsive.isTablet ? 1.5 : 1.7),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(RegisterPage.routeName);
                  },
                )
              ],
            ),
            TextButton(
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: responsive.dp(responsive.isTablet ? 1.22 : 1.32),
                  color: Colors.grey.shade800,
                ),
              ),
              onPressed: () {}, // _submitForm;
            ),
          ],
        ),
      ),
    );
  }
}
