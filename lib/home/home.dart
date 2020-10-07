import 'package:flutter/material.dart';
import 'package:hire_me/constrants.dart';
import 'package:hire_me/home/home_content.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        elevation: 0.0,
        title: Text(
          "HOME",
          style: TextStyle(
              color: selectedLabelText,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              letterSpacing: 0.0),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height, child: HomeContent()),
      ),
    );
  }
}
