import 'package:flutter/material.dart';
import 'package:projet_smart/app_constants.dart';

import '../config.dart';

class MyButton extends StatefulWidget {
  final Function()? onPressed;
  final String? title;
  final Color color;
  final Color textColor;
  const MyButton({
    super.key,
    this.onPressed,
    this.title,
      this.color = const Color(0xFF0044A5),
    this.textColor = Colors.white,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth(context) * 0.9,
      height: fullHeight(context) * 0.06,
      child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: widget.color,
              elevation: 3,
              foregroundColor: widget.textColor,
              textStyle: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: fontSize10(context) * 1)),
          child: Text(
            widget.title!,
          )),
    );
  }
}
