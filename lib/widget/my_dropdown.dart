import 'package:flutter/material.dart';
import '../config.dart'; // Make sure to import your config file

class MyDropdown extends StatefulWidget {
  final List<dynamic> items;
  final TextEditingController? controller;
  final Color? textColor;
  final Color? borderColor;
  final String title;
  final Color? dropdownBackgroundColor;

  const MyDropdown({
    Key? key,
    required this.items,
    required this.title,
    this.textColor,
    this.borderColor,
    this.controller,
    this.dropdownBackgroundColor,
  }) : super(key: key);

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String? selectedType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            color: widget.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4), // Adjust the height as needed
        DropdownButtonFormField(
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
          onChanged: (selectedValue) {
            setState(() {
              selectedType = selectedValue as String?;
              if (widget.controller != null) {
                widget.controller!.text = selectedValue.toString();
              }
            });
          },
          dropdownColor: widget.dropdownBackgroundColor ?? Colors.grey, // Set the background color
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: widget.borderColor ?? Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
