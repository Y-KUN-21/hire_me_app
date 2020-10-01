import 'package:auto_size_text/auto_size_text.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/constrants.dart';
import 'package:hire_me/home_content.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(EvaIcons.arrowBackOutline, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "HOME",
          style: TextStyle(
              color: selectedLabelText,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              letterSpacing: 2.0),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height, child: HomeContent()),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: Color(0xff0c18fb),
          strokeColor: Color(0x300c18fb),
          unSelectedColor: Colors.grey[600],
          backgroundColor: backgroundcolor,
          borderRadius: Radius.circular(15.0),
          items: [
            CustomNavigationBarItem(
              icon: EvaIcons.homeOutline,
            ),
            CustomNavigationBarItem(
              icon: EvaIcons.browserOutline,
            ),
            CustomNavigationBarItem(
              icon: EvaIcons.peopleOutline,
            ),
            CustomNavigationBarItem(
              icon: EvaIcons.searchOutline,
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          isFloating: true,
        ),
      ),
    );
  }
}
