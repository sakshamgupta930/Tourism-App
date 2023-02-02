import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawerOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawerOpen ? -50 : 0),
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Image.network(
                "https://cdn.pixabay.com/photo/2017/03/05/00/34/panorama-2117310_960_720.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.23,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    isDrawerOpen
                        ? GestureDetector(
                            child: Icon(Icons.arrow_back_ios),
                            onTap: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                isDrawerOpen = false;
                              });
                            },
                          )
                        : GestureDetector(
                            child: Icon(Icons.menu),
                            onTap: () {
                              setState(() {
                                xOffset = 290;
                                yOffset = 80;
                                isDrawerOpen = true;
                              });
                            },
                          ),
              //             Container(
              //   height: 1000,
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   margin: EdgeInsets.only(
              //     top: MediaQuery.of(context).size.height * 0.26,
              //   ),
              //   child: Column(
              //     children: [
              //       Text(
              //         "What you would like to find ?",
              //         style:
              //             TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              //       ),
              //       SizedBox(height: 30),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             "Top Destinations",
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.bold),
              //           ),
              //           GestureDetector(
              //             onTap: () => print('See All'),
              //             child: Text(
              //               "See All",
              //               style: TextStyle(
              //                 fontSize: 14,
              //                 fontWeight: FontWeight.w500,
              //                 color: Colors.blue,
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 30),
              //       Container(
              //         height: 180,
              //         child: ListView(
              //           scrollDirection: Axis.horizontal,
              //           children: [
              //             makeDestination(
              //                 image: 'assets/images/gwalior.jpg',
              //                 title: "Gwalior"),
              //             makeDestination(
              //                 image: 'assets/images/manali.jpg',
              //                 title: "Manali"),
              //             makeDestination(
              //               image: 'assets/images/bhopal.jpg',
              //               title: "Bhopal",
              //             ),
              //             makeDestination(
              //               image: 'assets/images/hamburg.jpg',
              //               title: "Hamburg",
              //             ),
              //             makeDestination(
              //               image: 'assets/images/dubai.jpg',
              //               title: "Dubai",
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              
                  ],
                ),
              ),
              Container(
                height: 1000,
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.26,
                ),
                child: Column(
                  children: [
                    Text(
                      "What you would like to find ?",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Destinations",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () => print('See All'),
                          child: Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeDestination(
                              image: 'assets/images/gwalior.jpg',
                              title: "Gwalior"),
                          makeDestination(
                              image: 'assets/images/manali.jpg',
                              title: "Manali"),
                          makeDestination(
                            image: 'assets/images/bhopal.jpg',
                            title: "Bhopal",
                          ),
                          makeDestination(
                            image: 'assets/images/hamburg.jpg',
                            title: "Hamburg",
                          ),
                          makeDestination(
                            image: 'assets/images/dubai.jpg',
                            title: "Dubai",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
    return AppBar(
      backgroundColor: colorAnimated.background,
      elevation: 0,
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_sharp,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: colorAnimated.color,
              ),
            ),
          ],
        ),
      ],
    );
  }
  Widget makeDestination({image, title}) {
    return AspectRatio(
      aspectRatio: 3 / 2.4,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.0),
              ],
            ),
          ),
          child: Align(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            alignment: Alignment.bottomLeft,
          ),
        ),
      ),
    );
  }
}
