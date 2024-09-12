import 'package:firebase/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyBMX3Qo35l7a2pKZJyYo-8evZeiKfZzgyw',
    appId: '1:719135409555:android:651557cfa57ad52ffd5466',
    messagingSenderId: 'messagingSenderId',
    projectId: 'fir-demo-25bc4',
    storageBucket: 'fir-demo-25bc4.appspot.com',
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}
