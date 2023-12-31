import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../controllers/vols_controller.dart';
import 'package:projet_smart/volclass/vol.dart';

class FirebaseService {
  // function signup create user

  Future<bool> signUp(String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      log('$credential');
      if (credential.user != null) return true;
      return false;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log('$e');
    }
    return false;
  }
  // function login user
  Future<bool> login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      log('$credential');
      if (credential.user != null) return true;
      return false;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      } else {
        log(e.code);
      }
      return false;
    }
  }

//function recherche voyage
Future<List<Vol>> searchvols(String origin, String destination, String date, String type, int passagers, String classe) async {
  try {
    print('Query Parameters: $origin, $destination, $date, $type, $passagers, $classe');
    var querySnapshot = await FirebaseFirestore.instance
        .collection('Vols')
        .where('origin', isEqualTo: origin)
        .where('destination', isEqualTo: destination)
        .where('date', isEqualTo: date)
        .where('type', isEqualTo: type)
        .where('passagers', isEqualTo: passagers)
        .where('classe', isEqualTo: classe)
        .get();

    // Convert the query results into a list of Vol objects
    List<Vol> results = querySnapshot.docs.map((doc) => Vol.fromMap(doc.data() as Map<String, dynamic>)).toList();
    print(results);

    return results;
  } catch (error) {
    print('Error fetching data: $error');
    throw error;
  }
}


}
