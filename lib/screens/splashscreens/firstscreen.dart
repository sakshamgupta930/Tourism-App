import 'package:flutter/material.dart';
import 'package:tourism_app/screens/splashscreens/widgets.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    // double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Container(
          // padding: EdgeInsets.only(top: ),
          height: hei, width: double.infinity,
          child: const Image(image: AssetImage("assets/images/1..jpg"), fit: BoxFit.fitHeight,)),
           Question(question: "Want to Tour in different places?"),
            Answer(title: "Here we have some places for your"),
            SkipButton(Skip: "Skip"),
            NextButton(Next: "Next")
      ]),
    );
  }
}
