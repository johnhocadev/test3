import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDOKoNw7AqhcIxDQW3l-lrq-qShxF9gX1k",
            authDomain: "fishingapp-ee490.firebaseapp.com",
            projectId: "fishingapp-ee490",
            storageBucket: "fishingapp-ee490.appspot.com",
            messagingSenderId: "368796450732",
            appId: "1:368796450732:web:a368d674ba875ffcfc4409",
            measurementId: "G-F2KBXZC5K5"));
  } else {
    await Firebase.initializeApp();
  }
}
