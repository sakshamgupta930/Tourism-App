import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tourism_app/screens/onboarding_screen/content_model.dart';

class searchscreen extends StatelessWidget {
  final List<String> imag = [
    "https://cdn.pixabay.com/photo/2014/01/18/10/14/vaulted-cellar-247391__340.jpg",
    "https://cdn.pixabay.com/photo/2017/05/18/21/54/london-bridge-2324875__340.jpg"
    "https://cdn.pixabay.com/photo/2016/09/08/23/08/cathedral-1655830__340.jpg",
    "https://cdn.pixabay.com/photo/2016/08/15/08/22/greece-1594689__340.jpg",
    "https://cdn.pixabay.com/photo/2013/04/07/21/29/monument-101632__340.jpg"
    // "https://cdn.pixabay.com/photo/2019/04/24/14/48/new-town-hall-4152279__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/01/21/40/caravansary-4519435__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MasonryGridView.count(
          crossAxisSpacing: 8,
          mainAxisSpacing: 6,
          crossAxisCount: 3,
          itemCount: 100,
          itemBuilder: ((context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network("https://source.unsplash.com/random?sig=$index"),
            );
          }),
        ),
      ),
    );
  }
}
