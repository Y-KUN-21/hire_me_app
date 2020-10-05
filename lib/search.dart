import 'package:flutter/material.dart';
import 'package:hire_me/common/softui.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SoftField(
            height: 60,
            labeltext: "search",
          ),
        ),
      ),
    );
  }
}
