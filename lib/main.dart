import 'package:flutter/material.dart';
import 'package:flutter_feline_ui/ui/screens/intro/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Felines',
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
