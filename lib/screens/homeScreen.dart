import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar:
            const ColorBuilder(Colors.transparent, Color(0xff23313c)),
        textColorAppBar: const ColorBuilder(Colors.white),
        appBarBuilder: _appBar,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.network(
                "https://cdn.pixabay.com/photo/2017/03/05/00/34/panorama-2117310_960_720.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.23,
                fit: BoxFit.cover,
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
