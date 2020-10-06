import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/constrants.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
          decoration: BoxDecoration(
            color: backgroundcolor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: shadowcolor, offset: Offset(4, 4), blurRadius: 2),
              BoxShadow(
                  color: Colors.white, offset: Offset(-4, -4), blurRadius: 2)
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      username ?? "No username",
                      maxFontSize: 20,
                      minFontSize: 15,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Raleway",
                          letterSpacing: 0,
                          fontSize: 20),
                    ),
                    AutoSizeText(
                      datetime,
                      maxFontSize: 15,
                      minFontSize: 12,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: "Raleway",
                          letterSpacing: 0,
                          fontStyle: FontStyle.italic,
                          fontSize: 15),
                    ),
                  ],
                ),
                AutoSizeText(
                  description ?? "No description provided",
                  maxFontSize: 18,
                  minFontSize: 15,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: "Raleway",
                      letterSpacing: 0,
                      fontStyle: FontStyle.normal,
                      fontSize: 18),
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
