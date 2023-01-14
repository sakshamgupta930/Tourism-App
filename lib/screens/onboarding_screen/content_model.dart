class UnbordingContent {
  String image;
  String title;
  String discription;
  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> content = [
  UnbordingContent(
      image: "assets/images/dubai.jpg",
      title: "Get Ready For New Adventures",
      discription: "Pack your things and make more memories Outdoor."),
  UnbordingContent(
      image: "assets/images/burj.jpg",
      title: "Find Your Favourite Hotel",
      discription:
          "Find your hotel easily and travel anywhere you want with us."),
  UnbordingContent(
      image: "assets/images/maps.jpg",
      title: "Track Your Location",
      discription: "Find your location easily by tacking with help of maps."),
];
