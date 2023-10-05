import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAojT0ViBOXLTRKqSZL-XA5rPBdGn2j97k",
            authDomain: "syncr-a824b.firebaseapp.com",
            projectId: "syncr-a824b",
            storageBucket: "syncr-a824b.appspot.com",
            messagingSenderId: "609066387611",
            appId: "1:609066387611:web:ae0e98adf2d4cdfe77de3e"));
  } else {
    await Firebase.initializeApp();
  }
}
