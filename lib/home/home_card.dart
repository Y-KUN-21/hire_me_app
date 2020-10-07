import 'package:flutter/material.dart';
import 'package:hire_me/common/reAutoSizeText.dart';
import 'package:hire_me/constrants.dart';

class HomeCard extends StatelessWidget {
  final String imageURL;
  final String username;
  final String datetime;
  final String description;
  HomeCard(
      {Key key,
      @required this.username,
      this.datetime,
      this.description,
      this.imageURL})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Container(
          width: 350,
          height: 350,
          decoration: boxDecoration,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReAutoSizeText(
                      text: username ?? "No username",
                      fontsize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ReAutoSizeText(
                      text: datetime ?? " ",
                      fontsize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
                ReAutoSizeText(
                  text: description ?? "No description provided",
                  fontsize: 18,
                  maxlines: 2,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      imageURL ??
                          "https://www.publicdomainpictures.net/pictures/280000/velka/not-found-image-15383864787lu.jpg",
                      width: 390,
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
