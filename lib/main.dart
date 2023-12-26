import 'package:firebase_core/firebase_core.dart';
import 'package:flavor/firebase_options.dart'as dev;
import 'package:flavor/firebase_options_prod.dart'as prod;
import 'package:flavor/firebase_options.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

FirebaseOptions firebaseoptions() {
  const flavour = String.fromEnvironment('flavour', defaultValue: 'dev');
  if (flavour == 'Prod') {
    return const FirebaseOptions(
        apiKey: "AIzaSyCkLOoGoOmywd9ZCaPyCAyaTufxfDeI_J8",
        authDomain: "flavorprod-c49af.firebaseapp.com",
        appId: "1:387360873841:web:161025604a1c8424e66ad0",
        storageBucket: "flavorprod-c49af.appspot.com",
        messagingSenderId: "387360873841",
        projectId: "flavorprod-c49af");
  } else {
    return const FirebaseOptions(
        apiKey: 'AIzaSyB6mMB3grBIyqU1DOaN-11n8AbKoVlSx9o',
        authDomain: "flavordev-151c4.firebaseapp.com",
        appId: "1:744750497412:web:6ad42b15b893cd83c18cdc1",
        messagingSenderId: "744750497412",
        storageBucket: "flavordev-151c4.appspot.com",
        projectId: "flavordev-151c4");
  }
}



Future<String?> _getFlavorSettings() async {
  String? flavor =
      await const MethodChannel('flavor').invokeMethod<String>('getFlavor');

  return flavor;
}
void main() async {




  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    // Web initialization
    await Firebase.initializeApp(
      options: firebaseoptions(), // This function should return the correct options for web
    );
  } else {
    // Mobile initialization
    const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
    if (flavor == 'prod') {
      await Firebase.initializeApp(
        options: prod.DefaultFirebaseOptions.currentPlatform,
      );
    } else {
      await Firebase.initializeApp(
        options: dev.DefaultFirebaseOptions.currentPlatform,
      );
    }
  }

  // if (kIsWeb) {





  // } else {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  // }

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final TextEditingController _controller = TextEditingController();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          TextField(
            controller: _controller,
          ),
          ElevatedButton(
              onPressed: () async {
                try {
                  await firestore
                      .collection('test')
                      .add({'name': _controller.text});
                } catch (e) {
                  print(e.toString());
                }
              },
              child: Text('add')),
          Expanded(
              child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('test'),
              );
            },
          ))
        ],
      )),
    );
  }
}
