import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDMeBaMaTg3oJEuy4hbqbK4U70y1tsV81I",
            authDomain: "saexp-hgvvic.firebaseapp.com",
            projectId: "saexp-hgvvic",
            storageBucket: "saexp-hgvvic.appspot.com",
            messagingSenderId: "881129505514",
            appId: "1:881129505514:web:fd6859c0686fd3dd7c0d93"));
  } else {
    await Firebase.initializeApp();
  }
}
