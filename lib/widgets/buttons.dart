import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Skip Button
class SkipButton extends StatelessWidget {
  final onPressed;
  const SkipButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        "Skip",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

//Next Button
class NextButton extends StatelessWidget {
  final onTap;

  const NextButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        decoration: BoxDecoration(
          color: Color(0xffffd84d),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Center(
          child: Row(
            children: [
              Text(
                "Next",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 10),
              Icon(Icons.forward)
            ],
          ),
        ),
      ),
    );
  }
}

// Get Start Button
class GetStartButton extends StatelessWidget {
  final onTap;

  const GetStartButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        decoration: BoxDecoration(
          color: Color(0xffffd84d),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.forward)
            ],
          ),
        ),
      ),
    );
  }
}
