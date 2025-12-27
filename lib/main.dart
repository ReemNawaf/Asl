import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:asl/a_presentation/core/app.dart';
import 'package:asl/injection.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  // for setting up Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyB-2q-j2veLLngIXjNlMlaY4f0l0l4xWOg',
      appId: '1:684970788591:web:4423d058b1851367323d1a',
      messagingSenderId: '684970788591',
      projectId: 'a-292e9',
      authDomain: 'a-292e9.firebaseapp.com',
      storageBucket: 'a-292e9.appspot.com',
      measurementId: 'G-GTD3PKXK3Y',
    ),
  );

  // for injecting the instance, production environment
  configureinjection(Environment.prod);
  usePathUrlStrategy();
  runApp(const MyApp());
}
