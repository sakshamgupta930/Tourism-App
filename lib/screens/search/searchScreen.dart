// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:tourism_app/screens/onboarding_screen/content_model.dart';

// class searchscreen extends StatelessWidget {
//   final List<String> imag = [
//     "https://cdn.pixabay.com/photo/2014/01/18/10/14/vaulted-cellar-247391__340.jpg",
//     "https://cdn.pixabay.com/photo/2017/05/18/21/54/london-bridge-2324875__340.jpg"
//     "https://cdn.pixabay.com/photo/2016/09/08/23/08/cathedral-1655830__340.jpg",
//     "https://cdn.pixabay.com/photo/2016/08/15/08/22/greece-1594689__340.jpg",
//     "https://cdn.pixabay.com/photo/2013/04/07/21/29/monument-101632__340.jpg"
//     // "https://cdn.pixabay.com/photo/2019/04/24/14/48/new-town-hall-4152279__340.jpg",
//     "https://cdn.pixabay.com/photo/2019/10/01/21/40/caravansary-4519435__340.jpg"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: MasonryGridView.count(
//           crossAxisSpacing: 8,
//           mainAxisSpacing: 6,
//           crossAxisCount: 3,
//           itemCount: 100,
//           itemBuilder: ((context, index) {
//             return ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.network("https://source.unsplash.com/random?sig=$index"),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:tourism_app/screens/IISerarchScreen.dart';
import 'package:tourism_app/screens/onboarding_screen/content_model.dart';
import 'package:tourism_app/screens/search/viewphotoonsearch.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  _searchScreenState createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  List<SuggestedPostModel> suggestedPostList = [];

  @override
  void initState() {
    super.initState();

    addData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            searchBarWidget(),
            const SizedBox(
              height: 10,
            ),
            suggestedPostsWidget()
          ],
        ),
      ),
    );
  }

  Widget searchBarWidget() {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Row(
        children: [
          const Expanded(
            child: Icon(Icons.search_rounded, color: Colors.grey),
            flex: 1,
          ),
          Expanded(
            child: Text(
              "Search",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            flex: 6,
          )
        ],
      ),
    );
  }

  Widget suggestedPostsWidget() {
    return Column(
      children: [
        for (int i = 0; i < suggestedPostList.length; i++)
          if (suggestedPostList[i].containsVideo)
            showWithVideoWidget(i)
          else
            showWithoutVideoWidget(i)
      ],
    );
  }

  Widget showWithVideoWidget(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.335,
                    height: MediaQuery.of(context).size.width * 0.335,
                    child: Image.asset(
                      suggestedPostList[index].contentLink1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.335,
                    height: MediaQuery.of(context).size.width * 0.335,
                    child: Image.asset(
                      suggestedPostList[index].contentLink2,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(left: 2),
                height: MediaQuery.of(context).size.width * 0.67,
                child: Image.asset(
                  suggestedPostList[index].contentLink3,
                  fit: BoxFit.fill,
                ),
              )),
        ],
      ),
    );
  }

  Widget showWithoutVideoWidget(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 1),
              height: MediaQuery.of(context).size.width * 0.33,
              child: Image.asset(
                suggestedPostList[index].contentLink1,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 1, left: 1),
              height: MediaQuery.of(context).size.width * 0.33,
              child: Image.asset(
                suggestedPostList[index].contentLink2,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 1),
              height: MediaQuery.of(context).size.width * 0.33,
              child: Image.asset(
                suggestedPostList[index].contentLink3,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void addData() {
    suggestedPostList.add(SuggestedPostModel(
        false,
        "assets/images/search/1.jpg",
        "assets/images/search/3.jpg",
        "assets/images/search/4.jpg"));

    suggestedPostList.add(SuggestedPostModel(true, "assets/images/search/2.jpg",
        "assets/images/search/6.jpg", "assets/images/search/7.jpg"));

    suggestedPostList.add(SuggestedPostModel(
        false,
        "assets/images/search/1.jpg",
        "assets/images/search/3.jpg",
        "assets/images/search/4.jpg"));

    suggestedPostList.add(SuggestedPostModel(true, "assets/images/search/6.jpg",
        "assets/images/search/8.jpg", "assets/images/search/4.jpg"));
    suggestedPostList.add(SuggestedPostModel(true, "assets/images/search/1.jpg",
        "assets/images/search/3.jpg", "assets/images/search/5.jpg"));
    suggestedPostList.add(SuggestedPostModel(true, "assets/images/search/7.jpg",
        "assets/images/search/8.jpg", "assets/images/search/2.jpg"));
  }
}
