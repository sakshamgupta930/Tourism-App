import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:tourism_app/screens/authscreens/otpscreen.dart';
import 'package:tourism_app/screens/authscreens/resetScreen.dart';
import 'package:tourism_app/widgets/text_field_input.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final TextEditingController _phoneContoller = TextEditingController();

  @override
  void dispose() {
    _phoneContoller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        // width: double.infinity,
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 35,),
                Lottie.asset("animations/forgotpass.json", width: 250),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(fontSize: 40,),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  children: [
                    Text("Don't worry it happens. Please enter the address associated with your account", style: TextStyle(fontSize: 12),)
                  ],
                ),
                SizedBox(height: 20,),
                TextFieldInput(
                  textEditingController: _phoneContoller,
                  LabelText: "Email ID",
                  // hintText: "Enter Your Email",
                  textInputType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 48,
                ),
                InkWell(
                  onTap: (() {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetScreen(),
                        ),
                      );
                  }),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
