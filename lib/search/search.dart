import 'package:flutter/material.dart';
import 'package:hire_me/common/softui.dart';
import 'package:hire_me/constrants.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
        child: Container(
          color: backgroundcolor,
          child: SoftField(
            height: 60,
            labeltext: "search",
          ),
        ),
      ),
    );
  }
}
