import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_smart/config.dart';
import 'package:projet_smart/screens/resultats_recherche_screen.dart';
import 'package:projet_smart/widget/my_button.dart';
import 'package:projet_smart/widget/my_text_filed.dart';
import 'package:projet_smart/widget/my_app_bar.dart';
import 'package:projet_smart/screens/recherche_votre_voyage.dart';
import '../app_constants.dart';

class Voyage extends StatefulWidget {
  const Voyage({super.key});

  @override
  State<Voyage> createState() => _VoyageState();
}

class _VoyageState extends State<Voyage> {
  bool votrevoyage = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: MyAppBar(appbartext: votrevoyage ? "Choisissez Votre voyage" : "Choisissez Votre hôtel"),
            body: SingleChildScrollView(
  child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    votrevoyage = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: votrevoyage
                            ? const Color(0xFF0044A5)
                            : Colors.grey,
                        width: 2.0,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Transform.rotate(
                        angle: 2 / 2,
                        child: Icon(
                          Icons.flight,
                          size: 30.0,
                          color: votrevoyage ? Colors.black : Colors.grey,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Vol',
                        style: TextStyle(
                          color: votrevoyage ? Colors.black : Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    votrevoyage = false;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: !votrevoyage
                            ? const Color(0xFF0044A5)
                            : Colors.grey,
                        width: 2.0,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.house_outlined,
                        size: 30,
                        color: !votrevoyage ? Colors.black : Colors.grey,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Hôtel',
                        style: TextStyle(
                          fontSize: 20,
                          color: !votrevoyage ? Colors.black : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
           
          votrevoyage
              ? MyVols()
             
          :
          Center(
            child: Container(
              padding: EdgeInsets.all(70.0),
              child: Center(
                child: Text(
                  "Liste d'hôtels",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
          ),


        ],
      ),
      ),
    );
  }
}