import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tourism_app/screens/ReelScreen.dart';
import 'package:tourism_app/screens/drawerscreen.dart';
import 'package:tourism_app/screens/home.dart';
import 'package:tourism_app/screens/homeScreen.dart';
import 'package:tourism_app/screens/likeScreen.dart';
import 'package:tourism_app/screens/profileScreen.dart';
import 'package:tourism_app/screens/search/searchScreen.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _page = 0;
  final screens = [
    Stack(
      children: [
        DrawerScreen(),
        home(),
      ],
    ),
    searchScreen(),
    ReelsScreen(),
    LikeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home),
      Icon(Icons.search),
      Icon(Icons.video_call),
      Icon(Icons.favorite),
      Icon(Icons.person),
    ];

    return Scaffold(
      body: screens[_page],
      extendBody: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          buttonBackgroundColor: Colors.blue,
          color: Color(0xff23313c),
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) => setState(() {
            _page = index;
          }),
          items: items,
        ),
      ),
    );
  }
}
