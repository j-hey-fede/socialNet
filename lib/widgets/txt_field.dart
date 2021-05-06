import 'package:flutter/material.dart';

class TXTField extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscure;
  final bool borderEnabled;
  final void Function(String text) onChanged;
  final double fontsize;
  const TXTField(
      {Key? key,
      this.label = "",
      this.keyboardType = TextInputType.text,
      this.obscure = false,
      this.borderEnabled = true,
      required this.onChanged,
      this.fontsize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscure,
      style: TextStyle(
        fontSize: fontsize,
      ),
      decoration: InputDecoration(
        enabledBorder: borderEnabled
            ? UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              )
            : InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
