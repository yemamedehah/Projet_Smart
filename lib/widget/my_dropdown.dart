import 'package:flutter/material.dart';
import '../config.dart'; // Make sure to import your config file

class MyDropdown extends StatefulWidget {
  final List<dynamic> items;
  final TextEditingController? controller;
  final Color? textColor;
  final Color? borderColor;

  const MyDropdown({
    Key? key,
    required this.items,
    this.textColor,
    this.borderColor,
    this.controller,
  }) : super(key: key);

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String? selectedType;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: selectedType,
      items: widget.items.map((dynamic value) {
        return DropdownMenuItem<String>(
          value: value.toString(), // Assuming your items are of type String
          child: Text(
            value.toString(),
            style: TextStyle(
              color: widget.textColor,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedType = newValue;
        });
      },
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // Adjust the color as needed
        ),
       // suffixIcon: Icon(Icons.arrow_drop_down_rounded, color: widget.textColor),
      ),
    );
  }
}
