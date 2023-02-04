import 'package:flutter/material.dart';
import 'package:tourism_app/screens/IISerarchScreen.dart';
import 'package:tourism_app/screens/onboarding_screen/onboard_screen.dart';
import 'package:tourism_app/screens/search/searchScreen.dart';

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
      home: Scaffold(body: Onbording()),
    );
  }
}
