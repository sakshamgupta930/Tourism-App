import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:tourism_app/screens/authscreens/otpscreen.dart';
import 'package:tourism_app/widgets/text_field_input.dart';

class PhoneNumScreen extends StatefulWidget {
  const PhoneNumScreen({super.key});

  @override
  State<PhoneNumScreen> createState() => _PhoneNumScreenState();
}

class _PhoneNumScreenState extends State<PhoneNumScreen> {
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
                Lottie.asset("animations/phonelogin.json", width: 250),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
                TextFieldInput(
                  textEditingController: _phoneContoller,
                  LabelText: "Phone No",
                  // hintText: "Enter Your Email",
                  textInputType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 48,
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpScreen(),
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
                    child: Text("Send otp"),
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
