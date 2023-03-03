import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.hint,
    required this.icon1,
    this.icon2,
    this.keyboardtype,
    this.ispassword = false,
    required this.controller,
    required this.validator,
  }) : super(key: key);
  final String hint;
  final IconData icon1;
  final Widget? icon2;
  final TextInputType? keyboardtype;
  final bool ispassword;
  final TextEditingController controller;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardtype,
        validator: (value) => validator(value),
        cursorColor: Colors.purple,
        obscureText: ispassword,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            labelText: hint,
            labelStyle: TextStyle(color: Colors.purple[300]),
            prefixIcon: Icon(icon1),
            suffixIcon: icon2,
            prefixIconColor: Colors.purple,
            suffixIconColor: Colors.purple[400]),
      ),
    );
  }
}
