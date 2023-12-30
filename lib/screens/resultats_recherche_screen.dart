import 'package:flutter/material.dart';
import 'package:projet_smart/config.dart';
import 'package:projet_smart/widget/my_app_bar.dart';
import 'package:projet_smart/widget/my_button.dart';

class ResultatsRecherche extends StatefulWidget {
  const ResultatsRecherche({Key? key}) : super(key: key);

  @override
  State<ResultatsRecherche> createState() => _ResultatsRechercheState();
}

class _ResultatsRechercheState extends State<ResultatsRecherche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appbartext: "Résultats de recherche"),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'London',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Align(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: 3.14 / 2,
                    child: Icon(
                      Icons.airplanemode_active_outlined,
                      size: 60,
                      color: const Color(0xFF0044A5),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Berlin',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0), // Adjust the height between Row and Card
       Card(
  elevation: 5.0,
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '06:30 - 15:00',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: Colors.black,
          ),
        ),
        Text(
          '6 janvier 2024',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Mauritania Airlines',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Text(
          '1  Economy',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      
       
      ],
      
    ),
  ),
),

          ],
        ),
      ),
    );
  }
}
