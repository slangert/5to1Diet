import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC5OCdwm9WTUCNZf3UiM3SZYSNSj5R7-CE",
            authDomain: "to1diet.firebaseapp.com",
            projectId: "to1diet",
            storageBucket: "to1diet.appspot.com",
            messagingSenderId: "776668355888",
            appId: "1:776668355888:web:ae076b80442f93c48c3cf5",
            measurementId: "G-6JBWS4C28T"));
  } else {
    await Firebase.initializeApp();
  }
}
