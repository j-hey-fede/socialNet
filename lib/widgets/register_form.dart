import 'package:desi/utils/responsive.dart';
import 'package:desi/views/login_page.dart';
import 'package:desi/widgets/auth_card.dart';
import 'package:flutter/material.dart';

// TODO: - Make AuthCard more flexible and incorporate signup logic here;

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
                  'Have an account?',
                  style: TextStyle(
                    fontSize: responsive.dp(responsive.isTablet ? 1.33 : 2),
                  ),
                ),
                TextButton(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: responsive.dp(responsive.isTablet ? 1.5 : 1.7),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoginPage.routeName);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
