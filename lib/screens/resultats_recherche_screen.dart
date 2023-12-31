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
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            //ligne contiw=ent origin vers destinatiov  chercher par user
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
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                
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
              
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Berlin',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 100.0), // Adjust the height between Row and Card

              // list vols selon recherche voyage effectue par user
   Card(
  elevation: 5.0,
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       
        Column(
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
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            
            Text(
              '320 MRU',
              style: TextStyle(
                fontSize: 16,
                 fontWeight: FontWeight.bold,
                 
                
              ),

            ),
             SizedBox(height: 50.0),
             SizedBox(
              width: fullWidth(context) * 0.3,
              child: MyButton(
                onPressed: () {
                  // Ajoutez la logique de votre bouton ici
                },
                title: 'Choisir',
              ),
            ),
          ],
        ),
      ],
    ),
  ),
),
  // si il n'ya pas de vol selon recherche user affiche cette message
// Center(
//   child: Container(
//     padding: const EdgeInsets.all(16.0),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         // Première ligne avec l'icône de danger
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.warning_amber_outlined,
//               color: Colors.red,
//               size: 60,
//             ),
//             SizedBox(width: 20), // Ajout de l'espace
//           ],
//         ),
//         // Deuxième ligne avec le texte
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "Il n'y a aucun vol trouvé ce jour",
//               style: TextStyle(
//                 color: Colors.red,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   ),
// ),





          ],
        ),
      ),
    );
  }
}
