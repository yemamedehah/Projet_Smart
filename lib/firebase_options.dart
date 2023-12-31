// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDqIXq_TeuwgLsiOhOuHOCAgEYpempLldY',
    appId: '1:1049395205356:web:432c085368381123f781c9',
    messagingSenderId: '1049395205356',
    projectId: 'projet-smart-1b241',
    authDomain: 'projet-smart-1b241.firebaseapp.com',
    storageBucket: 'projet-smart-1b241.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANFdgWRwj30lycgsGLu7iVCfY7kUfWttY',
    appId: '1:1049395205356:android:12f2a6f2f6576bd0f781c9',
    messagingSenderId: '1049395205356',
    projectId: 'projet-smart-1b241',
    storageBucket: 'projet-smart-1b241.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6FMoJD-PTMGcaxUit5gswHCvFRro9O6A',
    appId: '1:1049395205356:ios:e804408465dd0703f781c9',
    messagingSenderId: '1049395205356',
    projectId: 'projet-smart-1b241',
    storageBucket: 'projet-smart-1b241.appspot.com',
    iosBundleId: 'com.example.projetSmart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6FMoJD-PTMGcaxUit5gswHCvFRro9O6A',
    appId: '1:1049395205356:ios:01117abce2fbdd97f781c9',
    messagingSenderId: '1049395205356',
    projectId: 'projet-smart-1b241',
    storageBucket: 'projet-smart-1b241.appspot.com',
    iosBundleId: 'com.example.projetSmart.RunnerTests',
  );
}
