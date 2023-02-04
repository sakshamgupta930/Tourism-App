import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/reel/content_screen.dart';

class reelScreen extends StatelessWidget {
  final List<String> videos = [
    "assets/videos/1.mp4",
    "assets/videos/2.mp4",
    "assets/videos/3.mp4",
    "assets/videos/4.mp4",
    "assets/videos/5.mp4",
    "assets/videos/6.mp4",
    "assets/videos/7.mp4",
    "assets/videos/8.mp4",
    "assets/videos/9.mp4",
    "assets/videos/10.mp4",
    "assets/videos/11.mp4",
    "assets/videos/12.mp4",
    "assets/videos/13.mp4",
    "assets/videos/14.mp4",
    "assets/videos/15.mp4",
    "assets/videos/16.mp4",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              //We need swiper for every content
              Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ContentScreen(
                    src: videos[index],
                  );
                },
                itemCount: videos.length,
                scrollDirection: Axis.vertical,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.ondemand_video),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Reels',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.camera_alt),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
