import 'package:flutter/material.dart';

class TXTField extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscure;
  const TXTField(
      {Key? key,
      this.label = "",
      this.keyboardType = TextInputType.text,
      this.obscure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
