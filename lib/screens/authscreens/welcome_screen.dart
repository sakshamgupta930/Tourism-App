import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:tourism_app/screens/authscreens/emaillogin_screen.dart';
import 'package:tourism_app/screens/authscreens/otpscreen.dart';
import 'package:tourism_app/screens/authscreens/phone_no_screen.dart';
import 'package:tourism_app/screens/authscreens/signup_screen.dart';
import 'package:tourism_app/screens/bottomnavbar.dart';
import 'package:tourism_app/screens/drawerscreen.dart';
import 'package:tourism_app/screens/home.dart';
import 'package:tourism_app/screens/homeScreen.dart';
import 'package:tourism_app/widgets/text_field_input.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {


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
                Lottie.asset("animations/welcome.json", width: 250),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50)),
                
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/images/Google.png"), width: 30,),
                        SizedBox(width: 12),
                        Text('Login with Google'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                InkWell(
                  onTap: (() {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmailLoginScreen(),
                          ),
                        );
                  }),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    child: Text("Log In with email", style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                ),
                SizedBox(height: 25,),
                InkWell(
                  onTap: (() {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhoneNumScreen(),
                          ),
                        );
                  }),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    child: Text("Log In with phone", style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(children: <Widget>[
                  Expanded(child: Divider()),
                  Text("OR"),
                  Expanded(child: Divider()),
                ]),
                SizedBox(height: 25,),
                InkWell(
                  onTap: (() {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                  }),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    child: Text("New User?", style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                ),
                SizedBox(height: 25,),
                InkWell(
                  onTap: (() {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Stack(
                              children: [
                                DrawerScreen(),
                                BottomNavBar()
                              ],
                            ),
                          ),
                        );
                  }),
                  child: Text("Skip>>", style: TextStyle(color: Colors.black, fontSize: 20),),
                ),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
