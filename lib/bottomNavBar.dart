import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/browse/browse.dart';
import 'package:hire_me/constrants.dart';
import 'package:hire_me/home/home.dart';
import 'package:hire_me/profile/profile.dart';
import 'package:hire_me/search/search.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Home(),
            Browse(),
            Search(),
            Profile(),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: false,
          backgroundColor: backgroundcolor,
          onItemSelected: (index) => setState(() {
            _currentIndex = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(EvaIcons.home),
              title: Text('Home'),
              activeColor: Colors.amber,
            ),
            BottomNavyBarItem(
                icon: Icon(EvaIcons.browserOutline),
                title: Text('Browse'),
                activeColor: Colors.purpleAccent),
            BottomNavyBarItem(
                icon: Icon(EvaIcons.searchOutline),
                title: Text('Search'),
                activeColor: Colors.blue),
            BottomNavyBarItem(
                icon: Icon(EvaIcons.personOutline),
                title: Text('profile'),
                activeColor: Colors.redAccent),
          ],
        ));
  }
}
