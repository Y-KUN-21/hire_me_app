import 'package:flutter/material.dart';
import 'package:hire_me/constrants.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  color: backgroundcolor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: shadowcolor,
                        offset: Offset(4, 4),
                        blurRadius: 2),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 2)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  color: backgroundcolor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: shadowcolor,
                        offset: Offset(4, 4),
                        blurRadius: 2),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 2)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  color: backgroundcolor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: shadowcolor,
                        offset: Offset(4, 4),
                        blurRadius: 2),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 2)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
