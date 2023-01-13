import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:tourism_app/widgets/text_field_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
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
    _emailController.dispose();
    _passController.dispose();
    _nameController.dispose();
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
                Lottie.asset("animations/signup.json", width: 250),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Signup",
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
                TextFieldInput(
                  textEditingController: _emailController,
                  LabelText: "Name",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 24,),
                TextFieldInput(
                  textEditingController: _emailController,
                  LabelText: "Email ID",
                  textInputType: TextInputType.emailAddress,
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
                
                Column(
                  children: [
                    Row(
                      children: [
                        Text("By signing up you're agree to our ", style: TextStyle(fontSize: 10, color: Colors.black.withOpacity(0.9)),),
                        Text("Terms & Conditions", style: TextStyle(fontSize: 10, color: Colors.blueAccent),), Text(" and ", style: TextStyle(fontSize: 10, color: Colors.black.withOpacity(0.9)),)
                      ],
                    ),
                    Text("Privacy Policy", style: TextStyle(fontSize: 10, color: Colors.blueAccent),)
                  ],
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (() {}),
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
                
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text("Joined us before?"),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text(
                          " Login",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      )),
    );
  }
}
