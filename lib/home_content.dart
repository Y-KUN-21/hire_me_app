import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/constrants.dart';
import 'package:hire_me/home_card.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        child: ListView(
          children: [
            HomeCard(
              username: "username1",
              datetime: "2:35",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              imageURL:
                  "https://i1.wp.com/movingtips.wpengine.com/wp-content/uploads/2019/09/waterpipe-repair.jpg?fit=1024%2C684&ssl=1",
            ),
            HomeCard(
              username: "username3",
              datetime: "2:35",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              imageURL:
                  "https://image.shutterstock.com/image-photo/closeup-handyman-wearing-gloves-tool-600w-777850120.jpg",
            ),
            HomeCard(
              username: "username4",
              datetime: "2:35",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              imageURL:
                  "https://i1.wp.com/movingtips.wpengine.com/wp-content/uploads/2019/09/waterpipe-repair.jpg?fit=1024%2C684&ssl=1",
            ),
            HomeCard(
              username: "username5",
              datetime: "2:35",
              description:
                  "Lछपाई और अक्षर योजन उद्योग का एक साधारण डमी पाठ है. Lorem Ipsum सन १५०० के बाद से अभी तक इस उद्योग का मानक डमी पाठ मन गया, जब एक अज्ञात मुद्रक",
              imageURL:
                  "https://image.shutterstock.com/image-photo/man-blue-shirt-does-window-600w-692306821.jpg",
            ),
            HomeCard(
              username: "username6",
              datetime: "2:35",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              imageURL:
                  "https://bloximages.chicago2.vip.townnews.com/journaltimes.com/content/tncms/assets/v3/editorial/d/51/d5191011-d03d-5cf0-895f-97966f22cc0f/5c89d33087018.image.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
