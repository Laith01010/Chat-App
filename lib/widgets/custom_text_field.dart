import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField.CustomFormTextField({
    this.onChanged,
    this.hintText,
    this.obscureText = false,
  });
  final String? hintText;
  final Function(String)? onChanged;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required.';
        }
      },
      onChanged: onChanged,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: const Color.fromARGB(255, 154, 151, 151)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}
