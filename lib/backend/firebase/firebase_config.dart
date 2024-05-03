import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDD-T-dTymaQraGyBU_ei0gg6sL3FPH_vk",
            authDomain: "projet-mobile-cours-ew8z8v.firebaseapp.com",
            projectId: "projet-mobile-cours-ew8z8v",
            storageBucket: "projet-mobile-cours-ew8z8v.appspot.com",
            messagingSenderId: "903574000628",
            appId: "1:903574000628:web:a3ada0b7415e0883f09fa1"));
  } else {
    await Firebase.initializeApp();
  }
}
