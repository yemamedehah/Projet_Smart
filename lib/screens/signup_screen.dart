import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:projet_smart/config.dart';
import 'package:projet_smart/screens/login_screen.dart';
import 'package:projet_smart/widget/my_button.dart';
import 'package:projet_smart/widget/my_text_filed.dart';

import '../app_constants.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

              SizedBox(height: fullHeight(context) * 0.12),
                Transform.rotate(
              angle: 2 / 2, // Angle de rotation en radians (90 degrés dans cet exemple)
              child: Icon(
                Icons.airplanemode_active_outlined,
                size: 60,
                color: Colors.black,
              ),
            ),
     
            SizedBox(height: fullHeight(context) * 0.01),
           
            const Text(
              'Inscription',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 2.5, // La hauteur de la ligne
              width: 120, // La largeur de la ligne (ajustez cette valeur pour la longueur souhaitée)
              color: Colors.black, // La couleur de la ligne
              margin: EdgeInsets.symmetric(vertical: 5), // L'espacement au-dessus et en dessous de la ligne
            ),
            SizedBox(height: fullHeight(context) * 0.04),
            MyTextFiled(hint: 'Nom'),
            SizedBox(height: fullHeight(context) * 0.02),
            MyTextFiled(hint: 'Email'),
            SizedBox(height: fullHeight(context) * 0.02),
            MyTextFiled(hint: 'Mot de passe',obscure: true),
            
            SizedBox(height: fullHeight(context) * 0.08),
            MyButton(onPressed: () {}, title: 'S\'inscrire'),
            SizedBox(height: fullHeight(context) * 0.04),
         Center(
  child: RichText(
    text: TextSpan(
      text: "Vous avez deja un compte?",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      children: [
        TextSpan(
          text: 'Connectez-ici',
          style: TextStyle(
            color: const Color(0xFF0044A5),
            fontWeight: FontWeight.w500,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              // Navigate to the registration screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  LoginScreen()),
              );
            },
        ),
      ],
    ),
  ),
),
          ],
        ),
      ),
    )
    );
  }
}
