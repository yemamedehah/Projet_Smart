import 'package:flutter/material.dart';

class MyTextFiled extends StatefulWidget {
 final String? hint;
  final bool obscure;
  bool obscureText = true;
   MyTextFiled({super.key , this.hint, this.obscure = false});

  @override
  State<MyTextFiled> createState() => _MyTextFiledState();
}

class _MyTextFiledState extends State<MyTextFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: '*',
   obscureText: widget.obscure ? widget.obscureText : false,
      decoration: InputDecoration(
        labelText: widget.hint,
        labelStyle:const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600) ,
    //  suffixIcon: widget.obscure
    //         ? IconButton(
    //             icon: Icon(widget.obscureText ? Icons.visibility : Icons.visibility_off),
    //             onPressed: () {
    //               setState(() {
    //                 widget.obscureText = !widget.obscureText;
    //               });
    //             },
    //           )
    //         : null,
         
            
      ),
      
      
  
     
        
      
    );
  }
}
