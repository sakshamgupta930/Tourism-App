import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:tourism_app/screens/homeScreen.dart';
import 'package:tourism_app/widgets/text_field_input.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final TextEditingController _repassController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  bool _isLoading = false;
  bool _ispassVisible = true;
  @override
  void initState() {
    // TODO: implement initState
    _ispassVisible = false;
    super.initState();
  }

  @override
  void dispose() {
    _passController.dispose();
    _repassController.dispose();
    super.dispose();
  }

  void _loginUser() async {
    setState(() {
      _isLoading = true;
    });
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
                Lottie.asset("animations/reset.json", width: 250),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Reset Password",
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                //password textfield
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _passController,
                  obscureText: !_ispassVisible,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      // hintText: 'Enter your password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _ispassVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _ispassVisible = !_ispassVisible;
                          });
                        },
                      )),
                ),
                SizedBox(height: 24,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _passController,
                  obscureText: !_ispassVisible,
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      // hintText: 'Enter your password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _ispassVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _ispassVisible = !_ispassVisible;
                          });
                        },
                      )),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 15,
                ),
                
                SizedBox(height: 20,),
                InkWell(
                  onTap: (() {
                    Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
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
                    child: Text("Continue"),
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
