// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_prod.dart';
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
    apiKey: 'AIzaSyCkLOoGoOmywd9ZCaPyCAyaTufxfDeI_J8',
    appId: '1:387360873841:web:161025604a1c8424e66ad0',
    messagingSenderId: '387360873841',
    projectId: 'flavorprod-c49af',
    authDomain: 'flavorprod-c49af.firebaseapp.com',
    databaseURL: 'https://flavorprod-c49af-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flavorprod-c49af.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwBZNYkHYaE2EGD3cubzp9Vr-65AtNg3M',
    appId: '1:387360873841:android:e14b01683683e1a7e66ad0',
    messagingSenderId: '387360873841',
    projectId: 'flavorprod-c49af',
    databaseURL: 'https://flavorprod-c49af-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flavorprod-c49af.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcRQ7Q0_REbfM2LzCNZj-UaxrBoA8qwSk',
    appId: '1:387360873841:ios:6e79c6f029628bd5e66ad0',
    messagingSenderId: '387360873841',
    projectId: 'flavorprod-c49af',
    databaseURL: 'https://flavorprod-c49af-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flavorprod-c49af.appspot.com',
    iosBundleId: 'com.example.flavor',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCcRQ7Q0_REbfM2LzCNZj-UaxrBoA8qwSk',
    appId: '1:387360873841:ios:f3535f38d5d8a834e66ad0',
    messagingSenderId: '387360873841',
    projectId: 'flavorprod-c49af',
    databaseURL: 'https://flavorprod-c49af-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flavorprod-c49af.appspot.com',
    iosBundleId: 'com.example.flavor.RunnerTests',
  );
}
