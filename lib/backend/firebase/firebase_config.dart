import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA8vtto3ft_DDYiviynTFUUKUvSkEeIYWc",
            authDomain: "testproject-406ab.firebaseapp.com",
            projectId: "testproject-406ab",
            storageBucket: "testproject-406ab.appspot.com",
            messagingSenderId: "581999805608",
            appId: "1:581999805608:web:7d3a3be1102bfa54602e9d",
            measurementId: "G-JVR1M9BPY9"));
  } else {
    await Firebase.initializeApp();
  }
}
