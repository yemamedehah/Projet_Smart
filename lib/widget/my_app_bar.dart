import 'package:flutter/material.dart';
import '../config.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? appbartext;

  const MyAppBar({Key? key, this.appbartext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appbartext ?? '',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      backgroundColor: const Color(0xFF0044A5),
      centerTitle: true,
      toolbarHeight: 140.0, // Set your desired height here
      iconTheme: IconThemeData(color: Colors.white), // Set arrow color to white
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(140.0); // Adjust accordingly
}
