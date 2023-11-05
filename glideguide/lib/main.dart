import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:glideguide/firebase_options.dart';
// import 'package:glideguide/views/explore/homepage.dart';
import 'package:glideguide/views/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glide Guide',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
