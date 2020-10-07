import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/browse/person_card.dart';
import 'package:hire_me/constrants.dart';

class Browse extends StatefulWidget {
  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundcolor,
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "BROWSE",
          style: TextStyle(color: selectedLabelText),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              EvaIcons.options2Outline,
              color: selectedLabelText,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
          color: backgroundcolor,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return PersonCard(
                  name: "Saitama-kun",
                  expertise: "officially hero",
                  address: "A city, saitama, japan.",
                  shopName: "Heroes/Hero Association",
                  imageUrl:
                      "https://miro.medium.com/max/5760/1*2bjwCLaA8TfH40OXcyLNvA.png",
                );
              })),
    );
  }
}
