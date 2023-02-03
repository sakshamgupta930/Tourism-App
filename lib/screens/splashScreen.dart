import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tourism_app/screens/onboarding_screen/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();

      Timer(Duration(seconds: 5), () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Onbording(),
            ));
      });
    }

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text(
            "TravelApp",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
