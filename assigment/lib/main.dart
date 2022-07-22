import 'package:flutter/material.dart';
import 'package:test/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';




Future<void> main() async {
  runApp(App());
  
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  
}


