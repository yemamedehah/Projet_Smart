import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:projet_smart/config.dart';
import 'package:projet_smart/screens/login_screen.dart';
import 'package:projet_smart/widget/my_button.dart';
import 'package:projet_smart/widget/my_text_filed.dart';

import '../app_constants.dart';
import '../controllers/auth_controller.dart';
import '../services/firebase_service.dart';
import '../utils.dart';

class SignupScreen extends StatelessWidget {
      final AuthController _authController = Get.put(AuthController());
  final FirebaseService _firebaseService = FirebaseService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: SingleChildScrollView(
          child: Form(
           key: _formKey,
     
        
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
            MyTextFiled(hint: 'Email',controller: _authController.emailController),
            SizedBox(height: fullHeight(context) * 0.02),
            MyTextFiled(hint: 'Mot de passe',obscure: true,controller: _authController.passwordController),
            
            SizedBox(height: fullHeight(context) * 0.08),
                    Obx(
                  () => _authController.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : MyButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              _authController.setIsLoading(true);
                              var loginResult = await _firebaseService.signUp(
                                  _authController.emailController.text,
                                  _authController.passwordController.text);
                              _authController.setIsLoading(false);
                              if (loginResult == true) {
                                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  LoginScreen()),
              );
                               // Get.off(LoginScreen());
                              } else {
                                showSnackbarError('Login failed !');
                              }
                            }
                          },
                          title: 'S\'inscrire'),
                ),
           
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
        ),
    )
    );
  }
}
