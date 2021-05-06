import 'package:desi/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'txt_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formKey = GlobalKey();
  String _email = '';
  String _password = '';

  _submitForm() {
    final isValidated = _formKey.currentState!.validate();
    if (isValidated) {
      // TODO: - implement form validation and submission
      // Navigation to user homepage
    }
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 480 : 360,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TXTField(
                label: "EMAIL ADDRESS",
                keyboardType: TextInputType.emailAddress,
                fontsize: responsive.dp(responsive.isTablet ? 1.25 : 1.5),
                onChanged: (text) {
                  _email = text;
                },
              ),
              SizedBox(height: responsive.dp(responsive.isTablet ? 3 : 2.22)),
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
                        fontsize:
                            responsive.dp(responsive.isTablet ? 1.25 : 1.5),
                        onChanged: (text) {
                          _password = text;
                        },
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              responsive.dp(responsive.isTablet ? 1.22 : 1.52),
                          color: Colors.purple[800],
                        ),
                      ),
                      onPressed: () {}, // _submitForm;
                    )
                  ],
                ),
              ),
              SizedBox(height: responsive.dp(5)),
              SizedBox(
                width: double.infinity,
                height: responsive.hp(responsive.isTablet ? 5 : 7.5),
                child: MaterialButton(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: responsive.dp(responsive.isTablet ? 1.33 : 2),
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
                      fontSize: responsive.dp(responsive.isTablet ? 1.33 : 2),
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize:
                            responsive.dp(responsive.isTablet ? 1.5 : 1.7),
                      ),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(height: responsive.dp(10))
            ],
          ),
        ),
      ),
    );
  }
}
