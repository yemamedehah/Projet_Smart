import 'package:flutter/material.dart';
import 'package:projet_smart/config.dart';
import 'package:projet_smart/widget/my_button.dart';
import 'package:projet_smart/widget/my_text_filed.dart';

import '../app_constants.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: AppBar().preferredSize.height * 2),
            Align(
              alignment: AlignmentDirectional.topStart,
              // child: Image.asset(
              //   AppConstants.appLogo,
              //   width: fullWidth(context) * 0.22,
              // ),
            ),
            SizedBox(height: fullHeight(context) * 0.06),
            const Text(
              'Inscription',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
           
            MyTextFiled(hint: 'Nom'),
            SizedBox(height: fullHeight(context) * 0.02),
            MyTextFiled(hint: 'Email'),
            SizedBox(height: fullHeight(context) * 0.02),
            MyTextFiled(hint: 'Mot de passe', hasIcon: true),
            
            SizedBox(height: fullHeight(context) * 0.04),
            MyButton(onPressed: () {}, title: 'S\'inscrire'),
            SizedBox(height: fullHeight(context) * 0.03),
            Center(
              child: RichText(
                text: const TextSpan(
                  text:"Vous avez deja un compte? ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Connectez-ici',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w500)),
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
