import 'package:flutter/material.dart';
import 'package:projet_smart/config.dart';
import 'package:projet_smart/widget/my_button.dart';
import 'package:projet_smart/widget/my_text_filed.dart';

import '../app_constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            SizedBox(height: fullHeight(context) * 0.06),
            const Text(
              'Connexion',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: fullHeight(context) * 0.04),
            MyTextFiled(hint: 'Enter Email Address'),
            SizedBox(height: fullHeight(context) * 0.02),
            MyTextFiled(hint: 'Password', hasIcon: true),
           
           
            SizedBox(height: fullHeight(context) * 0.04),
            MyButton(onPressed: () {}, title: 'Se connecter'),
            SizedBox(height: fullHeight(context) * 0.03),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "Vous n'avez pas de compte? ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Inscrivez-vous ici',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500)),
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
