//import 'package:desi/utils/exception.dart';
import 'package:desi/views/user_home.dart';

import '../utils/responsive.dart';
import 'package:flutter/material.dart';

class AuthCard extends StatefulWidget {
  @override
  _AuthCardState createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  var _isLoading = false;
  final _passwordController = TextEditingController();

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('An error occurred'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
              child: Text('Dismiss'),
              onPressed: () {
                Navigator.of(ctx).pop();
              })
        ],
      ),
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    setState(() {
      _isLoading = true;
    });
    try {
      Navigator.of(context).pushNamed(UserHomePage.routeName);
      print("handling valid form");
      //   if (_authMode == AuthMode.Login) {
      //     await Provider.of<Auth>(context, listen: false)
      //         .login(_authData["email"], _authData["password"]);
      //   } else {
      //     await Provider.of<Auth>(context, listen: false)
      //         .signup(_authData["email"], _authData["password"]);
      //   }
      // } on HttpException catch (error) {
      //   var errorMessage = 'Authentication failed';
      //   if (error.toString().contains('EMAIL_EXISTS')) {
      //     errorMessage = 'This email already exists. Login instead?';
      //   } else if (error.toString().contains('INVALID_EMAIL')) {
      //     errorMessage = 'Please enter a valid email address';
      //   } else if (error.toString().contains('WEAK_PASSWORD')) {
      //     errorMessage = 'This password is too weak.';
      //   } else if (error.toString().contains('EMAIL_NOT_FOUND')) {
      //     errorMessage = 'The email address was not found. Signup instead?';
      //   } else if (error.toString().contains('INVALID_PASSWORD')) {
      //     errorMessage = 'The password entered is not valid';
      //   }
      //   _showErrorDialog(errorMessage);
    } catch (error) {
      const errorMessage = 'Could not authenticate. Please try again later.';
      _showErrorDialog(errorMessage);
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 8.0,
      child: Container(
        height: responsive.hp(responsive.isTablet ? 25 : 31),
        constraints: BoxConstraints(
            minHeight: responsive.dp(responsive.isTablet ? 20 : 30)),
        width: responsive.width * 0.88,
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  style: TextStyle(
                    fontSize: responsive.dp(responsive.isTablet ? 1.33 : 2),
                  ),
                  decoration: InputDecoration(labelText: 'E-Mail'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Invalid email!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _authData['email'] = value!;
                  },
                ),
                TextFormField(
                  style: TextStyle(
                    fontSize: responsive.dp(responsive.isTablet ? 1.33 : 2),
                  ),
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 5) {
                      return 'Password is too short!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _authData['password'] = value!;
                  },
                ),
                SizedBox(height: responsive.dp(5)),
                SizedBox(
                  width: responsive.width * 0.88,
                  height: responsive.hp(responsive.isTablet ? 5 : 7.5),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Text(
                      "LET\'S GO!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: responsive.dp(responsive.isTablet ? 1.33 : 2),
                        color: Colors.white,
                      ),
                    ),
                    onPressed: _submit,
                    color: Colors.red.shade900,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
