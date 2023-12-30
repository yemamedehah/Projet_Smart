import 'package:flutter/material.dart';
import 'package:projet_smart/config.dart';
import 'package:projet_smart/widget/my_app_bar.dart';

class Voyage extends StatefulWidget {
  const Voyage({super.key});

  @override
  State<Voyage> createState() => _VoyageState();
}

class _VoyageState extends State<Voyage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appbartext: "Choisissez Votre voyage"),
    );
  }
}