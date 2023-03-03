import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff23313c),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Text(
                  "My Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   padding: EdgeInsets.,
          //   child: Column(
          //     children: [
          //       Row(
          //         children: [
          //           CircleAvatar(),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          // Positioned.fill(
          //   child: Column(
          //     children: [
          //       Expanded(
          //         child: Container(
          //           color: Colors.blueGrey[300],
          //         ),
          //       ),
          //       Expanded(
          //         child: Container(
          //           color: Colors.white,
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.only(top: 20),
          //   child: Align(
          //     alignment: Alignment.topCenter,
          //     child: Hero(tag: 1, child: Image.asset('images/pet-cat2.png')),
          //   ),
          // ),
          Positioned(
            top: 110,
            left: 10,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 130,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Text(
                          "SG",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        backgroundColor: Color(0xff23313c),
                        minRadius: 40,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Saksham Gupta",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.edit),
                            ],
                          ),
                          Text("930xxxxxxx"),
                          Text("gupta@gmail.com"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20),
          //     padding: EdgeInsets.symmetric(horizontal: 15),
          //     height: 120,
          //     child: Row(
          //       children: [
          //         Container(
          //           height: 60,
          //           width: 70,
          //           decoration: BoxDecoration(
          //               // color: primaryGreen,
          //               borderRadius: BorderRadius.circular(20)),
          //           child: Icon(
          //             Icons.favorite_border,
          //             color: Colors.white,
          //           ),
          //         ),
          //         SizedBox(
          //           width: 10,
          //         ),
          //         Expanded(
          //           child: Container(
          //             height: 60,
          //             decoration: BoxDecoration(
          //                 // color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(20)),
          //             child: Center(
          //                 child: Text(
          //               'Adoption',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         )
          //       ],
          //     ),
          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(40),
          //         topRight: Radius.circular(40),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
