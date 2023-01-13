import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  String question;
  Question({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: const Alignment(0, 0.4),
        child: Text(widget.question,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )));
  }
}

class Answer extends StatefulWidget {
  String title;
  Answer({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: const Alignment(-0.5, 0.55),
        child: Text(widget.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )));
  }
}

class SkipButton extends StatefulWidget {
  String Skip;
  SkipButton({
    Key? key,
    required this.Skip,
  }) : super(key: key);

  @override
  State<SkipButton> createState() => _SkipButtonState();
}

class _SkipButtonState extends State<SkipButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: const Alignment(-1, 0.95),
        child: InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            width: 120,
            height: 55,
            child: Text(
              widget.Skip,
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ));
  }
}

class NextButton extends StatefulWidget {
  String Next;
  NextButton({
    Key? key,
    required this.Next,
  }) : super(key: key);

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: const Alignment(1, 0.95),
        child: InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            width: 120,
            height: 55,
            child: Text(
              widget.Next,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ));
  }
}
