import 'package:flutter/material.dart';

Color backgroundcolor = Color(0xFFF1F2F6);
Color shadowcolor = Color(0xFFDADFF0);
Color textcolor = Color(0xFF707070);
Color selectedLabelText = Colors.black;
Color unselectedLabelText = Colors.grey;

final boxDecoration = BoxDecoration(
  color: backgroundcolor,
  borderRadius: BorderRadius.circular(15),
  boxShadow: [
    BoxShadow(color: shadowcolor, offset: Offset(4, 4), blurRadius: 2),
    BoxShadow(color: Colors.white, offset: Offset(-4, -4), blurRadius: 2)
  ],
);
