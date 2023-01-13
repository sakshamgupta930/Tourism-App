import 'package:flutter/material.dart';
import 'package:tourism_app/screens/login_screen.dart';
import 'package:tourism_app/screens/onboarding_screen/onboard_screen_1.dart';
import 'package:tourism_app/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourism App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignupScreen(),
    );
  }
}
