import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/browse.dart';
import 'package:hire_me/constrants.dart';
import 'package:hire_me/home.dart';
import 'package:hire_me/profile.dart';
import 'package:hire_me/search.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

int _currentIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _screens = [
    Home(),
    Browse(),
    Search(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: selectedLabelText,
          strokeColor: Color(0x300c18fb),
          unSelectedColor: unselectedLabelText,
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
              icon: EvaIcons.searchOutline,
            ),
            CustomNavigationBarItem(
              icon: EvaIcons.peopleOutline,
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
