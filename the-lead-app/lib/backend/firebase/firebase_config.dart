import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB71BiHxLXlcBsIA6Gj2i0symAcB8j33YA",
            authDomain: "tdp-25.firebaseapp.com",
            projectId: "tdp-25",
            storageBucket: "tdp-25.appspot.com",
            messagingSenderId: "942991547186",
            appId: "1:942991547186:web:1c15aa07ea37b3081ad52b",
            measurementId: "G-V2RXZRT8KK"));
  } else {
    await Firebase.initializeApp();
  }
}
