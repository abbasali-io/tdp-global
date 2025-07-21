import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCbYEp4QKA5m-paEmxlPbjaWDfka07qESo",
            authDomain: "the-date-projec-app.firebaseapp.com",
            projectId: "the-date-projec-app",
            storageBucket: "the-date-projec-app.appspot.com",
            messagingSenderId: "883125540161",
            appId: "1:883125540161:web:ce92370a48caf42cfbbdc0",
            measurementId: "G-CKLMW2QZ2C"));
  } else {
    await Firebase.initializeApp();
  }
}
