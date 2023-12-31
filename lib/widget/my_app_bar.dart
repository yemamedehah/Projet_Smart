import 'package:flutter/material.dart';

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
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      backgroundColor: const Color(0xFF0044A5),
      centerTitle: true,
      toolbarHeight: 140.0,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(140.0);
}
