import 'package:flutter/material.dart';

class MyTextFiled extends StatefulWidget {
 final String? hint;
  final bool obscure;
    final Color? textColor;
  final Color? hintColor;
  final Color? borderColor;


  bool obscureText = true;
  final TextEditingController? controller;
   MyTextFiled({super.key , this.hint, this.obscure = false,this.controller,this.hintColor,this.textColor,this.borderColor});

  @override
  State<MyTextFiled> createState() => _MyTextFiledState();
}

class _MyTextFiledState extends State<MyTextFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscuringCharacter: '*',
      obscureText: widget.obscure ? widget.obscureText : false,
      style: TextStyle(color: widget.textColor), // Set text color
      decoration: InputDecoration(
        labelText: widget.hint,
        labelStyle: TextStyle(
          color: widget.hintColor ?? Colors.grey,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? Colors.white,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? Colors.white,
          ),
        ),
        hintStyle: TextStyle(
          color: widget.textColor,
        ),
      ),
    );
  }
}
